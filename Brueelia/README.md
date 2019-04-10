## Code for cophylogenetic analysis of Brueelia-compelx lice and their hosts

Developed for the paper: `Sweet, A.D., S.E. Bush, D.R. Gustafsson, J.M. Allen, E. DiBlasi, H.R. Skeen, J.D. Weckstein, and K.P. Johnson. Host and parasite morphology influence congruence between host and parasite phylogenies. International Journal for Parasitology. 48: 641-648. https://doi.org/10.1016/j.ijpara.2018.01.007.`

<b>1. parafit_Brueelia.R</b>
<br>Basic ParaFit run between Brueelia-complex lice and their avian hosts

<br><b>2. parafit_loop_Brueelia.R</b></br>
Loop for running ParaFit on a distribution of host and parasite phylogenies (e.g., sampled from a Bayesian phylogenetic analysis)

<br><b>3. getvals.pl</b></br>
Perl script for selecting global p-values from output files of parafit_loop_Brueelia.R. The script copies the values to a separate file.

<br><b>4. Pval_adjusted.R</b></br>
Code for correcting the p-values from the ParaFitLink1 and ParaFitLink2 individual link test results

<br><b>5. brueelia_glm.R</b></br>
R script for selecting the best generalized linear model with an AICstep approach. The input file should be a table with the traits of interest for each host-parasite association (e.g., "host body mass") and the results from a cophylogenetic analysis (i.e., indication of whether a particular host-parasite association is significantly contributing to the overall phylogenetic congruence). 
