#!/usr/bin/env perl

############################################################################
# This script selects the global p-values from the output files of a 		
# looped ParaFit run, and copies them to a file called "global_p_values.txt
# 
# Andrew D. Sweet
############################################################################



use strict;
use warnings;

system "ls -l *.txt >files.txt";
my $infile = 'files.txt';

open OUT, ">global_p_values.txt";
open FH, "<$infile";
while (<FH>) {
	if (/p-value = (0.\d+)/) {
		my $value = $1;
		print OUT "$value\n";
	}
}
	
