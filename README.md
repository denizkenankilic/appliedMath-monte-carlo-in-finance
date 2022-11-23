# monte-carlo-in-finance
This repository contains the topics about Monte Carlo methods in finance and insurance. Reducing variance via stratified and conditional sampling is interpreted in "**metu_iam757.pdf**".

* Latin hypercube sampling is an extension of stratification for sampling in multiple dimensions.
  * For each random variable, divide the range into 'n' non-overlapping intervals
  * Select a random value in each interval for each variable
  * Randomly select one value from each list and use in the MC calculation
  * Idea is to eliminate some of the variances between the strata by a specific way of multidimensional sampling
  * Several simulations of LHS and their correlation values: **latinHypercubeSampling.m**
  * Mean and standard deviation values of an LHS simulation: **latinHypercubeSampling.m**
