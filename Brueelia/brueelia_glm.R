## R script for selecting the best generalized linear model with the AICstep procedure.
## This script was initially used for analyzing the traits and cophylogenetic analysis
## results of Brueelia-complex lice and their hosts, but can be applied to other systems.

library(MASS)

traits <- read.table('traits.txt', header=T) # Read in table with trait data

model.null <- glm(SignificantBH ~ 1, data=traits, family=binomial(link="logit"))
model.full <- glm(SignificantBH ~ Biogeographic_locality + Ecomorph + Sexually_dimorphic + Color_pattern + as.numeric(body_mass_ln), data = traits, family = binomial(link="logit"))

stepAIC(model.null,
     scope = list(upper=model.full),
     direction="both",
     test="Chisq",
     data=traits)
model.final <- glm(SignificantBH ~ Ecomorph + Sexually_dimorphic + -1, data = traits, family = binomial(link="logit"), na.action(na.omit))
summary(model.final)
exp(cbind(OR = coef(model.final), confint(model.final)))
