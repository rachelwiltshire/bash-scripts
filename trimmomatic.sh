## Trimmomatic ##
#to remove Illumina sequence adapters and trim poor quality reads

#WGS gDNA PE libraries AFar April 2013 sequenced on Illumina HiSeq2000 v.1.9 by Broad Institute (16 Anopheles genomes project)

#!/bin/csh

#Define parameters
trimmomatic = '/opt/crc/bio/Trimmomatic'
illclip = 'ILLUMINACLIP:/afs/crc.nd.edu/user/r/rwiltshi/GROUP_SOLOMON/rwiltshi/AGam_chromosomes/TruSeq3-PE.fa:2:30:10'
lead = 'LEADING:5'
trail = 'TRAILING:5'
slide = 'SLIDINGWINDOW:4:15'
minlen = 'MINLEN:50'

cd ~/FARAUTI/SRA_downloads

trimmomatic PE -threads 8 -phred33 -trimlog SRX277192_Tanna2_run1-SRR849988 \
SRX277192_Tanna2_run1-SRR849988-_1.fastq SRX277192_Tanna2_run1-SRR849988-_2.fastq \
SRX277192_Tanna2_run1-SRR849988-_1.paired.fq SRX277192_Tanna2_run1-SRR849988-_1.unpaired.fq \
SRX277192_Tanna2_run1-SRR849988-_2.paired.fq SRX277192_Tanna2_run1-SRR849988-_2.unpaired.fq \
illclip lead trail slide minlen

#END
