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
save(natl2016_2020, file = "deidRaw/output/natl2016_2020.Rdata")

rm(natl2016)
rm(natl2017)
rm(natl2018)
rm(natl2019)
rm(natl2020)

natl2016_2020_gh <- natl2016_2020 %>% 
  filter(rf_ghype == "Y" |
           rf_ehype == "Y")

rm(natl2016_2020)
save(natl2016_2020_gh, file = "deidRaw/output/natl2016_2020.Rdata")

natl2016_2020_gh <- natl2016_2020_gh %>% 
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
  filter(!is.na(year)) %>% 
  mutate(facility = ifelse(facility == 3, NA, facility),
         mom_nativity = ifelse(mom_nativity == 3, NA, mom_nativity),
         mom_race_ethnicity = ifelse(mom_race_ethnicity == 8, NA, mom_race_ethnicity),
         mom_educ = ifelse(mom_educ == 9, NA, mom_educ),
         prior_births_living = as.numeric(prior_births_living),
         prior_births_living = ifelse(prior_births_living == 99, NA, prior_births_living),
         prior_births_dead = as.numeric(prior_births_dead),
         prior_births_dead = ifelse(prior_births_dead == 99, NA, prior_births_dead),
         prior_terminations = as.numeric(prior_terminations),
         prior_terminations = ifelse(prior_terminations == 99, NA, prior_terminations),
         total_birth_order = ifelse(total_birth_order == 9, NA, total_birth_order),
         nb_prenatal_visits = as.numeric(nb_prenatal_visits),
         nb_prenatal_visits = ifelse(nb_prenatal_visits == 99, NA, nb_prenatal_visits),
         )
  

table(natl2016_2020_gh$year, useNA = "always") # 57 NA
table(natl2016_2020_gh$facility, useNA = "always") # 3 to NA + 57 NA
summary(natl2016_2020_gh$mom_age) # 57 NA
table(natl2016_2020_gh$mom_nativity, useNA = "always") # 3 to NA
table(natl2016_2020_gh$mom_race_ethnicity, useNA = "always") # 8 to NA
table(natl2016_2020_gh$mom_marital_status, useNA = "always")
table(natl2016_2020_gh$mom_educ, useNA = "always") # 9 to NA
summary(natl2016_2020_gh$prior_births_living) # 99 to NA; character to numeric
summary(natl2016_2020_gh$prior_births_dead) # 99 to NA; character to numeric
summary(natl2016_2020_gh$prior_terminations) # 99 to NA; character to numeric
summary(natl2016_2020$total_birth_order) # 9 to NA
table(natl2016_2020$nb_prenatal_visits, useNA = "always") # 99 to NA; character to numeric
table(natl2016_2020$wic, useNA = "always") # U to NA; character to numeric

table(natl2016_2020$nb_cig_before_preg, useNA = "always") # 99 to NA; character to numeric
table(natl2016_2020$nb_cig_first_trimester, useNA = "always") # 99 to NA; character to numeric
table(natl2016_2020$nb_cig_second_trimester, useNA = "always") # 99 to NA; character to numeric
table(natl2016_2020$nb_cig_third_trimester, useNA = "always") # 99 to NA; character to numeric
summary(natl2016_2020$bmi) # 99.90 to NA
table(natl2016_2020$pre_preg_diabetes, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$gest_diabetes, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$pre_preg_htn, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$gest_htn, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$eclampsia, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$success_external_cephalic, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$fail_external_cephalic, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$labor_induction, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$labor_augmentation, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$labor_steroids, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$labor_antibiotics, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$labor_anesthesia, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$labor_chorioamniotitis, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$maternal_transfusion, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$ruptured_uterus, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$unplanned_hysterectomy, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$maternal_icu, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$payer, useNA = "always") # 9 to NA
table(natl2016_2020$five_min_apgar, useNA = "always") # 99 to NA; character to numeric
table(natl2016_2020$baby_sex, useNA = "always") # character to numeric
table(natl2016_2020$gest_age, useNA = "always") # 99 to NA
table(natl2016_2020$birthweight, useNA = "always") # 9999 to NA; character to numeric
table(natl2016_2020$assisted_ventilation_six_hr, useNA = "always") # U to NA ; character to numeric
table(natl2016_2020$baby_seizures, useNA = "always") # U to NA ; character to numeric
