#!/usr/bin/env perl

use strict;
use warnings;

my $infile = 'file.txt';

open OUT, ">global_p_values.txt";
open FH, "<$infile";
while (<FH>) {
	if (/p-value = (0.\d+)/) {
		my $value = $1;
		print OUT "$value\n";
	}
}
	