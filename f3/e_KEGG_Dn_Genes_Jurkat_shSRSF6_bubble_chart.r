## KEGG enrichment bubble chart of down regulated genes in Jurkat shSRSF6. 

# Load packages
>library(Biobase)
>library(pathfindR)

# Read data
>exprsFile <- "Bubble_Chart_KEGG_Dn_Genes_Jurkat_shSRSF6.txt"
>RA_output <- read.table(exprsFile, header=TRUE, sep="\t", stringsAsFactors = FALSE)
>RA_output$Down_regulated <- as.character(RA_output$Down_regulated)

# Generate bubble chart
>enrichment_chart(RA_output,plot_by_cluster = FALSE)
