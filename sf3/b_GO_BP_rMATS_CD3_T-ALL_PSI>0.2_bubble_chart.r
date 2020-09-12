## Gene ontology (biological process) bubble chart of rMATS events in CD3 T-cells vs T-ALL, PSI > 0.2. 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_rMATS_CD3_T-ALL_PSI>0.2.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
