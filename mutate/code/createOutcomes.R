rm(list = ls())
options(scipen = 999)

library(tidyverse)

load("C:/Users/fallouch/Box/PhD/NVSS/nvssProject/mutate/output/natl_gh.RData")

# Taken from Kotelchuck, M. (1994). The Adequacy of Prenatal Care Utilization Index: its US distribution and association with low birthweight. American journal of public health, 84(9), 1486-1489.
expected_pnc_chart <- readxl::read_xlsx("C:/Users/fallouch/Box/PhD/NVSS/nvssProject/mutate/input/expected_pnc.xlsx")

natl_gh <- left_join(natl_gh, expected_pnc_chart, by = c("month_prenatal_start",
                                                         "gest_age"))

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
                                         baby_nicu == 1 |
                                         five_min_apgar < 7, 1, 0)),
         apgar_less_7 = factor(ifelse(five_min_apgar < 7, 1, 0)),
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
                               (baby_sex == 1 & gest_age == 44 & birthweight < 2952), 1, 0)),
         payer = case_when(payer == 1 ~ "Medicaid",
                           payer == 2 ~ "Private insurance",
                           payer == 3 ~ "Self-pay",
                           payer == 4 ~ "Other"),
         payer = factor(payer, levels = c("Private insurance", "Medicaid", "Self-pay", "Other")),
         mom_nativity = case_when(mom_nativity == 1 ~ "Born in US",
                                  mom_nativity == 2 ~ "Born outside US"),
         mom_age_cat = case_when(mom_age < 20 ~ "< 20",
                                 mom_age %in% (20 : 26) ~ "20-26",
                                 mom_age %in% (27 : 34) ~ "27-34",
                                 mom_age >= 35 ~ "35+"),
         mom_educ_cat = case_when(mom_educ %in% (1 : 2) ~ "< HS",
                                  mom_educ == 3 ~ "HS",
                                  mom_educ == 4 ~ "Some college",
                                  mom_educ %in% (5 : 8) ~ "College & above"),
         mom_educ_cat = factor(mom_educ_cat, levels = c("< HS", "HS", "Some college", "College & above")),
         mom_race_ethnicity_cat = case_when(mom_race_ethnicity == 1 ~ "NH white",
                                            mom_race_ethnicity == 2 ~ "NH Black",
                                            mom_race_ethnicity == 3 ~ "NH AIAN",
                                            (mom_race_ethnicity == 4 | mom_race_ethnicity == 5) ~ "NH Asian/NHOPI",
                                            mom_race_ethnicity == 6 ~ "NH 2+ races",
                                            mom_race_ethnicity == 7 ~ "Hispanic"),
         mom_race_ethnicity_cat = factor(mom_race_ethnicity_cat, levels = c("NH white", "NH Black", "NH AIAN", "NH Asian/NHOPI", "NH 2+ races", "Hispanic")),
         preg_smoking = case_when((nb_cig_first_trimester == 0 &
                                     nb_cig_second_trimester == 0 &
                                     nb_cig_third_trimester == 0) ~ 0,
                                  (nb_cig_first_trimester > 0 |
                                     nb_cig_second_trimester > 0 |
                                     nb_cig_third_trimester > 0) ~ 1),
         prenatal_care = case_when((nb_prenatal_visits > 0 |
                                      month_prenatal_start > 0 ) ~ 1,
                                   (nb_prenatal_visits == 0 &
                                      month_prenatal_start == 0) ~ 0,
                                   (nb_prenatal_visits == 0 &
                                      month_prenatal_start == NA) ~ 0,
                                   (nb_prenatal_visits == NA &
                                      month_prenatal_start == 0) ~ 0),
         mom_marital_status = case_when(mom_marital_status == 1 ~ "Married",
                                        mom_marital_status == 2 ~ "Unmarried"),
         plurality = case_when(plurality == 1 ~ "1",
                               plurality == 2 ~ "2",
                               plurality >= 3 ~ "3+"),
         expected_pnc = ifelse(expected_pnc == 0, 0.001, expected_pnc),
         adeq_services = round((nb_prenatal_visits / expected_pnc * 100)),
         apcnu = case_when((month_prenatal_start == 0 &
                              nb_prenatal_visits == 0) ~ "Inadequate",
                           (month_prenatal_start >= 5 |
                              adeq_services < 50) ~ "Inadequate",
                           (month_prenatal_start %in% (1 : 4) &
                              between(adeq_services, 50, 79)) ~ "Intermediate",
                           (month_prenatal_start %in% (1 : 4) &
                              between(adeq_services, 80, 109)) ~ "Adequate",
                           (month_prenatal_start %in% (1 : 4) &
                              adeq_services >= 110) ~ "Adequate Plus"),
         apcnu = factor(apcnu, levels = c("Adequate Plus",
                                          "Adequate",
                                          "Intermediate",
                                          "Inadequate")))

save(natl_gh, file = "mutate/output/natl_gh_outcomes.Rdata")