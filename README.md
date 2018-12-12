# Bayesian-DM-code-examples
BDM Code examples from Win/OpenBUGS, Nimble, CARBayes and INLA
This repository is intended as an open source for code examples from a range of packages that fit hierarchical Bayesian models to small area health data. The examples represent a range of applications: spatial; Spatio-temporal; multivariate, multi-scale. Also they represnt a range of packages:  MCMC -based packages such as Win/OpenBUGS, CARBayes, Nimble; and LAplace approximation via INLA.

Win/OpenBUGS:

Georgia_multiscale_WBugs.txt;
Georgia_MVCAR_WBugs.txt;
map_modelWB_pred.txt;
R2WB_runfile_pred.txt;
Ohio_resp_cancer_ST_Knorr_Held_model_WBugs.txt;
Georgia_oral_cancer 2004_Convolution_Wbugs.txt

CARBayes:

carbayes_lipcancer_SCcongen90.txt;
SCcongen90_CARBayesRcode

Nimble:

SC_congen_90_CONV_Nimble.txt;
SC_congen90_lognormal_Nimble.txt;
Gamma_Poisson_toy_data_Nimble.txt;
STinT_models_Ohio_Nimble.txt;
Georgia_MultiScale_CONV_Nimble.txt;

There is now two files that can be compared whihc inplement the BYM2 model (Reibler et al (2016) 
and the BYM model for the same data:
BYM2_SC_scaling.txt
BYM_ordinary_SC_NOscaling.txt

The multivariate M-models implemented on Nimble are here:
M-model_3diseases_Nimble_version_v2.txt

INLA:

SCcongen_INLA_models.txt;
SCcongen_INLA_models_plusBYM.txt;
FMD_INLA_ST_Rcode.txt;
OHIO_STmapping_INLA_RcodeFAL
