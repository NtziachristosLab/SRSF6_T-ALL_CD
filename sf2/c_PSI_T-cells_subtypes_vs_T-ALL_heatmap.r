## Heatmap of differential exon inclusion in T-cell subtypes compared to T-ALL. 

# Load packages
>library(Biobase)
>library(ggplot2)

# Read data
>exprsFile <- "Overlaped_SE_Events_T-Cells_vs_T-ALL_heatmap.txt"
>exprs <- as.matrix(read.table(exprsFile, header=TRUE, sep="\t", row.names=1, as.is=TRUE))

# Define heatmap color
>hmcol <- colorRampPalette(c("green","black","red"))(256)

# Generating heatmap
>heatmap(exprs, col=hmcol, Rowv=NA, Colv=NA, cexRow=0.5, cexCol=0.8)