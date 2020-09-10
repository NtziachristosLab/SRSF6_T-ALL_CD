## Heatmap of gene expression changes between thymus and T-ALL from GSE33469. 

# Load packages
>library(Biobase)
>library(ggplot2)

# Read data
>exprsFile <- "GSE33469_T-ALL_vs_Thymus_normalized.txt"
>exprs <- as.matrix(read.table(exprsFile, header=TRUE, sep="\t", row.names=1, as.is=TRUE))

# Define heatmap color
>hmcol <- colorRampPalette(c("blue","white","red"))(256)

# Generating heatmap
>heatmap(exprs, col=hmcol, Rowv=NA, Colv=NA, cexRow=0.5, cexCol=0.8)