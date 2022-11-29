###########################################
#read in auroc performance file
#################################################
#expression data
data <- read.table("./AUROC_independent_test_results.csv"
                                       , sep=",",
                        header=T, stringsAsFactors=FALSE,
                        quote="",
                        comment.char="#")

colnames(data)
colnames(data) <- c("Time_Interval", "Method", "Outcome", "AUROC") 

#load package
library(reshape2)
library(ggplot2)

#################################
## Change to three decimal places
data[,'AUROC'] = round(data[,'AUROC'],2)

## factorize the Outcome column
data$Outcome = factor(data$Outcome, levels=c('Outcome 1','Outcome 2','Outcome 3'))

# Bar plot
pdf("Supplementary_figure1.pdf",width = 16, height = 14)
ggplot(data, aes(x=Method, y=AUROC, fill=Method)) + 
  geom_bar(stat="identity", position=position_dodge(), width = 0.6) +
  ylim(0.0, 1.0) +
  # title = "AUROC on 10% test set", 
  labs(x = "Time Interval", y = "Auroc") +
  theme(axis.text = element_text(size = 40), axis.title=element_text(size=50,face="bold"), strip.text.x = element_text(size = 45,face="bold"),
        text = element_text(size =40), panel.background = element_rect(fill = "white", colour = "grey50"),
        axis.title.x = element_blank(), legend.text=element_text(size=50), title =element_text(size=60, face='bold'))+
  geom_text(aes(label=AUROC), vjust = -0.2, color="black",
            position = position_dodge(0.9), size = 16) +
  facet_grid(Time_Interval~Outcome, scales="free", space="free_x")
dev.off()


####################################
#clean
#######################
#rm(list=ls(all=TRUE))

