## CODE TO ADJUST P-VALUES OF INDIVIDUAL LINK TESTS FROM A MATRIX OF SEVERAL PARAFIT RUNS 

pvals <- read.table("Brueelia_p_vals.txt") ## THE INPUT SHOULD BE A MATRIX WHERE EACH COLUMN CONTAINS THE P-VALUES FROM THE INDIVIDUAL LINK TESTS OF A SINGLE PARAFIT RUN
adj=NULL
tab=NULL
for (i in 1:100) {	## THIS SHOULD REFLECT THE NUMBER OF PARAFIT RUNS; E.G. 1:100 MEANS 100 PARAFIT RUNS
  adj[[i]] <- as.matrix(p.adjust(pvals[,i], method='BH'))
  tab[[i]] <- cbind(adj[[i]])
}
write.table(tab, file='BH_adjusted.csv', append=F, sep=',', row.names=F, col.names=F)
