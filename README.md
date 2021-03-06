# Genetic Toggle Switch Experiment Codes

## Checklist
[x] `workingDirectory` must be set, for example, as this:
`"D:\\labs\\toggle switch\\gitRepo\\Part01\\";`

[x] `plotRangeInput` should be set . Initially it is set to `All`;

[x] `plotInfo` must be set to any string that identifies the plot;

## Kickstart
- The `toggleSwitchPart1Main.nb` provides the functions that we need to use (documented below in the API). Firstly,  one should execute this file to make the functions available. 
- The `test.nb` is just being used to execute our command and graphs. Changes is this file is completely ignorable. 


## API
##### importDataFrom[`string:fileName`]
	In :    filename ("mcherry.txt", "OD600.txt" or "GFP.txt");
	Out :   data - set matrix for corresponding file;

##### getTimeArray[`matrix:dataSet`]
    In :    any of the imported dataSet by importDataFrom[] function;
	Out :   the time points of the experiment in seconds;	

##### generateSinglePlot[`array:xData`, `array:yData`, `string:plotId`, `string:plotRange`]
	In :    data array for x-axis, 
	        data array for y-axis,
	        a plotId ("A1", "B7", etc.) which will be printed inside the plot to identify it.
	Out :   returns the xy plot. 

##### generatePlotOfColumn[`matrix:dataSet`, `int:columnNumber`]
	In :    imported dataset, 
	        the nth column-number for which the plot is to be generated;
	Out :   the plot of the natural e-based logarithm of the nth column-data in the imported dataset vs time.
	
#### makePdf[`matrix:dataSet`, `int:numberOfRows`, `int:numberOfColumns` ]
    In :    imported dataSet, 
            no. of rows, 
            no.of columns;
	Out :   Void. Creates a pdf in `documents` folder in the computer.
    
#### dataAfterSubtraction[`matrix:dataset`, `columnMat:loosingCol`, `colMat:subtractCol`]

	In:	- an imported dataset, 
		- the column of that dataset from which we have to subtract, 
		- the column of the dataset which has to be subtracted from the looser
	Out:	Returns the dataset after subtraction.  




#### subtractOneColFromAllColAndPositify[`matrix:dataset`, `colMat:subtractCol`  ]
	In: 	- a data-matrix, 
		- a column which should be subtracted from all the columns of the data-matrix;
	Out: 	the newly trimmed data matrix after subtraction;



#### getLinFitOfCol[`matrix:dataMatrix`, `int:colNum`, `int:subtractCol`, `float:amplifyFactor`]

	In : 	- an imported data-matrix, 
		- a column for which the fitting should be done, 
		- a subtracting column corresponding to OD - trimming, 
		- an amplification factor (since growth rate are very small);
 	Out :	slope value of the linear fit, i.e. the growth-rate for the user-given column.



#### growthRateAndErrorExport[`matrix:dataMat`, `int:subtructColOD`]
	In :	- a dataMatrix, 
			- the column for OD - subtraction
 	Out : 	a growthRate.txt and grrowthRateErr.txt in the document folder;



## New for the GFP RFP analysis

#### normalizeByInitialColValue[`matrix:dataMat`]

	In :	a dataMatrix,
 	Out :	a new datamatrix every column of which is divided by the initial value of that column;
  
