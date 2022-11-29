#rm(list=ls())

###############################################################################################################################################
## For figure 1 in poster
## 
###############################################################################################################################################
## Read all outcomes results files
hos_result_time1.df <- read.csv(file = 'XGB_HOS_time1_importance.csv')
imv_result_time1.df <- read.csv(file = 'XGB_IMV_time1_importance.csv')
death_result_time1.df <- read.csv(file = 'XGB_Death_time1_importance.csv')

hos_result_time2.df <- read.csv(file = 'XGB_HOS_time2_importance.csv')
imv_result_time2.df <- read.csv(file = 'XGB_IMV_time2_importance.csv')
death_result_time2.df <- read.csv(file = 'XGB_Death_time2_importance.csv')

## Create an empty table with desired col & row names
table1.df <- data.frame(matrix(ncol = 5, nrow = nrow(hos_result_time1.df)*6))

table1_col_name <- c("Risk_factor", "Category", "Outcomes", "time_interval", "feature_importance")
colnames(table1.df) <- table1_col_name
table1.df$Risk_factor <- c(
                            rep(hos_result_time1.df$Feature.name, 6)
                                )

cat_names <- c("Demographic", "Demographic",
               #"Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding", "Geocoding",
               
               "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", 
               "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities", "Comorbidities",
               
               "Vaccination", "Vaccination",
               
               #"Covid-19 treatment",
               
               "IMID type", "IMID type", "IMID type", "IMID type","IMID type", "IMID type", "IMID type","IMID type","IMID type", "IMID type", "IMID type", "IMID type",
               
               "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type", 
               "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type",
               "Drug type", "Drug type","Drug type", "Drug type","Drug type", "Drug type","Drug type", 
               "Drug type", "Drug type","Drug type", "Drug type","Drug type",
              )
table1.df$Category <- c(
                        rep(cat_names, 6)
                        )

table1.df$Outcomes <- c(
                        rep("Hos+IMV+Death", nrow(hos_result_time1.df)), rep("IMV+Death", nrow(imv_result_time1.df)), rep("Death", nrow(death_result_time1.df)),
                        rep("Hos+IMV+Death", nrow(hos_result_time2.df)), rep("IMV+Death", nrow(imv_result_time2.df)), rep("Death", nrow(death_result_time2.df))
                        )

table1.df$time_interval <- c(
                              rep("Time interval 1", nrow(hos_result_time1.df)*3), rep("Time interval 2", nrow(death_result_time1.df)*3)
)

table1.df$group[table1.df$Outcomes == "Hos+IMV+Death" & table1.df$time_interval == "Time interval 1"] <- "Hos+IMV+Death - pre-Omicron"
table1.df$group[table1.df$Outcomes == "IMV+Death" & table1.df$time_interval == "Time interval 1"] <- "IMV+Death - pre-Omicron"
table1.df$group[table1.df$Outcomes == "Death" & table1.df$time_interval == "Time interval 1"] <- "Death - pre-Omicron"

table1.df$group[table1.df$Outcomes == "Hos+IMV+Death" & table1.df$time_interval == "Time interval 2"] <- "Hos+IMV+Death - Omicron predominant"
table1.df$group[table1.df$Outcomes == "IMV+Death" & table1.df$time_interval == "Time interval 2"] <- "IMV+Death - Omicron predominant"
table1.df$group[table1.df$Outcomes == "Death" & table1.df$time_interval == "Time interval 2"] <- "Death - Omicron predominant"


## Print to check the column names
# colnames(hos_result.df)

table1.df$feature_importance <- c(hos_result_time1.df$Feature.Importance, imv_result_time1.df$Feature.Importance,  death_result_time1.df$Feature.Importance, hos_result_time2.df$Feature.Importance, imv_result_time2.df$Feature.Importance, death_result_time2.df$Feature.Importance
)

## Change the order if needed
risk_factor_order <- c(table1.df$Risk_factor[1:nrow(hos_result_time1.df)])
table1.df$Risk_factorF <- factor(table1.df$Risk_factor, levels =rev(risk_factor_order))

# , "Covid-19 treatment"
table1.df$CategoryF <- factor(table1.df$Category, levels = c("Demographic", "Comorbidities","Vaccination", "IMID type", "Drug type"))


#str(table1.df)
table1.df$feature_importance <- as.numeric(table1.df$feature_importance)
str(table1.df)

#install.packages("ggplot2")
#install.packages("scales")

library(ggplot2)
library(scales)

###############################################################
# Check feature importance ratio to decide range of point size
###############################################################

## Check the min and max of the feature importance column, to decide the best range of the print out size
print("The minimum feature importance is now: ")
min(table1.df$feature_importance)

print("The maximum feature importance is now: ")
max(table1.df$feature_importance)

# print("Ratio between min & max feature importance")
# max(table1.df$feature_importance) / min(table1.df$feature_importance)

## separate bars: , position=position_dodge()

pdf("supp_figure2.pdf", width = 15, height = 24)
ggplot(data = table1.df, aes(x = Risk_factorF, y = feature_importance, fill = group)) +
  geom_bar(stat="identity") +
  theme(strip.text = element_text(face="bold", size = 13), axis.text = element_text(face="bold", size = 20),
      axis.title = element_text(size = 24), plot.title = element_text(size = 24, hjust = 0.5),
      legend.title = element_text(size = 24), legend.text = element_text(size = 20)) +
  coord_flip()
dev.off()