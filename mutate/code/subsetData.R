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

natl_gh <- natl_subset3 %>% 
  filter(anencephaly != 1 &
           spina_bifida != 1 &
           cyanotic_congen_hd != 1 &
           congen_diaph_hernia != 1 &
           congen_diaph_hernia != 1 &
           omphalocele != 1 &
           gastroschisis != 1 &
           limb_reduction != 1) # -294,319
nrow(natl_subset3) - nrow(natl_gh) 
rm(natl_subset3)

sapply(natl_gh[1:52], summary)

natl_gh <- natl_gh %>% 
  select(year, mom_age, mom_nativity, mom_race_ethnicity, mom_marital_status, mom_educ,
         month_prenatal_start, nb_prenatal_visits, wic, nb_cig_before_preg, nb_cig_first_trimester, nb_cig_second_trimester, nb_cig_third_trimester,
         bmi, pre_preg_diabetes, gest_diabetes, pre_preg_htn, gest_htn, eclampsia,
         maternal_transfusion, ruptured_uterus, unplanned_hysterectomy, maternal_icu,
         payer, baby_sex, 
         gest_age, birthweight,
         assisted_ventilation_six_hr, baby_seizures, baby_nicu)

save(natl_gh, file = "mutate/output/natl_gh.RData")
