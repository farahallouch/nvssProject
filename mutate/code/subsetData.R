rm(list = ls())
options(scipen = 999)

library(tidyverse)

load("deidRaw/output/natl2016_2020.Rdata")

natl_subset1 <- natl2016_2020 %>% 
  filter(gest_htn == 1 |
           pre_preg_htn == 1 |
           eclampsia == 1) 
nrow(natl2016_2020) - nrow(natl_subset1) # -17,212,574
round((1 - (nrow(natl_subset1) / nrow(natl2016_2020))) * 100, 1) # 90.6%
#rm(natl2016_2020)


natl_subset2 <- natl2016_2020 %>% 
  filter(facility == 1) 
nrow(natl2016_2020) - nrow(natl_subset2) # -328,034
round((1 - (nrow(natl_subset2) / nrow(natl2016_2020))) * 100, 1) # 1.7%

natl_subset2 <- natl_subset1 %>% 
  filter(facility == 1) # -2,808
nrow(natl_subset1) - nrow(natl_subset2)
rm(natl_subset1)


natl_subset3 <- natl2016_2020 %>% 
  filter(!is.na(payer)) 
nrow(natl2016_2020) - nrow(natl_subset3) # -122,960
round((1 - (nrow(natl_subset3) / nrow(natl2016_2020))) * 100, 1) # 0.6%

natl_subset3 <- natl_subset2 %>% 
  filter(!is.na(payer)) # -9,605
nrow(natl_subset2) - nrow(natl_subset3)
rm(natl_subset2)


natl_subset4 <- natl2016_2020 %>% 
  filter(!is.na(maternal_transfusion) &
           !is.na(ruptured_uterus) &
           !is.na(unplanned_hysterectomy) &
           !is.na(maternal_icu) &
           !is.na(assisted_ventilation_six_hr) &
           !is.na(baby_seizures) &
           !is.na(five_min_apgar) &
           !is.na(baby_nicu) &
           !is.na(birthweight) &
           !is.na(gest_age))
nrow(natl2016_2020) - nrow(natl_subset4) # -122,067
round((1 - (nrow(natl_subset4) / nrow(natl2016_2020))) * 100, 1) # 0.6%

natl_subset4 <- natl_subset3 %>% 
  filter(!is.na(maternal_transfusion) &
           !is.na(ruptured_uterus) &
           !is.na(unplanned_hysterectomy) &
           !is.na(maternal_icu) &
           !is.na(assisted_ventilation_six_hr) &
           !is.na(baby_seizures) &
           !is.na(five_min_apgar) &
           !is.na(baby_nicu) &
           !is.na(birthweight) &
           !is.na(gest_age)) # -5,842
nrow(natl_subset3) - nrow(natl_subset4) 
rm(natl_subset3)


natl_subset5 <- natl2016_2020 %>% 
  filter(!is.na(mom_age) &
           !is.na(mom_educ) &
           !is.na(mom_nativity) &
           !is.na(mom_race_ethnicity))
nrow(natl2016_2020) - nrow(natl_subset5) # -361,135
round((1 - (nrow(natl_subset5) / nrow(natl2016_2020))) * 100, 1) # 1.9%

natl_subset5 <- natl_subset4 %>% 
  filter(!is.na(mom_age) &
           !is.na(mom_educ) &
           !is.na(mom_nativity) &
           !is.na(mom_race_ethnicity)) # -27,896
nrow(natl_subset4) - nrow(natl_subset5) 
rm(natl_subset4)


natl_subset6 <- natl2016_2020 %>% 
  filter(gest_age >= 23 & gest_age <= 40)
nrow(natl2016_2020) - nrow(natl_subset6) # -1,188,115 
round((1 - (nrow(natl_subset6) / nrow(natl2016_2020))) * 100, 1) # 6.3%

natl_subset6 <- natl_subset5 %>% 
  filter(gest_age >= 23 & gest_age <= 40) # -33,108
nrow(natl_subset5) - nrow(natl_subset6)
rm(natl_subset5)


natl_gh <- natl2016_2020 %>% 
  filter((anencephaly == 0 | is.na(anencephaly)) &
           (spina_bifida == 0 | is.na(spina_bifida)) &
           (cyanotic_congen_hd == 0 | is.na(cyanotic_congen_hd)) &
           (congen_diaph_hernia == 0 | is.na(congen_diaph_hernia)) &
           (omphalocele == 0 | is.na(omphalocele)) &
           (gastroschisis == 0 | is.na(gastroschisis)) &
           (limb_reduction == 0) | is.na(limb_reduction))
nrow(natl2016_2020) - nrow(natl_gh) # -21,275
round((1 - (nrow(natl_gh) / nrow(natl2016_2020))) * 100, 1) # 0.1%

natl_gh <- natl_subset6 %>% 
  filter((anencephaly == 0 | is.na(anencephaly)) &
           (spina_bifida == 0 | is.na(spina_bifida)) &
           (cyanotic_congen_hd == 0 | is.na(cyanotic_congen_hd)) &
           (congen_diaph_hernia == 0 | is.na(congen_diaph_hernia)) &
           (omphalocele == 0 | is.na(omphalocele)) &
           (gastroschisis == 0 | is.na(gastroschisis)) &
           (limb_reduction == 0) | is.na(limb_reduction)) # -2,424
nrow(natl_subset6) - nrow(natl_gh) 
rm(natl_subset6)

sapply(natl_gh[1:52], summary)

# natl_gh <- natl_gh %>% 
#   select(year, mom_age, mom_nativity, mom_race_ethnicity, mom_marital_status, mom_educ,
#          month_prenatal_start, nb_prenatal_visits, wic, nb_cig_before_preg, nb_cig_first_trimester, nb_cig_second_trimester, nb_cig_third_trimester,
#          bmi, pre_preg_diabetes, gest_diabetes, pre_preg_htn, gest_htn, eclampsia,
#          maternal_transfusion, ruptured_uterus, unplanned_hysterectomy, maternal_icu,
#          payer, baby_sex, 
#          gest_age, birthweight,
#          assisted_ventilation_six_hr, baby_seizures, baby_nicu, five_min_apgar)

save(natl_gh, file = "mutate/output/natl_gh.RData")
