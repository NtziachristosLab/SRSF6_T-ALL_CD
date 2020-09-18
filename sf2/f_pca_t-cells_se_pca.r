## PCA analysis of skipped excon events for diffferent T-cells. 

# Load packages
>library(ggplot2)

# Read data
>seFile <- "T-cells_SE_PCA.txt"
>sepca <- as.matrix(read.table(seFile, header=TRUE, sep="\t", as.is=TRUE))

# PCA analysis
>pca <- prcomp(t(sepca), scale = TRUE)
>pca.var <- pca$sdev^2
>pca.var.per <- round(pca.var/sum(pca.var)*100,1)

# Generate PCA plot
pca.data <- data.frame(Samples = rownames(pca$x), 
+ X=pca$x[,1],
+ Y=pca$x[,2])

ggplot(data=pca.data, aes(x=X, y=Y, label=Sample))+
+  geom_text() +
+  xlab(paste("PC1 - ", pca.var.per[1], "%", sep=""))+
+  ylab(paste("PC2 - ", pca.var.per[2], "%", sep=""))+
+  theme_bw() + 
+  ggtitle("T-cells SE PCA analysis")

