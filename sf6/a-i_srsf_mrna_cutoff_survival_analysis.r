## Finding the cut off points for SRSF genes in T-ALL patients

# Load package
> library(survminer)

# Read data
> srsfFile <- "srsf_mRNA_rurvival_T-ALL_PECAN.txt"
> srsfSurv <- read.table(srsfFile, header=TRUE, sep="\t", row.names=1, as.is=TRUE)

# Searching the cutoff points for all the srsf genes. 
> res.cut <- surv_cutpoint(srsfSurv, time = "time", event = "event", variables = c("SRSF1", "SRSF2", "SRSF3", "SRSF4", "SRSF5", "SRSF6", "SRSF7", "SRSF9", "SRSF10", "SRSF11", "SRSF12"))
> summary(res.cut)

