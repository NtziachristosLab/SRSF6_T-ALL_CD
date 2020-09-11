## Gene ontology (Biological Process) bubble chart of overlapped rMATS events in Jurkat H3B8800, P5091 and T-ALL. 

# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "GO_BP_Overlap_rMATS_Jurkat_SI_P5091_T-ALL_FDR<0.05.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
