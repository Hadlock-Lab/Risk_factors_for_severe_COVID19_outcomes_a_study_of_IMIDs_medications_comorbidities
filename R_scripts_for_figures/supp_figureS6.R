#rm(list=ls())

###############################################################################################################################################
## For figure 1 in poster
###############################################################################################################################################
## Get table 1
## Read all outcomes results files
hos_result.df <- read.csv(file = 'LR_odds_ratio_outcome_hos_IMV_death1.csv')
IMV_result.df <- read.csv(file = 'LR_odds_ratio_outcome_IMV_death1.csv')
death_result.df <- read.csv(file = 'LR_odds_ratio_outcome_death1.csv')

## Create an empty table with desired col & row names
table1.df <- data.frame(matrix(ncol = 8, nrow = nrow(hos_result.df)*3))

table1_col_name <- c("Risk_factor", "Category", "Outcomes", "Odds_ratio", "lower", "upper", "Pvalue", "feature_importance")
colnames(table1.df) <- table1_col_name
table1.df$Risk_factor <- c(hos_result.df$Feature, IMV_result.df$Feature, death_result.df$Feature)

cat_names <- c("Demographic", "Demographic", "Demographic",
               #"Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding",
               
              "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", 
              "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities",
              
              "Vaccination", "Vaccination",
              
              "IMID type", "IMID type", "IMID type", "IMID type","IMID type", "IMID type", "IMID type","IMID type","IMID type", "IMID type", "IMID type", "IMID type",
              
              "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type", 
              "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type",
              "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type", 
              "Drug type", "Drug type","Drug type", "Drug type",
              )
table1.df$Category <- c(
                        rep(cat_names, 3)
                        )

table1.df$Outcomes <- c(
                        rep("Hos+IMV+Death", nrow(hos_result.df)), rep("IMV+Death", nrow(IMV_result.df)), rep("Death", nrow(death_result.df))
                        )

table1.df$Time_interval <- c(
  rep("Time Interval 1", nrow(hos_result.df)*3)
)

## Print to check the column names
colnames(hos_result.df)

table1.df$Odds_ratio <- c(hos_result.df$Odds.ratio, IMV_result.df$Odds.ratio, death_result.df$Odds.ratio
)

table1.df$lower <- c(hos_result.df$lower, IMV_result.df$lower, death_result.df$lower
)

table1.df$upper <- c(hos_result.df$upper, IMV_result.df$upper, death_result.df$upper
)

table1.df$Pvalue <- c(hos_result.df$Pvalue_FDR_corrected, IMV_result.df$Pvalue_FDR_corrected, death_result.df$Pvalue_FDR_corrected
)

table1.df$feature_importance <- c(hos_result.df$Feature.Importance, IMV_result.df$Feature.Importance, death_result.df$Feature.Importance
)

##table1.df

risk_factor_order <- c(hos_result.df$Feature)
table1.df$CategoryF <- factor(table1.df$Category, levels = c("Demographic", "Comorbidities","Vaccination", "IMID type", "Drug type", "Geocoding"))
table1.df$Risk_factorF <- factor(table1.df$Risk_factor, levels =rev(risk_factor_order)) 

#str(table1.df)
table1.df$Odds_ratio <- as.numeric(table1.df$Odds_ratio)
table1.df$lower <- as.numeric(table1.df$lower)
table1.df$upper <- as.numeric(table1.df$upper)
table1.df$Pvalue <- as.numeric(table1.df$Pvalue)
table1.df$feature_importance <- as.numeric(table1.df$feature_importance)
str(table1.df)

## Get table 2
## Read all outcomes results files
hos_result.df <- read.csv(file = 'LR_odds_ratio_outcome_hos_IMV_death2.csv')
IMV_result.df <- read.csv(file = 'LR_odds_ratio_outcome_IMV_death2.csv')
death_result.df <- read.csv(file = 'LR_odds_ratio_outcome_death2.csv')

## Create an empty table with desired col & row names
table2.df <- data.frame(matrix(ncol = 8, nrow = nrow(hos_result.df)*3))

table2_col_name <- c("Risk_factor", "Category", "Outcomes", "Odds_ratio", "lower", "upper", "Pvalue", "feature_importance")
colnames(table2.df) <- table2_col_name
table2.df$Risk_factor <- c(hos_result.df$Feature, IMV_result.df$Feature, death_result.df$Feature)

cat_names <- c("Demographic", "Demographic", "Demographic",
               #"Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding",
               
               "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", 
               "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities",
               
               "Vaccination", "Vaccination",
               
               "IMID type", "IMID type", "IMID type", "IMID type","IMID type", "IMID type", "IMID type","IMID type","IMID type", "IMID type", "IMID type", "IMID type",
               
               "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type", 
               "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type",
               "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type", 
               "Drug type", "Drug type","Drug type", "Drug type",
)
table2.df$Category <- c(
  rep(cat_names, 3)
)

table2.df$Outcomes <- c(
  rep("Hos+IMV+Death", nrow(hos_result.df)), rep("IMV+Death", nrow(IMV_result.df)), rep("Death", nrow(death_result.df))
)

table2.df$Time_interval <- c(
  rep("Time Interval 2", nrow(hos_result.df)*3)
)

## Print to check the column names
colnames(hos_result.df)

table2.df$Odds_ratio <- c(hos_result.df$Odds.ratio, IMV_result.df$Odds.ratio, death_result.df$Odds.ratio
)

table2.df$lower <- c(hos_result.df$lower, IMV_result.df$lower, death_result.df$lower
)

table2.df$upper <- c(hos_result.df$upper, IMV_result.df$upper, death_result.df$upper
)

table2.df$Pvalue <- c(hos_result.df$Pvalue_FDR_corrected, IMV_result.df$Pvalue_FDR_corrected, death_result.df$Pvalue_FDR_corrected
)

table2.df$feature_importance <- c(hos_result.df$Feature.Importance, IMV_result.df$Feature.Importance, death_result.df$Feature.Importance
)

##table2.df
risk_factor_order <- c(hos_result.df$Feature)
table2.df$CategoryF <- factor(table2.df$Category, levels = c("Demographic", "Comorbidities","Vaccination", "IMID type", "Drug type", "Geocoding"))
table2.df$Risk_factorF <- factor(table2.df$Risk_factor, levels =rev(risk_factor_order)) 

#str(table2.df)
table2.df$Odds_ratio <- as.numeric(table2.df$Odds_ratio)
table2.df$lower <- as.numeric(table2.df$lower)
table2.df$upper <- as.numeric(table2.df$upper)
table2.df$Pvalue <- as.numeric(table2.df$Pvalue)
table2.df$feature_importance <- as.numeric(table2.df$feature_importance)
str(table2.df)

## Row bind those tables
table.df = rbind(table1.df, table2.df)

#install.packages("ggplot2")
#install.packages("scales")

library(ggplot2)
library(scales)

##########################
# Fig 1, full plot
#########################

pdf("Fig1_LR.pdf", width = 22, height = 25)
ggplot(data = table.df, aes(y = Risk_factorF)) +
  theme_minimal() +
  geom_point(aes(x = Odds_ratio, color = Pvalue, size = feature_importance) ) +
  scale_colour_gradientn("P value",
                         colours = c("firebrick1", "firebrick2", "skyblue2", "skyblue1", "grey"),
                         # The 0.01 has to fall at the correct spot in the [0,1] interval
                         values = c(0, rescale(0.05, from = range(table1.df$Pvalue, na.rm = TRUE)), 0.051, 0.5, 1),
                         breaks = c(0.05, 0.25, 0.5, 0.75)
  ) +
  scale_size_binned("Feature Importance", breaks = c(0.1, 0.5, 1, 2, 3, 4), range = c(2.5, 15)) +
  guides( colour = guide_colourbar(order = 1), size = guide_legend(order = 2) )+
  geom_vline(xintercept = 0) +
  geom_segment(aes(x=lower, xend=upper, yend=Risk_factorF)) +
  labs(x = "Log-adjusted Odds Ratio", y = "Risk factors",face="bold",
  ) +
  facet_grid(. ~ factor(Outcomes, levels = c("Hos+IMV+Death", "IMV+Death", "Death")) + Time_interval , 
             scales = "free_y", space = "free_y") +
  coord_cartesian(xlim = c(-9, 9)) +
  theme(strip.text = element_text(face="bold", size = 20), axis.text = element_text(face="bold", size = 22),
        axis.title = element_text(size = 22), plot.title = element_text(size = 24, hjust = 0.5),
        legend.text = element_text(size = 20), legend.title=element_text(size = 24),)
dev.off()

####################################
# Fig 1, demo+comorbidities plot
###################################
# table1.demo.df <- table1.df[table1.df$CategoryF %in% c("Demographic", "Comorbidities","Vaccination"), ]
# 
# pdf("(demo+comorb)EULAR-fig1_multivariateLR_log_OR_pos_20211226_20220413.pdf", width = 10, height = 10)
# ggplot(data = table1.demo.df, aes(y = Risk_factorF)) +
#   theme_minimal() +
#   geom_point(aes(x = Odds_ratio, color = Pvalue, size = feature_importance) ) +
#   scale_colour_gradientn("P value",
#                          colours = c("firebrick1", "firebrick2", "skyblue2", "skyblue1", "grey"),
#                          # The 0.01 has to fall at the correct spot in the [0,1] interval
#                          values = c(0, rescale(0.05, from = range(table1.df$Pvalue, na.rm = TRUE)), 0.2, 0.5, 1),
#                          breaks = c(0.05, 0.25, 0.5, 0.75)
#   ) +
#   #scale_colour_gradient(low = "firebrick1", high = "firebrick2", breaks = c(0, 0.01, 0.02, 0.05, 0.75)) +
#   scale_size_binned("Feature Importance", breaks = c(0.1, 0.5, 1, 2, 3, 4), range = c(2.5, 15)) +
#   guides( colour = guide_colourbar(order = 1), size = guide_legend(order = 2) )+
#   geom_vline(xintercept = 0) +
#   geom_segment(aes(x=lower, xend=upper, yend=Risk_factorF)) +
#   labs(title = "Multivariate Logistic Regression models \n COVID-19 positive patients \n 12/26/2021 to 04/13/2022", x = "Log-adjusted Odds Ratio", y = "Risk Factors",face="bold",
#   ) +
#   facet_grid(CategoryF ~ factor(Outcomes, levels = c("Positive Test", "Hospitalization", "Death")) , 
#              scales = "free_y", space = "free_y") +
#   coord_cartesian(xlim = c(-7, 7)) +
#   theme(strip.text = element_text(face="bold", size = 13), axis.text = element_text(face="bold", size = 20),
#         axis.title = element_text(size = 24), plot.title = element_text(size = 24, hjust = 0.5))
# dev.off()
# 
# ####################################
# # Fig 1, IMID plot
# ###################################
# table1.IMID.df <- table1.df[table1.df$CategoryF %in% c("IMID type"), ]
# 
# pdf("(IMIDtype)EULAR-fig1_multivariateLR_log_OR_pos_20211226_20220413.pdf", width = 10, height = 10)
# ggplot(data = table1.IMID.df, aes(y = Risk_factorF)) +
#   theme_minimal() +
#   geom_point(aes(x = Odds_ratio, color = Pvalue, size = feature_importance) ) +
#   scale_colour_gradientn("P value",
#                          colours = c("firebrick1", "firebrick2", "skyblue2", "skyblue1", "grey"),
#                          # The 0.01 has to fall at the correct spot in the [0,1] interval
#                          values = c(0, rescale(0.05, from = range(table1.df$Pvalue, na.rm = TRUE)), 0.06, 0.5, 1),
#                          breaks = c(0.05,0.1, 0.25, 0.5, 0.75)
#   ) +
#   #scale_colour_gradient(low = "firebrick2", high = "grey", breaks = c(0, 0.05, 0.5, 0.75)) +
#   scale_size_binned("Feature Importance", breaks = c(0.1, 0.5, 1, 2, 3, 4), range = c(2.5, 15)) +
#   guides( colour = guide_colourbar(order = 1), size = guide_legend(order = 2) )+
#   geom_vline(xintercept = 0) +
#   geom_segment(aes(x=lower, xend=upper, yend=Risk_factorF)) +
#   labs(title = "Multivariate Logistic Regression models \n COVID-19 positive patients \n 12/26/2021 to 04/13/2022", x = "Log-adjusted Odds Ratio", y = "Risk Factors",face="bold",
#   ) +
#   facet_grid(CategoryF ~ factor(Outcomes, levels = c("Positive Test", "Hospitalization", "Death")) , 
#              scales = "free_y", space = "free_y") +
#   coord_cartesian(xlim = c(-7, 7)) +
#   theme(strip.text = element_text(face="bold", size = 13), axis.text = element_text(face="bold", size = 20),
#         axis.title = element_text(size = 24), plot.title = element_text(size = 24, hjust = 0.5))
# dev.off()
# 
# ####################################
# # Fig 1, drug plot
# ###################################
# table1.drug.df <- table1.df[table1.df$CategoryF %in% c("Drug type"), ]
# 
# pdf("(Drugtype)EULAR-fig1_univariateLR_log_OR_pos_20211226_20220413.pdf", width = 10, height = 10)
# ggplot(data = table1.drug.df, aes(y = Risk_factorF)) +
#   theme_minimal() +
#   geom_point(aes(x = Odds_ratio, color = Pvalue, size = feature_importance) ) +
#   scale_colour_gradientn("P value",
#                          colours = c("firebrick1", "firebrick2", "skyblue2", "skyblue1", "grey"),
#                          # The 0.01 has to fall at the correct spot in the [0,1] interval
#                          values = c(0, rescale(0.05, from = range(table1.df$Pvalue, na.rm = TRUE)), 0.06, 0.5, 1),
#                          breaks = c(0.05, 0.25, 0.5, 0.75)
#   ) +
#   #scale_colour_gradient(low = "firebrick2", high = "grey", breaks = c(0, 0.05, 0.5, 0.75)) +
#   scale_size_binned("Feature Importance", breaks = c(0.1, 0.5, 1, 2, 3, 4), range = c(2.5, 15)) +
#   guides( colour = guide_colourbar(order = 1), size = guide_legend(order = 2) )+
#   geom_vline(xintercept = 0) +
#   geom_segment(aes(x=lower, xend=upper, yend=Risk_factorF)) +
#   labs(title = "Multivariate Logistic Regression models \n COVID-19 positive patients \n 12/26/2021 to 04/13/2022", x = "Log-adjusted Odds Ratio", y = "Risk Factors",face="bold",
#   ) +
#   facet_grid(CategoryF ~ factor(Outcomes, levels = c("Positive Test", "Hospitalization", "Death")) , 
#              scales = "free_y", space = "free_y") +
#   coord_cartesian(xlim = c(-7, 7)) +
#   theme(strip.text = element_text(face="bold", size = 13), axis.text = element_text(face="bold", size = 20),
#         axis.title = element_text(size = 24), plot.title = element_text(size = 24, hjust = 0.5))
# dev.off()
