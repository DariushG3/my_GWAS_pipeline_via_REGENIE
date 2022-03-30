#!/bin/bash

  
regenie \
  --step 1 \
  --bed chr22.mwe.pruned \
  --phenoFile pheno2.txt \
  --bsize "1000" \
  --extract snps_pass_chr22.mwe.snplist \
  --out output/step1_fit_out22_without_PCs