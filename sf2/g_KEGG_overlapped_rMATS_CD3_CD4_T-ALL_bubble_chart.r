## KEGG bubble chart of overlapped rMATS events in CD3 T-cells vs T-ALL, and CD4 T-cells vs T-ALL. 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "KEGG_Overlap_rMATS_CD3_CD4_vs_thymus.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
