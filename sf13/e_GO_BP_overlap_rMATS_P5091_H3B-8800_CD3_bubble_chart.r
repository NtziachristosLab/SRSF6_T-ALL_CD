## Gene ontology (biological process) bubble chart of overlapped rMATS in H3B-8800 (24hr), P5091 treated Jurkat and CD3 T-cells. 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_overlap_rMATS_P5091_H3B-8800_CD3.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
