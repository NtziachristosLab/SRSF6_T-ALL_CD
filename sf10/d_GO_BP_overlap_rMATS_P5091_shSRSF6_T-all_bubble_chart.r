## Gene ontology (biological process) bubble chart of overlapped rMATS transcripts in P5091, shSRSF6 and T-ALL . 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_overlap_rMATS_P5091_shSRSF6_T-all.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
