rm(list = ls())
options(scipen = 999)

library(tidyverse)

load("C:/Users/fallouch/Box/PhD/NVSS/nvssProject/mutate/output/natl_gh.RData")

# ten_pct_weightList_male <- c(375, 436, 497, 561, 629, 706, 802, 924, 1068, 1231, 1415, 1627, 1859, 2105, 2355, 2588, 2782, 2926, 3017, 3065, 3082, 3067, 3027)
# ten_pct_weightList_female <- c(354, 416, 473, 529, 597, 677, 770, 882, 1018, 1166, 1335, 1538, 1772, 2021, 2261, 2477, 2665, 2810, 2904, 2958, 2985, 2981, 2952)
# gestAge <- c(22:44)

natl_gh <- natl_gh %>% 
  mutate(maternal_outcomes = factor(ifelse(maternal_transfusion == 1 |
                                             ruptured_uterus == 1 |
                                             unplanned_hysterectomy == 1 |
                                             maternal_icu == 1, 1, 0)),
         baby_outcomes = factor(ifelse(assisted_ventilation_six_hr == 1 |
                                         baby_seizures == 1 |
                                         baby_nicu == 1, 1, 0)),
         ptb = factor(ifelse(gest_age < 37, 1, 0)),
         lbw = factor(ifelse(birthweight < 2500, 1, 0)),
         sga = factor(ifelse((baby_sex == 0 & gest_age == 22 & birthweight < 375) | # male
                               (baby_sex == 0 & gest_age == 23 & birthweight < 436) |
                               (baby_sex == 0 & gest_age == 24 & birthweight < 497) |
                               (baby_sex == 0 & gest_age == 25 & birthweight < 561) |
                               (baby_sex == 0 & gest_age == 26 & birthweight < 629) |
                               (baby_sex == 0 & gest_age == 27 & birthweight < 706) |
                               (baby_sex == 0 & gest_age == 28 & birthweight < 802) |
                               (baby_sex == 0 & gest_age == 29 & birthweight < 924) |
                               (baby_sex == 0 & gest_age == 30 & birthweight < 1068) |
                               (baby_sex == 0 & gest_age == 31 & birthweight < 1231) |
                               (baby_sex == 0 & gest_age == 32 & birthweight < 1415) |
                               (baby_sex == 0 & gest_age == 33 & birthweight < 1627) |
                               (baby_sex == 0 & gest_age == 34 & birthweight < 1859) |
                               (baby_sex == 0 & gest_age == 35 & birthweight < 2105) |
                               (baby_sex == 0 & gest_age == 36 & birthweight < 2355) |
                               (baby_sex == 0 & gest_age == 37 & birthweight < 2588) |
                               (baby_sex == 0 & gest_age == 38 & birthweight < 2782) |
                               (baby_sex == 0 & gest_age == 39 & birthweight < 2926) |
                               (baby_sex == 0 & gest_age == 40 & birthweight < 3017) |
                               (baby_sex == 0 & gest_age == 41 & birthweight < 3065) |
                               (baby_sex == 0 & gest_age == 42 & birthweight < 3082) |
                               (baby_sex == 0 & gest_age == 43 & birthweight < 3067) |
                               (baby_sex == 0 & gest_age == 44 & birthweight < 3027) |
                               (baby_sex == 1 & gest_age == 22 & birthweight < 354) | # female
                               (baby_sex == 1 & gest_age == 23 & birthweight < 416) |
                               (baby_sex == 1 & gest_age == 24 & birthweight < 473) |
                               (baby_sex == 1 & gest_age == 25 & birthweight < 529) |
                               (baby_sex == 1 & gest_age == 26 & birthweight < 597) |
                               (baby_sex == 1 & gest_age == 27 & birthweight < 677) |
                               (baby_sex == 1 & gest_age == 28 & birthweight < 770) |
                               (baby_sex == 1 & gest_age == 29 & birthweight < 882) |
                               (baby_sex == 1 & gest_age == 30 & birthweight < 1018) |
                               (baby_sex == 1 & gest_age == 31 & birthweight < 1166) |
                               (baby_sex == 1 & gest_age == 32 & birthweight < 1335) |
                               (baby_sex == 1 & gest_age == 33 & birthweight < 1538) |
                               (baby_sex == 1 & gest_age == 34 & birthweight < 1772) |
                               (baby_sex == 1 & gest_age == 35 & birthweight < 2021) |
                               (baby_sex == 1 & gest_age == 36 & birthweight < 2261) |
                               (baby_sex == 1 & gest_age == 37 & birthweight < 2477) |
                               (baby_sex == 1 & gest_age == 38 & birthweight < 2665) |
                               (baby_sex == 1 & gest_age == 39 & birthweight < 2810) |
                               (baby_sex == 1 & gest_age == 40 & birthweight < 2904) |
                               (baby_sex == 1 & gest_age == 41 & birthweight < 2958) |
                               (baby_sex == 1 & gest_age == 42 & birthweight < 2985) |
                               (baby_sex == 1 & gest_age == 43 & birthweight < 2981) |
                               (baby_sex == 1 & gest_age == 44 & birthweight < 2952), 1, 0)))

save(natl_gh, file = "mutate/output/natl_gh_outcomes.Rdata")