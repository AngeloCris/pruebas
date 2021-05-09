library(tidyverse)
library(readr)
setwd("D:\\Mirror\\udec\\ayudantía\\ComputaciónCientífica2021\\semana3")

aa <- read_csv2("dataset_Mata.et.al.2016.csv")

aa %>% 
  mutate(mm = parse_double(`Wingspan (mm)`, locale = locale(decimal_mark = ",")))

read_delim("dataset_Mata.et.al.2016.csv", ";") %>% 
  mutate(`Wingspan (mm)` = parse_double(`Wingspan (mm)`,
                                        locale = locale(decimal_mark = ",")))
  
dataBait <- read_csv2("dataset_Mata.et.al.2016.csv",
                      col_types = cols(`Wingspan (mm)` = col_double()))

problems(dataBait)
glimpse(dataBait)


#Indexación
dataBait
dataBait[1:5,1:3]
dataBait[1:5, c(7, 9)]

summary(dataBait$`Sp. Nr.`[dataBait$`Sp. Nr.` > 60])
mean(dataBait$`Wingspan (mm)`, na.rm = TRUE)

glimpse(dataBait)


dataBait[dataBait$Order < 105,]
mean(dataBait$`Wingspan (mm)`, na.rm = TRUE)
head(dataBait,1)
summary(dataBait)
3i


T <- "Date;Time;Var1;Var2
      01.01.2011;11:11;2,4;5,6
      02.01.2011;12:11;2,5;5,5
      03.01.2011;13:11;2,6;5,4
      04:01.2011;14:11;2,7;5,3"
T
read_delim(T, ";")

read_delim(T, ";", locale=locale(decimal_mark = ","))


