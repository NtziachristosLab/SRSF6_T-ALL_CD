## Scatter plot of alternative splicing changes between CD3 T-cells and T-ALL (PSI>0.2).  

# Load packages
>library(Biobase)
>library(ggplot2)

# Read data
>rmatsFile <- "CD3_vs_T-ALL_AS_scatter_PSI>0.2.txt"
>rmats <- read.table(rmatsFile, header=TRUE, sep="\t")

# Define scatter plot color
>rmats$Color <- factor(rmats$Color, levels=c("grey","black","red"))
>colr <- as.character(unique(rmats$Color))

# Generating scatter
>ggplot(rmats, aes(IncLevel1_Ave,IncLevel2_Ave)) \
+geom_point(aes(color=Color)) \
+ggtitle("CUTLL1 H3B-8800(6hr) AS Events") \
+ylim(0,1)+xlim(0,1) \
+xlab("Splicing Inclusion level (CD3+ T cells)") \
+ylab("Splicing Inclusion level (T-ALL)") \
+theme_bw()+theme(panel.border=element_rect(size=1), \
+panel.grid.major=element_blank(), \
+panel.grid.minor=element_blank(), \
+axis.line=element_line(colour="black"), \
+legend.title=element_blank(), \
+legend.box.background=element_rect(size=1)) \
+scale_color_manual(labels=c(paste("Other splicing events"), paste("SE"),paste("RI")), values=colr) \
+geom_abline(slope=1,intercept=0,linetype="dashed",color="black",size=.3)