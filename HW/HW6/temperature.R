library(tidyverse)
temperatures <- read_csv("noaa-central-park.csv")

temperatures <- temperatures %>% 
  mutate(Value = as.numeric(Value)) %>%
  mutate(Anomaly = as.numeric(Anomaly)) %>%
  mutate(Year = substr(Date, 0,4))
library(dplyr)
byYear <- group_by(temperatures, Year)

yearSummary <- summarize(byYear, 
                    Mean = mean(Value, na.rm = T), 
                    Min = min(Value),
                    Max = max(Value))