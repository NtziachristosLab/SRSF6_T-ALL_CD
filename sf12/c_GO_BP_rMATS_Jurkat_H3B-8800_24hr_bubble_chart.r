## Gene ontology (biological process) bubble chart of rMATS transcripts in H3B-8800 (24hr) treated Jurkat. 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_rMATS_Jurkat_H3B-8800_24hr.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
