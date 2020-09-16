## Scatter plot of alternative splicing changes between DMSO and H3B-8800 (24hr) treated Jurkat. 

# Load packages
>library(Biobase)
>library(ggplot2)

# Read data
>rmatsFile <- "Jurkat_DMSO_vs_H3B-8800_24hr_AS_scatter.txt"
>rmats <- read.table(rmatsFile, header=TRUE, sep="\t")

# Define scatter plot color
>rmats$Color <- factor(rmats$Color, levels=c("grey","black","red","blue","purple"))
>colr <- as.character(unique(rmats$Color))

# Generating scatter
>ggplot(rmats, aes(IncLevel1_Ave,IncLevel2_Ave)) \
+geom_point(aes(color=Color)) \
+ggtitle("Jurkat H3B-8800(24hr) AS Events") \
+ylim(0,1)+xlim(0,1) \
+xlab("Splicing Inclusion level (H3B-8800, 24hr)") \
+ylab("Splicing Inclusion level (vehicle, 24hr)") \
+theme_bw()+theme(panel.border=element_rect(size=1), \
+panel.grid.major=element_blank(), \
+panel.grid.minor=element_blank(), \
+axis.line=element_line(colour="black"), \
+legend.title=element_blank(), \
+legend.box.background=element_rect(size=1)) \
+scale_color_manual(labels=c(paste("Other splicing events"), paste("SE"),paste("RI"), paste("A3SS"), paste("MXE")), values=colr) \
+geom_abline(slope=1,intercept=0,linetype="dashed",color="black",size=.3)