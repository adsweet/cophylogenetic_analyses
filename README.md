# Cophylogenetic analysis
Code for cophylogenetic analyses from various projects and publications

## Scripts
### make_tangle.py
Python script for converting a CSV file of host-parasite associations (0/1), host phylogeny, and parasite phylogeny into a tanglegram-formatted Nexus file (for input into Jane, TreeMap, etc.)
Tree files need to be in Newick format.

```
Usage: python3 make_tangle.py -m <CSV file> -s <host tree file> -p <parasite tree file> -o <output file>
```
#### Arguments
- `-h, --help`
  - Lists arguments
- `-m, --matrix CSV_FILE`
  - Input matrix of host-parasit associations in CSV format. Host names should be row names and parasite names should be column names, and both need to match names in the respective tree files. Associations should be indicated with 0s and 1s, with 1 indicating an association.
- `-s, --host HOST_TREE`
  - Host phylogeny in Newick format.
- `-p, --parasite PARASITE_TREE`
  - Parasite phylogeny in Newick format.
- `-o, --output OUTFILE`
  - Output file. 

## Projects
### Brueelia
Scripts associated with: `Sweet A.D., S.E. Bush, D.R. Gustafsson, J.M. Allen, E. DiBlasi, H.R. Skeen, J.D. Weckstein, and K.P. Johnson. 2018. Host and parasite morphology influence congruence between host and parasite phylogenies. International Journal for Parasitology. 48: 641-648.` 
