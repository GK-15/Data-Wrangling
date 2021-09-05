# DATA WRANGLING

The filename **"Data scientist task.R"** contains the completed code for all the task also with the printing the outputs in the console.

# **Task Completed**
1.)	Write code to read in the Excel file Data_Scientist_Exercise_File.xlsx sheet EXERCISE_INPUT_FILE  into a dataframe

2.)	Clean the text of the entries in the DISEASE column
    -	TRYPs should be "Trypanosomosis"
    -	PPR should be "Peste des petits ruminants"
    
3.)	Filter the dataframe, so that only rows that have values in the YEAR_PUBLICATION column later than 2010 are kept - hint there is only one article like that.

4.)	Remove the columns START_DATE_DATA and END_DATE_DATA from the dataframe they are not needed.

5.)	Reorder the dataframe so that columns STATE and DISEASE are the last two columns of the dataframe.

6.)	Split the IDENTIFIER column and create a new column called AUTHOR which does not contain the date, but just the text. Still keep the IDENTIFIER column.

7.)	Write code to output the dataframe to an Excel File  called Data_Scientist_Exercise_Output_File.xlsx with the sheet name EXERCISE_OUTPUT_FILE

# **Printing the Outputs in the Console**
1.)	The IDENTIFIER column value with the highest value in the PERCENTAGE column

2.)	The sum of the values in the column NUMBER_TESTED
