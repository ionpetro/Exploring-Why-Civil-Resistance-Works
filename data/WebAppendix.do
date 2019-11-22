*******Online Appendix Replication File, Updated July 11, 2011 by Erica Chenoweth

******CHAPTER 1******

***Figure 1.4
tab2 nonviol outcome, chi2 row

***Figure 1.5
sum success if nonviol==1 & regchange == 1
sum success if nonviol==1 & regchange == 0 & other == 0
sum success if viol==1 & other == 1
sum success if viol==1 & regchange == 1
sum success if viol==1 & regchange == 0 & other == 0
sum success if viol==1 & other == 1

******CHAPTER 2******

***Table 2.2

***Figure 2.1
logit success mempc lnpop, robust nolog cluster(tccode)
***Table 2.3, Model 1A

***Figure 2.2
logit defect nonviol mempc ixnNVpc tgovcap tpolity, nolog robust
twoway (spike xb mempc, by(nonviol) sort) 

***Table 2.3, Model 2A

***Table 2.4, Model 3B

***Table 3.1, Model 1
logit success nonviol tpolity lmembers lnpop, robust nolog cluster(tccode)

***Figure 3.1

***Table 3.1, Model 2
logit success nonviol tgovcap lmembers lnpop, nolog robust cluster(tccode)

***Figure 3.2
tab2 loclcap1 nonviol, chi2 column

***Table 3.1, Model 3
logit success nonviol regviol lmembers lnpop, nolog robust cluster(tccode)
mfx

***Table 3.1, Model 4
logit success nonviol secession fselfdet regchange, robust nolog cluster (tccode)

***Table 3.2
tab2 outcome nonviol, chi2 column, if regchange==1

***Table 3.1, Model 5
logit success nonviol americas asia fsu europe middleeast, robust nolog cluster(tccode)

***Table 3.1, Model 6
logit success nonviol t1 t2 t3 t4 t5 t6 t7 t8 t9 t11, robust nolog cluster (tccode)

***Table 3.1, Model 7
logit success nonviol lmembers tpolity tgovcap regviol lnpop secession fselfdet regchange, robust nolog cluster (tccode)
test nonviol lmembers

***Table 3.1, Model 8
logit success nonviol lmembers tpolity tgovcap regviol lnpop secession fselfdet regchange americas asia middleeast fsu europe t1 t2 t3 t4 t5 t6 t7 t8 t9 t11 t11 , robust nolog cluster (tccode)
test nonviol lmembers

***Table WA.6. Determinants of Violent Resistance
probit viol secession violsim lgdppc lpolity1 lcinc1 wars lmtnest ef extfor , cluster(tccode)
sum prob_viol

***Table 3.3, Exogenous Model
probit success viol lnpop regviol, robust nolog cluster(tccode)

***Table 3.3, Endogenous Model 1
probit success prob_viol lnpop regviol, robust nolog cluster(tccode)
drop prob_viol

***Table 3.3, Endogenous Model 2
ivprob success, endog(viol) iv(secession violsim lgdppc lpolity1 lcinc1 wars lmtnest ef extfor ) exog( lnpop regviol)

***Table 3.3, Endogenous Model 3
ivprob success, endog(viol) iv(secession violsim ) exog( lnpop regviol)

******CHAPTER 8******

***Table 8.1, Model 1
reg polityt5 lpolity nonviol lduration, robust cluster(lccode)

***Table 8.1, Model 2

***Table 8.1, Model 3
logit demdum nonviol lpolity lduration, robust cluster(lccode), if success==0

***Table 8.2
logit recur10 nonviol polityt10 violsim lgovcap, robust cluster(lccode) nolog

******WEB APPENDIX*****

***Introduction

***Table WA1: Determinants of Missing Membership Value

***Appendix to Chapter 2

***Table WA2
logit defect nonviol mempc ixnNVpc tgovcap tpolity, nolog robust
mfx

***Additional Chapter 2 Tests Not Reported in Text or Web Appendix

***Table 2.4, Model 2B removing lmembers to increase observations
***Table 2.4, Model 3B controlling for Logged Population

***Appendix to Chapter 3

***Table WA.4: Random Effects Estimates 
***Model 1
xtlogit success lmembers lnpop, nolog i (eyear) , if nonviol==1
***Model 2
xtlogit success nonviol lnpop, nolog i (eyear)
***Model 3
xtlogit success nonviol, nolog i (eyear) 

***Table WA.5: Delta Variables
logit success nonviol lmembers deltatpolity deltatgdp deltatgovcap, nolog robust cluster(tccode)
test nonviol lmembers

***Table WA.6: Predictors of Violent Resistance
probit viol secession violsim lgdppc lpolity1 lcinc1 wars lmtnest ef extfor , cluster(tccode)
sum prob_viol

***Additional Chapter 3 Tests Not Reported in Text or Web Appendix

*** Assume that half of the violent campaigns (146) are really failed NV campaigns?
***Appendix to Chapter 8

***Table WA.7: Controlling for Determinants of Democracy, Accounting for Potential for Endogeneity
**Table WA.8: Effects of Resistance Type on Probability of Recurrent Civil War Onset over 1 and 5-Year Increments

***Additional Chapter 8 Tests Not Reported in Text or Web Appendix

**Effects of Nonviolent Resistance Type on Pr(Post-Conflict Democracy), Succesful Campaigns Only
