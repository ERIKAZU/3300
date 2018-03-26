library(tidyverse)
temperatures <- read_csv("noaa-central-park.csv")

temperatures <- temperatures %>% 
  mutate(Value = as.numeric(Value)) %>%
  mutate(Anomaly = as.numeric(Anomaly)) %>%
  mutate(Year = as.numeric(substr(Date, 0,4)))

library(dplyr)
byYear <- group_by(temperatures, Year)


yearSummary <- summarize(byYear, 
                    Mean = mean(Anomaly,na.rm = T), 
                    Min = min(Anomaly),
                    Max = max(Anomaly))
number_ticks <- function(n) {function(limits) pretty(limits, n)}

ggplot(yearSummary, aes(Year,Mean,group = 1)) + 
  ggtitle("Yearly Temperature Anomalies") +
  geom_ribbon(aes(ymin=Min, ymax=Max), fill = "grey80")+
  geom_line()+
  scale_x_continuous(breaks=seq(1900, 2010, 10))+
  scale_y_continuous(breaks=seq(-12, 14, 2))
ggsave("temperature.pdf")