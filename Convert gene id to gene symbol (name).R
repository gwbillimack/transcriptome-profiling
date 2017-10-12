df$gene_id = gsub('\\..+$', '', df$gene_id)

genelist = df$gene_id
source("http://bioconductor.org/biocLite.R")
biocLite("mygene")
library(mygene)

gene_symbol = getGenes(gene.list, fields = 'symbol')

df$gene_symbol = gene_symbol$symbol[match(df$gene_id, gene_symbol$query)]

df = df[c(382,1:381)]