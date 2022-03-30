#!/bin/bash

#/scratch/ekoenig/CHRIS_CORRECTED/10K/Imputed/TOPMedR2/20210409/plinkFormat/chr22.fam
#eGFRw.log.Res
#
#  

bsize=1000
aaf-bins1=0.1
aaf-bins2=0.5

#  --aaf-bins ${aaf-bins1}, ${aaf-bins2} \
#  --covarFile pheno1.txt \ 
#  --remove \
#  --covarColList PC1,PC2,PC3,PC4,PC5,PC6,PC7,PC8,PC9,PC10 \
#output/fit_out22_pred.list \

regenie \
  --step 2 \
  --bed chr22.mwe.pruned \
  --phenoFile pheno2.txt \
  --phenoColList eGFRw.log.Res \
  --pred output/step1_fit_out22_without_PCs_pred.list \
  --minMAC 1 \
  --bsize "${bsize}" \
  --out output/step2_test_out22_without_PCs_firth \
  --gz
  
