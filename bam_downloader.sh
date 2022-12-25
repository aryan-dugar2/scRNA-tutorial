#!/bin/bash
#SBATCH --job-name=wgetfastq
#SBATCH --nodes=20
#SBATCH --ntasks=48
#SBATCH --time=02:00:00
#SBATCH --error=ERROR.err
#SBATCH --mail-type=END
#SBATCH --mail-user=adugar1@jhu.edu
while read -r line; do
    if [[ $line == *"bam"* ]]; then
	srun --nodes=2 --ntasks=1 --exclusive wget $line -P \fastqdata & 
    fi
done < links.txt

wait
