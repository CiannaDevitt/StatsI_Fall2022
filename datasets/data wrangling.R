library(tidyverse)
## Data wrangling

region <- factor(region, levels= c("north east","north central","south","west"))
factors <- names(percap_exY[40:50,60:70, 80:90, 90:110, 110:130])
                     