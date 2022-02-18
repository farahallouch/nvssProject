rm(list = ls())
options(scipen = 999)

library(tidyverse)

load("deidRaw/output/natl2016_2020.Rdata")

natl_subset1 <- natl2016_2020 %>% 
  filter(gest_htn == 1) # -17,646,513
nrow(natl2016_2020) - nrow(natl_subset1)
rm(natl2016_2020)

natl_subset2 <- natl_subset1 %>% 
  filter(facility == 1) # -1,956
nrow(natl_subset1) - nrow(natl_subset2)
rm(natl_subset1)

natl_subset3 <- natl_subset2 %>% 
  filter(gest_age >= 23 & gest_age <= 41) # -2,305
nrow(natl_subset2) - nrow(natl_subset3)
rm(natl_subset2)

natl_subset <- natl_subset3 %>% 
  filter(anencephaly != 1 &
           spina_bifida != 1 &
           cyanotic_congen_hd != 1 &
           congen_diaph_hernia != 1 &
           congen_diaph_hernia != 1 &
           omphalocele != 1 &
           gastroschisis != 1 &
           limb_reduction != 1) # -294,319
nrow(natl_subset3) - nrow(natl_subset) 
rm(natl_subset3)

sapply(natl_subset[1:52], summary)

save(natl_subset, file = "mutate/output/natl_subset.RData")