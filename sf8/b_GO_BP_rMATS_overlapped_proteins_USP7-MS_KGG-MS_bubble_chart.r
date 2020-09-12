## Gene ontology (biological process) bubble chart of overlapped proteins in USP7-MS and KGG-MS. 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_overlap_proteins_USP7-MS_KGG-MS.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
