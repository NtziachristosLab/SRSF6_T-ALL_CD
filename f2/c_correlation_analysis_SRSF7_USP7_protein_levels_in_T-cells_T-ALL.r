## Correlation analysis of USP7 and SRSF6 protein levels in T-cells and T-ALL patient samples. 
# Load packages
>library(Biobase)
>library(ggpubr)

# Read data
>exprsFile <- "USP7_SRSF6_protein_level_WB.txt"
>my_data<- read.table(exprsFile, header=TRUE, sep="\t")
>

# Generate scatter plot of normal T-cells
>ggscatter(my_data, x = "SRSF6_T-cell", y = "USP7_T-cell", add = "reg.line", conf.int = TRUE,
cor.coef = TRUE, cor.method = "pearson", xlab = "SRSF6 protein levels in T cells",
ylab = " USP7 protein levels in T cells")

# Generate scatter plot of T-ALL patient samples
>ggscatter(my_data, x = "SRSF6_T-ALL", y = "USP7_T-ALL", add = "reg.line", conf.int = TRUE,
cor.coef = TRUE, cor.method = "pearson", xlab = "SRSF6 protein levels in T-ALL",
ylab = " USP7 protein levels in T-ALL")
