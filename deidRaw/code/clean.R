###################################
# Farah Allouch 
# 2/8/2022
# Cleaning birth certificate data
# Data from https://www.nber.org/research/data/vital-statistics-natality-birth-data
###################################

rm(list = ls())
options(scipen = 999)

library(tidyverse)

natl2016 <- haven::read_stata("deidRaw/input/natl2016.dta")

natl2016 <- natl2016 %>%
  select(dob_yy, bfacil3,
         mager, mbstate_rec, mracehisp, dmar, meduc,
         priorlive, priordead, priorterm, tbo_rec, precare, previs, wic, cig_0, cig_1, cig_2, cig_3, bmi,
         rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, # rf_ppterm,
         ob_ecvs, ob_ecvf,
         ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes,
         # me_pres, me_rout,
         mm_mtr, mm_rupt, mm_uhyst, mm_aicu, pay_rec, apgar5, sex, oegest_r10, dbwt,
         ab_aven6, ab_seiz)

natl2017 <- haven::read_stata("deidRaw/input/natl2017.dta")

natl2017 <- natl2017 %>%
  select(dob_yy, bfacil3,
         mager, mbstate_rec, mracehisp, dmar, meduc,
         priorlive, priordead, priorterm, tbo_rec, precare, previs, wic, cig_0, cig_1, cig_2, cig_3, bmi,
         rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, # rf_ppterm,
         ob_ecvs, ob_ecvf,
         ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes,
         # me_pres, me_rout,
         mm_mtr, mm_rupt, mm_uhyst, mm_aicu, pay_rec, apgar5, sex, oegest_r10, dbwt,
         ab_aven6, ab_seiz)

natl2018 <- haven::read_stata("deidRaw/input/natl2018.dta")

natl2018 <- natl2018 %>% 
  select(dob_yy, bfacil3,
         mager, mbstate_rec, mracehisp, dmar, meduc,
         priorlive, priordead, priorterm, tbo_rec, precare, previs, wic, cig_0, cig_1, cig_2, cig_3, bmi,
         rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, # rf_ppterm,
         ob_ecvs, ob_ecvf,
         ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes,
         # me_pres, me_rout,
         mm_mtr, mm_rupt, mm_uhyst, mm_aicu, pay_rec, apgar5, sex, oegest_r10, dbwt,
         ab_aven6, ab_seiz)

natl2019 <- haven::read_stata("deidRaw/input/natl2019.dta")

natl2019 <- natl2019 %>%
  select(DOB_YY, BFACIL3,
         mager, MBSTATE_REC, mracehisp, dmar, meduc,
         priorlive, priordead, priorterm, TBO_REC, precare, previs, wic, CIG_0, CIG_1, CIG_2, CIG_3, bmi,
         RF_PDIAB, RF_GDIAB, RF_PHYPE, RF_GHYPE, RF_EHYPE, # MISSING RF_PPTERM
         OB_ECVS, OB_ECVF,
         LD_INDL, LD_AUGM, LD_STER, LD_ANTB, LD_CHOR, LD_ANES,
         # MISSING ME_PRES AND ME_ROUT
         MM_MTR, MM_RUPT, MM_UHYST, MM_AICU, PAY_REC, APGAR5, sex, OEGest_R10, dbwt,
         AB_AVEN6, AB_SEIZ) %>% 
  rename(dob_yy = DOB_YY,
         bfacil3 = BFACIL3,
         mbstate_rec = MBSTATE_REC,
         tbo_rec = TBO_REC,
         cig_0 = CIG_0,
         cig_1 = CIG_1,
         cig_2 = CIG_2,
         cig_3 = CIG_3,
         rf_pdiab = RF_PDIAB,
         rf_gdiab = RF_GDIAB,
         rf_phype = RF_PHYPE,
         rf_ghype = RF_GHYPE,
         rf_ehype = RF_EHYPE,
         ob_ecvs = OB_ECVS,
         ob_ecvf = OB_ECVF,
         ld_indl = LD_INDL,
         ld_augm = LD_AUGM,
         ld_ster = LD_STER,
         ld_antb = LD_ANTB,
         ld_chor = LD_CHOR,
         ld_anes = LD_ANES,
         mm_mtr = MM_MTR,
         mm_rupt = MM_RUPT,
         mm_uhyst = MM_UHYST,
         mm_aicu = MM_AICU,
         pay_rec = PAY_REC,
         apgar5 = APGAR5,
         oegest_r10 = OEGest_R10,
         ab_aven6 = AB_AVEN6,
         ab_seiz = AB_SEIZ)

natl2020 <- haven::read_stata("deidRaw/input/natl2020.dta")

natl2020 <- natl2020 %>%
  select(DOB_YY, BFACIL3,
         mager, MBSTATE_REC, mracehisp, dmar, meduc,
         priorlive, priordead, priorterm, TBO_REC, precare, previs, wic, CIG_0, CIG_1, CIG_2, CIG_3, bmi,
         RF_PDIAB, RF_GDIAB, RF_PHYPE, RF_GHYPE, RF_EHYPE, # RF_PPTERM,
         OB_ECVS, OB_ECVF,
         LD_INDL, LD_AUGM, LD_STER, LD_ANTB, LD_CHOR, LD_ANES,
         # MISSING ME_PRES AND ME_ROUT
         MM_MTR, MM_RUPT, MM_UHYST, MM_AICU, PAY_REC, APGAR5, sex, OEGest_R10, dbwt,
         AB_AVEN6, AB_SEIZ) %>% 
  rename(dob_yy = DOB_YY,
         bfacil3 = BFACIL3,
         mbstate_rec = MBSTATE_REC,
         tbo_rec = TBO_REC,
         cig_0 = CIG_0,
         cig_1 = CIG_1,
         cig_2 = CIG_2,
         cig_3 = CIG_3,
         rf_pdiab = RF_PDIAB,
         rf_gdiab = RF_GDIAB,
         rf_phype = RF_PHYPE,
         rf_ghype = RF_GHYPE,
         rf_ehype = RF_EHYPE,
         ob_ecvs = OB_ECVS,
         ob_ecvf = OB_ECVF,
         ld_indl = LD_INDL,
         ld_augm = LD_AUGM,
         ld_ster = LD_STER,
         ld_antb = LD_ANTB,
         ld_chor = LD_CHOR,
         ld_anes = LD_ANES,
         mm_mtr = MM_MTR,
         mm_rupt = MM_RUPT,
         mm_uhyst = MM_UHYST,
         mm_aicu = MM_AICU,
         pay_rec = PAY_REC,
         apgar5 = APGAR5,
         oegest_r10 = OEGest_R10,
         ab_aven6 = AB_AVEN6,
         ab_seiz = AB_SEIZ)

natl2016_2020 <- rbind(natl2016, natl2017, natl2018, natl2019, natl2020) # missing RF_PPTERM, ME_PRES AND ME_ROUT

rm(natl2016)
rm(natl2017)
rm(natl2018)
rm(natl2019)
rm(natl2020)

natl2016_2020 <- natl2016_2020 %>% 
  rename(year = dob_yy,
         facility = bfacil3,
         mom_age = mager,
         mom_nativity = mbstate_rec,
         mom_race_ethnicity = mracehisp,
         mom_marital_status = dmar,
         mom_educ = meduc,
         prior_births_living = priorlive,
         prior_births_dead = priordead,
         prior_terminations = priorterm,
         total_birth_order = tbo_rec,
         month_prenatal_start = precare,
         nb_prenatal_visits = previs,
         nb_cig_before_preg = cig_0,
         nb_cig_first_trimester = cig_1,
         nb_cig_second_trimester = cig_2,
         nb_cig_third_trimester = cig_3,
         pre_preg_diabetes = rf_pdiab,
         gest_diabetes = rf_gdiab,
         pre_preg_htn = rf_phype,
         gest_htn = rf_ghype,
         eclampsia = rf_ehype,
         success_external_cephalic = ob_ecvs,
         fail_external_cephalic = ob_ecvf,
         labor_induction = ld_indl,
         labor_augmentation = ld_augm,
         labor_steroids = ld_ster,
         labor_antibiotics = ld_antb,
         labor_chorioamniotitis = ld_chor,
         labor_anesthesia = ld_anes,
         maternal_transfusion = mm_mtr,
         ruptured_uterus = mm_rupt,
         unplanned_hysterectomy = mm_uhyst,
         maternal_icu = mm_aicu,
         payer = pay_rec,
         five_min_apgar = apgar5,
         baby_sex = sex,
         gest_age = oegest_r10,
         birthweight = dbwt,
         assisted_ventilation_six_hr = ab_aven6,
         baby_seizures = ab_seiz) %>% 
  filter(!is.na(year))

natl2016_2020 <- natl2016_2020 %>% 
  mutate(facility = as.factor(ifelse(facility == 3, NA, facility)),
         mom_nativity = as.factor(ifelse(mom_nativity == 3, NA, mom_nativity)),
         mom_race_ethnicity = as.factor(ifelse(mom_race_ethnicity == 8, NA, mom_race_ethnicity)),
         mom_educ = as.factor(ifelse(mom_educ == 9, NA, mom_educ)),
         prior_births_living = as.numeric(prior_births_living),
         prior_births_living = ifelse(prior_births_living == 99, NA, prior_births_living),
         prior_births_dead = as.numeric(prior_births_dead),
         prior_births_dead = ifelse(prior_births_dead == 99, NA, prior_births_dead),
         prior_terminations = as.numeric(prior_terminations),
         prior_terminations = ifelse(prior_terminations == 99, NA, prior_terminations),
         total_birth_order = ifelse(total_birth_order == 9, NA, total_birth_order),
         nb_prenatal_visits = as.numeric(nb_prenatal_visits),
         nb_prenatal_visits = ifelse(nb_prenatal_visits == 99, NA, nb_prenatal_visits),
         wic = ifelse(wic == "Y", "1",
                      ifelse(wic == "N", "0", NA)),
         wic = as.factor(wic),
         nb_cig_before_preg = as.numeric(nb_cig_before_preg),
         nb_cig_before_preg = ifelse(nb_cig_before_preg == 99, NA, nb_cig_before_preg),
         nb_cig_first_trimester = as.numeric(nb_cig_first_trimester),
         nb_cig_first_trimester = ifelse(nb_cig_first_trimester == 99, NA, nb_cig_first_trimester),
         nb_cig_second_trimester = as.numeric(nb_cig_second_trimester),
         nb_cig_second_trimester = ifelse(nb_cig_second_trimester == 99, NA, nb_cig_second_trimester),
         nb_cig_third_trimester = as.numeric(nb_cig_third_trimester),
         nb_cig_third_trimester = ifelse(nb_cig_third_trimester == 99, NA, nb_cig_third_trimester),
         bmi = as.numeric(bmi),
         bmi = ifelse(bmi == 99.90, NA, bmi),
         pre_preg_diabetes = ifelse(pre_preg_diabetes == "Y", 1,
                                    ifelse(pre_preg_diabetes == "N", 0, NA)),
         pre_preg_diabetes = as.factor(pre_preg_diabetes),
         gest_diabetes = ifelse(gest_diabetes == "Y", 1,
                                    ifelse(gest_diabetes == "N", 0, NA)),
         gest_diabetes = as.factor(gest_diabetes),
         pre_preg_htn = ifelse(pre_preg_htn == "Y", 1,
                                ifelse(pre_preg_htn == "N", 0, NA)),
         pre_preg_htn = as.factor(pre_preg_htn),
         gest_htn = ifelse(gest_htn == "Y", 1,
                               ifelse(gest_htn == "N", 0, NA)),
         gest_htn = as.factor(gest_htn),
         eclampsia = ifelse(eclampsia == "Y", 1,
                            ifelse(eclampsia == "N", 0, NA)),
         eclampsia = as.factor(eclampsia),
         success_external_cephalic = ifelse(success_external_cephalic == "Y", 1,
                            ifelse(success_external_cephalic == "N", 0, NA)),
         success_external_cephalic = as.factor(success_external_cephalic),
         fail_external_cephalic = ifelse(fail_external_cephalic == "Y", 1,
                                         ifelse(fail_external_cephalic == "N", 0, NA)),
         fail_external_cephalic = as.factor(fail_external_cephalic),
         labor_induction = ifelse(labor_induction == "Y", 1,
                                     ifelse(labor_induction == "N", 0, NA)),
         labor_induction = as.factor(labor_induction),
         labor_augmentation = ifelse(labor_augmentation == "Y", 1,
                                     ifelse(labor_augmentation == "N", 0, NA)),
         labor_augmentation = as.factor(labor_augmentation),
         labor_steroids = ifelse(labor_steroids == "Y", 1,
                                     ifelse(labor_steroids == "N", 0, NA)),
         labor_steroids = as.factor(labor_steroids),
         labor_antibiotics = ifelse(labor_antibiotics == "Y", 1,
                                 ifelse(labor_antibiotics == "N", 0, NA)),
         labor_antibiotics = as.factor(labor_antibiotics),
         labor_anesthesia = ifelse(labor_anesthesia == "Y", 1,
                                    ifelse(labor_anesthesia == "N", 0, NA)),
         labor_anesthesia = as.factor(labor_anesthesia),
         labor_chorioamniotitis = ifelse(labor_chorioamniotitis == "Y", 1,
                                   ifelse(labor_chorioamniotitis == "N", 0, NA)),
         labor_chorioamniotitis = as.factor(labor_chorioamniotitis),
         maternal_transfusion = ifelse(maternal_transfusion == "Y", 1,
                                         ifelse(maternal_transfusion == "N", 0, NA)),
         maternal_transfusion = as.factor(maternal_transfusion),
         ruptured_uterus = ifelse(ruptured_uterus == "Y", 1,
                                       ifelse(ruptured_uterus == "N", 0, NA)),
         ruptured_uterus = as.factor(ruptured_uterus),
         unplanned_hysterectomy = ifelse(unplanned_hysterectomy == "Y", 1,
                                  ifelse(unplanned_hysterectomy == "N", 0, NA)),
         unplanned_hysterectomy = as.factor(unplanned_hysterectomy),
         maternal_icu = ifelse(maternal_icu == "Y", 1,
                                         ifelse(maternal_icu == "N", 0, NA)),
         maternal_icu = as.factor(maternal_icu),
         payer = as.factor(ifelse(payer == 9, NA, payer)),
         five_min_apgar = as.numeric(five_min_apgar),
         five_min_apgar = ifelse(five_min_apgar == 99, NA, five_min_apgar),
         baby_sex = as.factor(ifelse(baby_sex == "M", "0", "1")),
         gest_age = as.numeric(ifelse(gest_age == 99, NA, gest_age)),
         birthweight = as.numeric(birthweight),
         birthweight = ifelse(birthweight == 9999, NA, birthweight),
         assisted_ventilation_six_hr = ifelse(assisted_ventilation_six_hr == "Y", "1",
                               ifelse(assisted_ventilation_six_hr == "N", "0", NA)),
         assisted_ventilation_six_hr = as.factor(assisted_ventilation_six_hr),
         baby_seizures = ifelse(baby_seizures == "Y", "1",
                                              ifelse(baby_seizures == "N", "0", NA)),
         baby_seizures = as.factor(baby_seizures))
  
sapply(natl2016_2020[1:43], summary)

save(natl2016_2020, file = "deidRaw/output/natl2016_2020.Rdata")