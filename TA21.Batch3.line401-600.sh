#!/bin/bash
#SBATCH --job-name=ShaneBlast
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --partition=general
#SBATCH --mail-type=END
#SBATCH --mem=50G
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o /home/CAM/shussey/Endomicrobium/Shane.out10.txt
#SBATCH -e /home/CAM/shussey/Endomicrobium/Shane.err10.txt
Name1=TA21.Batch3.line401-600.out.txt
WorkingFolder=/home/CAM/shussey/Endomicrobium
Sample1=TA21.Batch3.line401-600.fasta
Database=/isg/shared/databases/blast/nr
module load blast/2.4.0
cd $WorkingFolder
blastp -db $Database -query $Sample1 -out $Name1 -evalue .001 -outfmt "6 qseqid stitle sblastnames staxids sscinames sskingdoms sseqid pident length mismatch gapopen qstart qend sstart send evalue btiscore" -num_alignments 30 