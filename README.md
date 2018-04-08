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
	Out :   the plot of nth column-data in the imported dataset vs time.
	
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




#### subtractOneColFromAllCol[ matrix:dataset, colMat:subtractCol  ]
	In: 	- a data-matrix, 
		- a column which should be subtracted from all the columns of the data-matrix;
	Out: 	the newly trimmed data matrix after subtraction;