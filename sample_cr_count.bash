#!/bin/sh
#SBATCH --job-name=onescript
#SBATCH --nodes=2
#SBATCH --ntasks=48
#SBATCH --time=02:00:00
#SBATCH --error=ERROR.err
#SBATCH --mail-type=END
#SBATCH --mail-user=adugar1@jhu.edu
cellranger-7.0.0/cellranger count --id=run_count --fastqs=scRNA/sampleCRPC2_L_MissingLibrary_1_HH5J5DMXX --transcriptome=hg38
