#!/usr/bin/env python3

### This script converts a CSV files of host-parasite relationships, host tree file, and parasite
### tree file into a tanglegram-formatted file (input for Jane, TreeMap, etc.)

import sys
import re
import pandas as pd
import numpy as np
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--matrix","-m", help="Input association CSV matrix", required=True)
parser.add_argument("--host","-s", help="Input host tree", required=True)
parser.add_argument("--parasite","-p", help="Input parasite tree", required=True)
parser.add_argument("--output","-o", help="Output tanglegram file", required=True)
args = parser.parse_args()

matrix = pd.read_csv(args.matrix)
host_tree_f = open(args.host,'r')
host_tree = host_tree_f.read()
host_tree_trim1 = re.sub(r":\d\.\d+",r"",host_tree) # Remove branch lengths in host tree file
host_tree_trim = re.sub(r"\)\d+",r")", host_tree_trim1) # Remove branch support in host tree file
para_tree_f = open(args.parasite,'r')
para_tree = para_tree_f.read()
para_tree_trim1 = re.sub(r":\d\.\d+",r"",para_tree) # Remove branch lengths in parasite tree file
para_tree_trim = re.sub(r"\)\d+",r")", para_tree_trim1) # Remove branch support in parasite tree file
with open(args.output,"w") as out:
	out.write('#NEXUS' + '\n' + 'BEGIN HOST;' + '\n' + '\t' + 'TREE * Host1 = ' + host_tree_trim + 'ENDBLOCK;' + '\n' + 'BEGIN PARASITE;' + '\n' + '\t' + 'TREE * Para1 = ' + para_tree_trim + 'ENDBLOCK;' + '\n') # Write trees to outfile
	out.write('BEGIN DISTRIBUTION;' + '\n' + '\t' + 'RANGE' + '\n')
	for (index, row) in matrix[0:len(matrix.index)].iterrows():
		for i in range(len(matrix.columns)):
			if row[i] == 1:
				h_val = row.name
				louse = row.index[i]
				host = matrix.iloc[h_val,0]
				out.write('\t' + '\t' + louse + ':' + host + ',' + '\n') # Write associations to outfile
	out.write('\t' + ';' + '\n' + 'END;') # Write end of file to outfile
