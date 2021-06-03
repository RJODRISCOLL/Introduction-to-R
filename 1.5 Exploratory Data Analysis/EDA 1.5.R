install.packages("skimr")
install.packages("DataExplorer")
install.packages("forcats")
library(readxl)
library(skimr)
library(DataExplorer)
library(ggplot2)
library(forcats)
library(ggthemes) 

#Read happiness files for 2016 #make sure you closed the xls file to read it in R
happiness_2016=read_excel("happiness_report.xlsx", sheet = "2016")

#Discover the first 6 rows of your df
head(happiness_2016)

#Discover the first 10 rows of your df
head(happiness_2016, 10)

help(head)
?head

#Discover the bottom 6 rows of your df
tail(happiness_2016)

#Discover a random sampling of 10 row of the data
happiness_2016[sample(nrow(happiness_2016),10),]

#Look at the structure of your df
str(happiness_2016)

#Extract the dimensions 
dim(happiness_2016)

#Want to know all the variables and their names?
colnames(happiness_2016)

#Get a summary of each variable
summary(happiness_2016)

#UserFriendly summary and display of missing values
skim(happiness_2016)

#Finding missing values in your df
sum(is.na(happiness_2016)) # in the whole df
colSums(is.na(happiness_2016)) # by column
happiness_2016[!complete.cases(happiness_2016),] #by rows

#Create a contingency table
table(happiness_2016$Region )

#Create a report
create_report(happiness_2016)

####DATA VISUALISATION

##PRE STEPS

#rename hapiness score to remove the space
names(happiness_2016)[names(happiness_2016)=="Happiness Score"] <- "Happiness_Score"
names(happiness_2016)[names(happiness_2016)=="Happiness Rank"] <- "Happiness_Rank"

#transform region into a factor
happiness_2016$Region<-as.factor(happiness_2016$Region)
happiness_2016$Country<-as.factor(happiness_2016$Country)

#Solution exercice 1
hist(happiness_2016$Happiness_Score)
#Solution exercice 2
boxplot(Happiness_Score ~ Region, data=happiness_2016)



#1
ggplot()

#2
ggplot(data=happiness_2016 )

#3
ggplot(data=happiness_2016, aes(x = Region, y = Happiness_Score))

#4
ggplot(data=happiness_2016, aes(x = Region, y = Happiness_Score))+
  geom_boxplot()

#5
ggplot(data=happiness_2016, aes(x = Region, y = Happiness_Score))+
  geom_boxplot()+
  geom_point()

#6
ggplot(data=happiness_2016, aes(x = Region, y = Happiness_Score))+
  geom_boxplot()+
  geom_jitter(width=0.1,alpha=0.2)

#7
ggplot(data=happiness_2016, aes(x = fct_reorder(Region, Happiness_Score , .desc=TRUE), y = Happiness_Score))+
  geom_boxplot()+
  geom_jitter(width=0.1,alpha=0.2)

#8
ggplot(data=happiness_2016, aes(x = fct_reorder(Region, Happiness_Score ), y = Happiness_Score))+
  geom_boxplot()+
  geom_jitter(width=0.1,alpha=0.2)+
  coord_flip()

#9
ggplot(data=happiness_2016, aes(x = fct_reorder(Region, Happiness_Score ), y = Happiness_Score, fill = Region))+
  geom_boxplot()+
  geom_jitter(width=0.1,alpha=0.2)+
  coord_flip()

#10
ggplot(data=happiness_2016, aes(x = fct_reorder(Region, Happiness_Score ), y = Happiness_Score, fill = Region))+
  geom_boxplot()+
  geom_jitter(width=0.1,alpha=0.2)+
  coord_flip()+
  ggtitle("Happiness score by regions")+
  theme_hc()+
  theme(legend.position = "none")+
  theme(axis.text.y = element_text(size = 12))+
  theme(axis.title.x = element_text(size = 12))+
  theme(axis.title.y = element_blank())

