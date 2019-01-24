# BIOL432 Week 3 assignment, submitted by Zoe Clarke, Jan 24, 2019

# Load the rentrez library:
library(rentrez)

# Create a vector that includes the names of 3 different sequences of the 16S ribosome gene:
ncbi_ids <- c("HQ433692.1","HQ433694.1","HQ433691.1")

# Fetches the data of the ncbi_ids previously given from the nuccore database in fasta format:
Bburg <- entrez_fetch(db = "nuccore", id = ncbi_ids, rettype = "fasta")

# Take a look at the data:
Bburg

# Split the sequence up into 3 different vectors:
separate <- strsplit(Bburg, "\n\n")
separate

# Export data onto a csv file:
write.csv(separate, "Sequences.csv")
