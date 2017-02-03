## BWA ##
#alignment of reads to reference genome

#WGS gDNA PE libraries AFar April 2013 sequenced on Illumina HiSeq2000 v.1.9 by Broad Institute (16 Anopheles genomes project)

module load bio

cd ~/FARAUTI/TERMINAL/aligned

#index reference file
bwa index </path/reference fasta file>.fa

#generate the fasta file index >> creates a file ref.fa.fai, with one record/line for each of the contigs in the ref.fa file
samtools faidx </path/reference fasta file>.fa

#generate intermediate .sai files by aligning paired reads to reference genome 
bwa aln -t 12 -q 5 -l 32 -k 3 -n 9 -o 1 </path/reference fasta file>.fa </path/filename>_1.paired.fq > <filename>_1.pe.aligned.sai
bwa aln -t 12 -q 5 -l 32 -k 3 -n 9 -o 1 </path/reference fasta file>.fa </path/filename>_2.paired.fq > <filename>_2.pe.aligned.sai

#generate .sam file 
bwa sampe </path/reference fasta file>.fa \
<filename>_1.pe.aligned.sai <filename>_2.pe.aligned.sai \
<filename>_1.paired.fq <filename>_2.paired.fq \
> <filename>.pe.aligned.sam

#END
