## KEGG_enrichment_bubble_chart_overlap_rMATS_T-cells_T-ALL. 

# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "KEGG_Enrichment_Overlap_rMATs_results_PanT_CD4_Thymus_vs_T-ALL_FDR<0.05.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
