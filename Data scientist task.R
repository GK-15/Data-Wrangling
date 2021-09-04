#DATA WRANGLING
#Loading the Excel file
library(readxl)
Data_Scientist_Exercise_File <- read_excel("Data Scientist/Data_Scientist_Exercise_File.xlsx")
#Transforming the excel file into Dataframe
df = data.frame(Data_Scientist_Exercise_File)
#Replacing the TRYPs and PPR
df[df == "TRYPs"] <- "Trypanosomosis"
df[df == "PPR"] <- "Peste des petits ruminants"
#sort according to the specific column and deleting the rows below 2010
df2 <- df[with(df, order(YEAR_PUBLICATION)),]
df3 <- df2[-c(1),]
#Removing the unwanted columns
df4 <- subset (df3, select = -START_DATE_DATA)
df5 <- subset (df4, select = -END_DATE_DATA)
df6 <- subset (df5, select = -YEAR_PUBLICATION)
#Reordering the dataframe
df_order <- df6[, c(1, 4, 5, 6, 2, 3)]
#Replicating the Identifier data
df_order$AUTHOR = df_order$IDENTIFIER
df_order_final <- df_order
#data cleaning in the specific column
install.packages("tm")
library(tm)
remove_words = c(",","0","1","2","3","4","5","6","7","8","9","2010a")
#removing the characters
gsub(paste0(remove_words,collapse = "|"),"", df$Company)
df_order_final$AUTHOR <- gsub(paste0(remove_words,collapse = "|"),"", df_order_final$AUTHOR)
df_filter_data <- df_order_final
#sorting the data
df_final_out <- df_filter_data[, c(1, 7, 2, 3, 4, 5, 6)]
#outputting as the excel file
install.packages("writexl")
library("writexl")
write_xlsx(df_final_out, "Data Scientist/Data_Scientist_Exercise_Output_File.xlsx")
#Printing values in the console
#Maximum value in percentage and print the corresponding IDENTIFIER
test <- max(df_final_out$PERCENTAGE, na.rm=T)
df_final_out$IDENTIFIER[df_final_out$PERCENTAGE==26.3803680981595]
#sum of the number tested
sum(df_final_out[, 'NUMBER_TESTED'])