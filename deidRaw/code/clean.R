rm(list = ls())
options(scipen = 999)

library(tidyverse)

natl2016 <- haven::read_stata("deidRaw/input/natl2016.dta")

natl2016 <- natl2016 %>% 
  select(dob_yy, bfacil3,
         mage_impflg, mage_repflg, mager, mbstate_rec, restatus, mraceimp, f_mhisp, mracehisp, dmar, mar_imp, meduc, f_meduc,
         priorlive, priordead, priorterm, tbo_rec, precare, f_mpcb, previs, f_tpcv, wic, f_wic, cig_0, cig_1, cig_2, cig_3, f_cigs_0, f_cigs_1, f_cigs_2, f_cigs_3, bmi,
         rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, rf_ppterm, f_rf_pdiab, f_rf_gdiab, f_rf_phyper, f_rf_ghyper, f_rf_eclamp, f_rf_ppb,
         ob_ecvs, ob_ecvf, f_ob_succ, f_ob_fail,
         ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes, f_ld_indl, f_ld_augm, f_ld_ster, f_ld_antb, f_ld_chor, f_ld_anes, no_lbrdlv,
         me_pres, me_rout, f_me_pres, f_me_rout,
         mm_mtr, mm_rupt, mm_uhyst, mm_aicu, f_mm_mtr, f_mm_rupt, f_mm_uhyst, f_mm_aicu, pay_rec, f_pay, apgar5, f_apgar5, sex, oegest_r10, dbwt,
         ab_aven6, ab_seiz, f_ab_vent6, f_ab_seiz)

natl2017 <- haven::read_stata("deidRaw/input/natl2017.dta")

natl2017 <- natl2017 %>% 
  select(dob_yy, bfacil3,
         mage_impflg, mage_repflg, mager, mbstate_rec, restatus, mraceimp, f_mhisp, mracehisp, dmar, mar_imp, meduc, f_meduc,
         priorlive, priordead, priorterm, tbo_rec, precare, f_mpcb, previs, f_tpcv, wic, f_wic, cig_0, cig_1, cig_2, cig_3, f_cigs_0, f_cigs_1, f_cigs_2, f_cigs_3, bmi,
         rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, rf_ppterm, f_rf_pdiab, f_rf_gdiab, f_rf_phyper, f_rf_ghyper, f_rf_eclamp, f_rf_ppb,
         ob_ecvs, ob_ecvf, f_ob_succ, f_ob_fail,
         ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes, f_ld_indl, f_ld_augm, f_ld_ster, f_ld_antb, f_ld_chor, f_ld_anes, no_lbrdlv,
         me_pres, me_rout, f_me_pres, f_me_rout,
         mm_mtr, mm_rupt, mm_uhyst, mm_aicu, f_mm_mtr, f_mm_rupt, f_mm_uhyst, f_mm_aicu, pay_rec, f_pay, apgar5, f_apgar5, sex, oegest_r10, dbwt,
         ab_aven6, ab_seiz, f_ab_vent6, f_ab_seiz)

natl2018 <- haven::read_stata("deidRaw/input/natl2018.dta")

natl2018 <- natl2018 %>% 
  select(dob_yy, bfacil3,
         mage_impflg, mage_repflg, mager, mbstate_rec, restatus, mraceimp, f_mhisp, mracehisp, dmar, mar_imp, meduc, f_meduc,
         priorlive, priordead, priorterm, tbo_rec, precare, f_mpcb, previs, f_tpcv, wic, f_wic, cig_0, cig_1, cig_2, cig_3, f_cigs_0, f_cigs_1, f_cigs_2, f_cigs_3, bmi,
         rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, rf_ppterm, f_rf_pdiab, f_rf_gdiab, f_rf_phyper, f_rf_ghyper, f_rf_eclamp, f_rf_ppb,
         ob_ecvs, ob_ecvf, f_ob_succ, f_ob_fail,
         ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes, f_ld_indl, f_ld_augm, f_ld_ster, f_ld_antb, f_ld_chor, f_ld_anes, no_lbrdlv,
         me_pres, me_rout, f_me_pres, f_me_rout,
         mm_mtr, mm_rupt, mm_uhyst, mm_aicu, f_mm_mtr, f_mm_rupt, f_mm_uhyst, f_mm_aicu, pay_rec, f_pay, apgar5, f_apgar5, sex, oegest_r10, dbwt,
         ab_aven6, ab_seiz, f_ab_vent6, f_ab_seiz)

natl2016_2017 <- rbind(natl2016, natl2017)

rm(natl2016)
rm(natl2017)

n_2016_2017 <- nrow(natl2016_2017)

table(natl2016_2017$dob_yy, useNA = "always")
table(natl2016_2017$bfacil3, useNA = "always")
table(natl2016_2017$mage_impflg, useNA = "always") # probs not needed
table(natl2016_2017$mage_repflg, useNA = "always") # probs not needed
summary(natl2016_2017$mager)
table(natl2016_2017$mbstate_rec, useNA = "always") 
table(natl2016_2017$restatus, useNA = "always") # probs not needed
table(natl2016_2017$mraceimp, useNA = "always") # probs not needed
table(natl2016_2017$f_mhisp, useNA = "always") # probs not needed
table(natl2016_2017$mracehisp, useNA = "always") # 8 to NA
table(natl2016_2017$dmar, useNA = "always") 
table(natl2016_2017$mar_imp, useNA = "always") # probs not needed
table(natl2016_2017$meduc, useNA = "always") # 9 to NA
table(natl2016_2017$f_meduc, useNA = "always") # probs not needed
summary(natl2016_2017$priorlive) # 99 to NA
summary(natl2016_2017$priordead) # 99 to NA
summary(natl2016_2017$priorterm) # 99 to NA
summary(natl2016_2017$tbo_rec) # 9 to NA
summary(natl2016_2017$precare) # 99 to NA
table(natl2016_2017$f_mpcb, useNA = "always") # probs not needed
summary(natl2016_2017$previs) # 99 to NA
table(natl2016_2017$f_tpcv, useNA = "always") # probs not needed
table(natl2016_2017$wic, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$f_wic, useNA = "always") # probs not needed
summary(natl2016_2017$cig_0) # 99 to NA
summary(natl2016_2017$cig_1) # 99 to NA
summary(natl2016_2017$cig_2) # 99 to NA
summary(natl2016_2017$cig_3) # 99 to NA
table(natl2016_2017$f_cigs_0, useNA = "always") # probs not needed
table(natl2016_2017$f_cigs_1, useNA = "always") # probs not needed
table(natl2016_2017$f_cigs_2, useNA = "always") # probs not needed
table(natl2016_2017$f_cigs_3, useNA = "always") # probs not needed
summary(natl2016_2017$bmi) # 99.90 to NA
table(natl2016_2017$rf_pdiab, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$rf_gdiab, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$rf_phype, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$rf_ghype, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$rf_ehype, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$rf_ppterm, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$f_rf_pdiab, useNA = "always") # probs not needed
table(natl2016_2017$f_rf_gdiab, useNA = "always") # probs not needed
table(natl2016_2017$f_rf_phyper, useNA = "always") # probs not needed
table(natl2016_2017$f_rf_ghyper, useNA = "always") # probs not needed
table(natl2016_2017$f_rf_eclamp, useNA = "always") # probs not needed
table(natl2016_2017$f_rf_ppb, useNA = "always") # probs not needed
table(natl2016_2017$ob_ecvs, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ob_ecvf, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$f_ob_succ, useNA = "always") # probs not needed
table(natl2016_2017$f_ob_fail, useNA = "always") # probs not needed
table(natl2016_2017$ld_indl, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ld_augm, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ld_ster, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ld_antb, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ld_chor, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ld_anes, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$f_ld_indl, useNA = "always") # probs not needed
table(natl2016_2017$f_ld_augm, useNA = "always") # probs not needed
table(natl2016_2017$f_ld_ster, useNA = "always") # probs not needed
table(natl2016_2017$f_ld_antb, useNA = "always") # probs not needed
table(natl2016_2017$f_ld_chor, useNA = "always") # probs not needed
table(natl2016_2017$no_lbrdlv, useNA = "always") # probs not needed
table(natl2016_2017$me_pres, useNA = "always") # 9 to NA
table(natl2016_2017$me_rout, useNA = "always") # 9 to NA
table(natl2016_2017$f_me_pres, useNA = "always") # probs not needed
table(natl2016_2017$f_me_rout, useNA = "always") # probs not needed
table(natl2016_2017$mm_mtr, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$mm_rupt, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$mm_uhyst, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$mm_aicu, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$f_mm_mtr, useNA = "always") # probs not needed
table(natl2016_2017$f_mm_rupt, useNA = "always") # probs not needed
table(natl2016_2017$f_mm_uhyst, useNA = "always") # probs not needed
table(natl2016_2017$f_mm_aicu, useNA = "always") # probs not needed
table(natl2016_2017$pay_rec, useNA = "always") # 9 to NA
table(natl2016_2017$f_pay, useNA = "always") # probs not needed
summary(natl2016_2017$apgar5) # 99 to NA
table(natl2016_2017$f_apgar5, useNA = "always") # probs not needed
table(natl2016_2017$sex, useNA = "always")
table(natl2016_2017$oegest_r10, useNA = "always") # 99 to NA
summary(natl2016_2017$dbwt) # 9999 to NA
table(natl2016_2017$ab_aven6, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$ab_seiz, useNA = "always") # U to NA ; character to numeric 
table(natl2016_2017$f_ab_vent6, useNA = "always") # probs not needed
table(natl2016_2017$f_ab_seiz, useNA = "always") # probs not needed





# natl2019 <- haven::read_stata("deidRaw/input/natl2019.dta")
# 
# natl2019 <- natl2019 %>% 
#   select(dob_yy, bfacil3,
#          mage_impflg, mage_repflg, mager, mbstate_rec, restatus, mraceimp, f_mhisp, mracehisp, dmar, mar_imp, meduc, f_meduc,
#          priorlive, priordead, priorterm, tbo_rec, precare, f_mpcb, previs, f_tpcv, wic, f_wic, cig_0, cig_1, cig_2, cig_3, f_cigs_0, f_cigs_1, f_cigs_2, f_cigs_3, bmi,
#          rf_pdiab, rf_gdiab, rf_phype, rf_ghype, rf_ehype, rf_ppterm, f_rf_pdiab, f_rf_gdiab, f_rf_phyper, f_rf_ghyper, f_rf_eclamp, f_rf_ppb,
#          ob_ecvs, ob_ecvf, f_ob_succ, f_ob_fail,
#          ld_indl, ld_augm, ld_ster, ld_antb, ld_chor, ld_anes, f_ld_indl, f_ld_augm, f_ld_ster, f_ld_antb, f_ld_chor, f_ld_anes, no_lbrdlv,
#          me_pres, me_rout, f_me_pres, f_me_rout,
#          mm_mtr, mm_rupt, mm_uhyst, mm_aicu, f_mm_mtr, f_mm_rupt, f_mm_uhyst, f_mm_aicu, pay_rec, f_pay, apgar5, f_apgar5, sex, oegest_r10, dbwt,
#          ab_aven6, ab_seiz, f_ab_vent6, f_ab_seiz)
# 
# natl2020 <- haven::read_stata("deidRaw/input/natl2020.dta")
# 
# natl2020 <- natl2020 %>% 
#   select(DOB_YY, BFACIL3,
#          MAGE_IMPFLG, MAGE_REPFLG, mager, MBSTATE_REC, restatus, mraceimp, F_MHISP, mracehisp, dmar, MAR_IMP, meduc, F_MEDUC,
#          priorlive, priordead, priorterm, TBO_REC, precare, F_MPCB, previs, F_TPCV, wic, F_WIC, CIG_0, CIG_1, CIG_2, CIG_3, F_CIGS_0, F_CIGS_1, F_CIGS_2, F_CIGS_3, bmi,
#          RF_PDIAB, RF_GDIAB, RF_PHYPE, RF_GHYPE, RF_EHYPE, RF_PPTERM, F_RF_PDIAB, F_RF_GDIAB, F_RF_PHYPER, F_RF_GHYPER, F_RF_ECLAMP, F_RF_PPB,
#          OB_ECVS, OB_ECVF, F_OB_SUCC, F_OB_FAIL,
#          LD_INDL, LD_AUGM, LD_STER, LD_ANTB, LD_CHOR, LD_ANES, F_LD_INDL, F_LD_AUGM, F_LD_STER, F_LD_ANTB, F_LD_CHOR, F_LD_ANES, NO_LBRDLV,
#          me_pres, me_rout, f_me_pres, f_me_rout,
#          mm_mtr, mm_rupt, mm_uhyst, mm_aicu, f_mm_mtr, f_mm_rupt, f_mm_uhyst, f_mm_aicu, pay_rec, f_pay, apgar5, f_apgar5, sex, oegest_r10, dbwt,
#          ab_aven6, ab_seiz, f_ab_vent6, f_ab_seiz)