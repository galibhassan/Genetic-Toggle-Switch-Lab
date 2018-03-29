# Genetic Toggle Switch Experiment Codes

## Checklist
[x] `workingDirectory` must be set, for example, as this:
`"D:\\labs\\toggle switch\\gitRepo\\Part01\\";`
[x] `plotRangeInput` should be set . Initially it is set to `All`;
[x] `plotInfo` must be set to any string that identifies the plot;

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
    