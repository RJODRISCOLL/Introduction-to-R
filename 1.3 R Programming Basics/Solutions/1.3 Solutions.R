#Create the dataframes below (data_1 & data_2)
data_1 = data.frame(id = c(1,2,3,4,5),
                    age = c(10, 20, 30, 40, 50),
                    sex = c('M', 'F', 'M', 'F', 'M'))

data_2 = data.frame(id = c(6,7,8,9,10),
                    age = c(15, 25, 35, 45, 55),
                    sex = c('M', 'F', 'M', 'F', 'M')) 




# Bind the two data frames to create a new dataframe (data_3)
data_3 = rbind(data_1, data_2)

# Create a new column in data_3 which returns 0 if the age is EVEN or 1 if the age is odd
data_3$mod = data_3$age %% 2

# Create 4 new data frames: Even aged men/women, odd aged men/women
ev_m = data_3[data_3$sex == 'M' & data_3$mod == 0, ]
odd_m = data_3[data_3$sex == 'M' & data_3$mod == 1, ]
ev_f = data_3[data_3$sex == 'F' & data_3$mod == 0, ]
odd_f = data_3[data_3$sex == 'F' & data_3$mod == 1, ]

