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
save(natl2016_2020, file = "deidRaw/output/natl2016_2017.Rdata")

rm(natl2016)
rm(natl2017)
rm(natl2018)
rm(natl2019)
rm(natl2020)


# table(natl2016_2017$dob_yy, useNA = "always")
# table(natl2016_2017$bfacil3, useNA = "always")
# summary(natl2016_2017$mager)
# table(natl2016_2017$mbstate_rec, useNA = "always") 
# table(natl2016_2017$mracehisp, useNA = "always") # 8 to NA
# table(natl2016_2017$dmar, useNA = "always") 
# table(natl2016_2017$meduc, useNA = "always") # 9 to NA
# summary(natl2016_2017$priorlive) # 99 to NA
# summary(natl2016_2017$priordead) # 99 to NA
# summary(natl2016_2017$priorterm) # 99 to NA
# summary(natl2016_2017$tbo_rec) # 9 to NA
# summary(natl2016_2017$precare) # 99 to NA
# summary(natl2016_2017$previs) # 99 to NA
# table(natl2016_2017$wic, useNA = "always") # U to NA ; character to numeric 
# summary(natl2016_2017$cig_0) # 99 to NA
# summary(natl2016_2017$cig_1) # 99 to NA
# summary(natl2016_2017$cig_2) # 99 to NA
# summary(natl2016_2017$cig_3) # 99 to NA
# summary(natl2016_2017$bmi) # 99.90 to NA
# table(natl2016_2017$rf_pdiab, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$rf_gdiab, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$rf_phype, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$rf_ghype, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$rf_ehype, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$rf_ppterm, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ob_ecvs, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ob_ecvf, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ld_indl, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ld_augm, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ld_ster, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ld_antb, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ld_chor, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ld_anes, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$me_pres, useNA = "always") # 9 to NA
# table(natl2016_2017$me_rout, useNA = "always") # 9 to NA
# table(natl2016_2017$mm_mtr, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$mm_rupt, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$mm_uhyst, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$mm_aicu, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$pay_rec, useNA = "always") # 9 to NA
# summary(natl2016_2017$apgar5) # 99 to NA
# table(natl2016_2017$sex, useNA = "always")
# table(natl2016_2017$oegest_r10, useNA = "always") # 99 to NA
# summary(natl2016_2017$dbwt) # 9999 to NA
# table(natl2016_2017$ab_aven6, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$ab_seiz, useNA = "always") # U to NA ; character to numeric 
# table(natl2016_2017$f_ab_vent6, useNA = "always") # probs not needed
# table(natl2016_2017$f_ab_seiz, useNA = "always") # probs not needed
