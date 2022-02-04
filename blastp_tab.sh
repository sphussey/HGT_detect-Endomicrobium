#!/bin/bash

# Specify name to be used to identify this run
#$ -N blastp_job

# Specify the output file
#$ -o $JOB_ID.out
# Specify the error file
#$ -e $JOB_ID.err


# input directory
INDIR="/home/sph15102/Endomicrobium"
# output directory
OUTDIR="/home/sph15102/Endomicrobium"
# Specify the name of the data file to be used
INPUTFILENAME="blast.test.txt"


# navigate to the working directory
cd $INDIR

# Run the program
blastp -query blast.test.txt -db nr -max_target_seqs 100 -outfmt "6 qseqid length sseqid stitle qstart qend sstart send evalue pident bitscore" -out text.blastp.txt
