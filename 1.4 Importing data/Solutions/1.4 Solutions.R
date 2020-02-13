# 

# Note that as you progress through R you can achieve this with a functio
# This will save potential copy and pasting errors and time!



#1. Read in each of the happiness files 
happiness_2015=read_excel("happiness_report.xlsx", sheet = "2015")
happiness_2016=read_excel("happiness_report.xlsx", sheet = "2016")
happiness_2017=read_excel("happiness_report.xlsx", sheet = "2017")
happiness_2018=read_excel("happiness_report.xlsx", sheet = "2018")
happiness_2019=read_excel("happiness_report.xlsx", sheet = "2019")

#2. Select the columns representing rank and country name from each
happiness_2015=happiness_2015[, c(1,3)]
happiness_2016=happiness_2016[, c(1,3)]
happiness_2017=happiness_2017[, c(1,3)]
happiness_2018=happiness_2018[, c(2,1)] # note 2 first for order
happiness_2019=happiness_2019[, c(2,1)]

#3. Add a label column to each file detailing the year 
happiness_2015$year='2015'
happiness_2016$year='2016'
happiness_2017$year='2017'
happiness_2018$year='2018'
happiness_2019$year='2019'

#4. Join the files together by rows (hint: check the column names!)
# rename first 
names = c('Country', 'Rank', 'Year')
colnames(happiness_2015) = names
colnames(happiness_2016) = names
colnames(happiness_2017) = names
colnames(happiness_2018) = names
colnames(happiness_2019) = names

# join
hap = rbind(happiness_2015, happiness_2016)
hap = rbind(hap, happiness_2017)
hap = rbind(hap, happiness_2018)
hap = rbind(hap, happiness_2019)


#5. write to csv called 'happiness_solved.csv'
write.csv(hap, 'happiness_solved.csv')











