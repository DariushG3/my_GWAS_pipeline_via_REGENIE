#!/bin/bash

#/scratch/ekoenig/CHRIS_CORRECTED/10K/Imputed/TOPMedR2/20210409/plinkFormat/chr*

Genotype=/shared/statgen/CHRIS10K/plinkFormat
Output=~/projects/gwas/Regenie/genoQCed


plink2 \
	--bfile ${Genotype}/CHRIS10K.WES.imputed.rsq03 \
	--mac 10 \
	--write-snplist 'allow-dups' \
	--out ${Output}/snps_pass_wes.mwe  \
##  --set-all-var-ids --rm-dup
##  --indep-pairwise 100 10 0.01  \


plink2 \
	--bfile ${Genotype}/CHRIS10K.WES.imputed.rsq03 \
	--extract ${Output}/snps_pass_wes.mwe.snplist \
	--make-bed \
	--out ${Output}/snps_pass_wes.mwe.pruned