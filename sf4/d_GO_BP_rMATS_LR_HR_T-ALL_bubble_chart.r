## Gene ontology (biological process) bubble chart of rMATS events in non-HR and HR T-ALL. 
# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_rMATS_LR_HR_T-ALL.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
