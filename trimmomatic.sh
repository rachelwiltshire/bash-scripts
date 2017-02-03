## TRIMMOMATIC ##
#removes Illumina adapters and trims poor quality reads

#WGS gDNA PE libraries AFar April 2013 sequenced on Illumina HiSeq2000 v.1.9 by Broad Institute (16 Anopheles genomes project)

module load bio

cd ~/FARAUTI/SRA_downloads
gunzip <filename>_*.fastq.gz

cd ~/FARAUTI/TERMINAL/trimmed
trimmomatic PE -threads 8 -phred33 -trimlog <filename> \
<filename>_1.fastq <filename>_2.fastq \
<filename>_1.paired.fq <filename>_1.unpaired.fq \
<filename>_2.paired.fq <filename>_2.unpaired.fq \
ILLUMINACLIP:/afs/crc.nd.edu/user/r/rwiltshi/GROUP_SOLOMON/rwiltshi/AGam_chromosomes/TruSeq3-PE.fa:2:30:10 LEADING:5 TRAILING:5 SLIDINGWINDOW:4:15 MINLEN:50

cd ~/FARAUTI/SRA_downloads
gzip <filename>_*.fastq

#END
