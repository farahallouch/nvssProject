rm(list = ls())
options(scipen = 999)

library(tidyverse)
library(gtsummary)

load("C:/Users/fallouch/Box/PhD/NVSS/nvssProject/mutate/output/natl_gh_outcomes.Rdata")

natl_gh1 <- natl_gh %>% 
  filter(!is.na(apcnu)) # -40,157
nrow(natl_gh) - nrow(natl_gh1)
rm(natl_gh)

natl_gh <- natl_gh1
rm(natl_gh1)

# Table 1
natl_gh %>% 
  select(payer,
         gest_htn, pre_preg_htn, eclampsia, gest_diabetes, pre_preg_diabetes,
         maternal_outcomes, maternal_transfusion, ruptured_uterus, unplanned_hysterectomy, maternal_icu,
         baby_outcomes, assisted_ventilation_six_hr, baby_seizures, baby_nicu, apgar_less_7,
         ptb, lbw, sga,
         mom_age_cat, mom_educ_cat, mom_nativity, mom_race_ethnicity_cat,
         prenatal_care, apcnu,
         mom_marital_status, plurality, preg_smoking, year) %>% 
  tbl_summary(by = payer) %>% 
  bold_labels() %>% 
  modify_caption("Table 1. Descriptive Sample Comparison") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/table1.docx")

# Unadjusted and adjusted models
## Maternal outcomes
unadjusted_maternal_outcomes <- glm(maternal_outcomes ~ payer,
                                    data = natl_gh,
                                    family = binomial(link = "logit"))

adjusted_maternal_outcomes <- glm(maternal_outcomes ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                  data = natl_gh,
                                  family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_maternal_outcomes,
                                     exponentiate = TRUE,
                                     conf.level = 0.99),
                      tbl_regression(adjusted_maternal_outcomes,
                                     exponentiate = TRUE,
                                     conf.level = 0.99)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 2. Maternal outcomes") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/maternal_outcomes.docx")

rm(unadjusted_maternal_outcomes)

## Maternal transfusion
unadjusted_maternal_transfusion <- glm(maternal_transfusion ~ payer,
                                       data = natl_gh,
                                       family = binomial(link = "logit"))

adjusted_maternal_transfusion <- glm(maternal_transfusion ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                     data = natl_gh,
                                     family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_maternal_transfusion,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_maternal_transfusion,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 3. Maternal transfusion") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/maternal_transfusion.docx")

rm(unadjusted_maternal_transfusion)
rm(adjusted_maternal_transfusion)

## Ruptured uterus
unadjusted_ruptured_uterus <- glm(ruptured_uterus ~ payer,
                                  data = natl_gh,
                                  family = binomial(link = "logit"))

adjusted_ruptured_uterus <- glm(ruptured_uterus ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                data = natl_gh,
                                family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_ruptured_uterus,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_ruptured_uterus,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 4. Ruptured uterus") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/ruptured_uterus.docx")

rm(unadjusted_ruptured_uterus)
rm(adjusted_ruptured_uterus)

## Unplanned hysterectomy
unadjusted_unplanned_hysterectomy <- glm(unplanned_hysterectomy ~ payer,
                                         data = natl_gh,
                                         family = binomial(link = "logit"))

adjusted_unplanned_hysterectomy <- glm(unplanned_hysterectomy ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                       data = natl_gh,
                                       family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_unplanned_hysterectomy,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_unplanned_hysterectomy,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 5. Unplanned hysterectomy") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/unplanned_hysterectomy.docx")

rm(unadjusted_unplanned_hysterectomy)
rm(adjusted_unplanned_hysterectomy)

## Maternal ICU
unadjusted_maternal_icu <- glm(maternal_icu ~ payer,
                               data = natl_gh,
                               family = binomial(link = "logit"))

adjusted_maternal_icu <- glm(maternal_icu ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                             data = natl_gh,
                             family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_maternal_icu,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_maternal_icu,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 6. Maternal ICU") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/maternal_icu.docx")

rm(unadjusted_maternal_icu)
rm(adjusted_maternal_icu)

## Baby outcomes
unadjusted_baby_outcomes <- glm(baby_outcomes ~ payer,
                                data = natl_gh,
                                family = binomial(link = "logit"))

adjusted_baby_outcomes <- glm(baby_outcomes ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                              data = natl_gh,
                              family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_baby_outcomes,
                                     exponentiate = TRUE,
                                     conf.level = 0.99),
                      tbl_regression(adjusted_baby_outcomes,
                                     exponentiate = TRUE,
                                     conf.level = 0.99)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 7. Baby outcomes") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/baby_outcomes.docx")

rm(unadjusted_baby_outcomes)

## Assisted ventilation > 6 hours
unadjusted_assisted_vent <- glm(assisted_ventilation_six_hr ~ payer,
                                data = natl_gh,
                                family = binomial(link = "logit"))

adjusted_assisted_vent <- glm(assisted_ventilation_six_hr ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                              data = natl_gh,
                              family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_assisted_vent,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_assisted_vent,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 8. Assisted ventilation > 6 hours") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/assisted_ventilation.docx")

rm(unadjusted_assisted_vent)
rm(adjusted_assisted_vent)

## Infant Seizures
unadjusted_baby_seizures <- glm(baby_seizures ~ payer,
                                data = natl_gh,
                                family = binomial(link = "logit"))

adjusted_baby_seizures <- glm(baby_seizures ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                              data = natl_gh,
                              family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_baby_seizures,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_baby_seizures,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 9. Baby seizures") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/baby_seizures.docx")

rm(unadjusted_baby_seizures)
rm(adjusted_baby_seizures)

## NICU
unadjusted_baby_nicu <- glm(baby_nicu ~ payer,
                            data = natl_gh,
                            family = binomial(link = "logit"))

adjusted_baby_nicu <- glm(baby_nicu ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                          data = natl_gh,
                          family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_baby_nicu,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_baby_nicu,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 10. NICU") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/nicu.docx")

rm(unadjusted_baby_nicu)
rm(adjusted_baby_nicu)

## 5-min APGAR < 7 
unadjusted_apgar_less_7 <- glm(apgar_less_7 ~ payer,
                               data = natl_gh,
                               family = binomial(link = "logit"))

adjusted_apgar_less_7 <- glm(apgar_less_7 ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                             data = natl_gh,
                             family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_apgar_less_7,
                                     exponentiate = TRUE),
                      tbl_regression(adjusted_apgar_less_7,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 11. Five minute APGAR score < 7") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/apgar_less_7.docx")

rm(unadjusted_apgar_less_7)
rm(adjusted_apgar_less_7)

## Preterm birth
unadjusted_ptb <- glm(ptb ~ payer,
                      data = natl_gh,
                      family = binomial(link = "logit"))

adjusted_ptb <- glm(ptb ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                    data = natl_gh,
                    family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_ptb,
                                     exponentiate = TRUE,
                                     conf.level = 0.99),
                      tbl_regression(adjusted_ptb,
                                     exponentiate = TRUE,
                                     conf.level = 0.99)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 12. Preterm bith") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/preterm_birth.docx")

rm(unadjusted_ptb)

## Low birthweight
unadjusted_lbw <- glm(lbw ~ payer,
                      data = natl_gh,
                      family = binomial(link = "logit"))

adjusted_lbw <- glm(lbw ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                    data = natl_gh,
                    family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_lbw,
                                     exponentiate = TRUE,
                                     conf.level = 0.99),
                      tbl_regression(adjusted_lbw,
                                     exponentiate = TRUE,
                                     conf.level = 0.99)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 13. Low birthweight") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/low_birthweight.docx")

rm(unadjusted_lbw)

## Small for gestational age
unadjusted_sga <- glm(sga ~ payer,
                      data = natl_gh,
                      family = binomial(link = "logit"))

adjusted_sga <- glm(sga ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                    data = natl_gh,
                    family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(unadjusted_sga,
                                     exponentiate = TRUE,
                                     conf.level = 0.99),
                      tbl_regression(adjusted_sga,
                                     exponentiate = TRUE,
                                     conf.level = 0.99)),
          tab_spanner = c("**Unadjusted model**", "**Adjusted model**")) %>% 
  modify_caption("Table 14. Small for gestational age") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/sga.docx")

rm(unadjusted_sga)

# Mediation analysis
## Maternal outcomes
natl_gh <- natl_gh %>% 
  mutate(adequate_pnc = ifelse((apcnu == "Adequate Plus" |
                                  apcnu == "Adequate"), 1, 0))

# mediation_xm <- glm(adequate_pnc ~ payer + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
#                                       data = natl_gh,
#                                       family = binomial(link = "logit"))

mediation_maternal_outcomes_xmy <- glm(maternal_outcomes ~ payer + adequate_pnc + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                       data = natl_gh,
                                       family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(adjusted_maternal_outcomes,
                                     exponentiate = TRUE),
                      tbl_regression(mediation_maternal_outcomes_xmy,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Exposure-outcome model**",
                          "**Exposure, mediator-outcome model**")) %>% 
  modify_caption("Table 15. Maternal outcomes - mediation analysis") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/maternal_outcomes_mediation.docx")

rm(adjusted_maternal_outcomes)
rm(mediation_maternal_outcomes_xmy)

## Baby outcomes
mediation_baby_outcomes_xmy <- glm(baby_outcomes ~ payer + adequate_pnc + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                       data = natl_gh,
                                       family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(adjusted_baby_outcomes,
                                     exponentiate = TRUE),
                      tbl_regression(mediation_baby_outcomes_xmy,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Exposure-outcome model**",
                          "**Exposure, mediator-outcome model**")) %>% 
  modify_caption("Table 16. Baby outcomes - mediation analysis") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/baby_outcomes_mediation.docx")

rm(adjusted_baby_outcomes)
rm(mediation_baby_outcomes_xmy)

## Preterm birth
mediation_ptb_xmy <- glm(ptb ~ payer + adequate_pnc + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                                   data = natl_gh,
                                   family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(adjusted_ptb,
                                     exponentiate = TRUE),
                      tbl_regression(mediation_ptb_xmy,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Exposure-outcome model**",
                          "**Exposure, mediator-outcome model**")) %>% 
  modify_caption("Table 17. Preterm birth - mediation analysis") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/preterm_birth_mediation.docx")

rm(adjusted_ptb)
rm(mediation_ptb_xmy)

## Low birthweight
mediation_lbw_xmy <- glm(lbw ~ payer + adequate_pnc + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                         data = natl_gh,
                         family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(adjusted_lbw,
                                     exponentiate = TRUE),
                      tbl_regression(mediation_lbw_xmy,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Exposure-outcome model**",
                          "**Exposure, mediator-outcome model**")) %>% 
  modify_caption("Table 18. Low birthweight - mediation analysis") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/low_birthweight_mediation.docx")

rm(adjusted_lbw)
rm(mediation_lbw_xmy)

## Small for gestational age
mediation_sga_xmy <- glm(sga ~ payer + adequate_pnc + mom_age_cat + mom_educ_cat + mom_nativity + mom_race_ethnicity_cat,
                         data = natl_gh,
                         family = binomial(link = "logit"))

tbl_merge(tbls = list(tbl_regression(adjusted_sga,
                                     exponentiate = TRUE),
                      tbl_regression(mediation_sga_xmy,
                                     exponentiate = TRUE)),
          tab_spanner = c("**Exposure-outcome model**",
                          "**Exposure, mediator-outcome model**")) %>% 
  modify_caption("Table 18. Small for gestational age - mediation analysis") %>%
  as_flex_table() %>%
  flextable::save_as_docx(path = "./analysis/output/sga_mediation.docx")

rm(adjusted_sga)
rm(mediation_sga_xmy)