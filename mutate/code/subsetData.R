rm(list = ls())
options(scipen = 999)

library(tidyverse)

load("deidRaw/output/natl2016_2020.Rdata")

natl_subset <- natl2016_2020 %>% 
  filter((gest_htn == 1 |
           eclampsia == 1),
         facility == 1, # in hospital
         )