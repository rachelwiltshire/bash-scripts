# shell-scripts
bash scripts used in the analysis of Illumina sequence data:

**1) trimmomatic.sh**

- removes Illumina sequencing and other adapters and trims poor quality reads

**2) bwa.sh**

- aligns reads to reference genome and generates the .sam file required for variant calling

## Understanding variant information in a .vcf

- **col9 FORMAT > GT:AD:GQ:PL**

  **GT: genotype** [0 (REF), 1 (ALT), 2 (2nd ALT etc.), | (phased), / (unphased)]
  
  **AD: allelic depth** [# reads w/REF vs. ALT base]
  
  **GQ: genotype quality** [phred score]
  
  **PL: phred-scaled genotype likelihood** [1st = p(site is homozygous-REF), 2nd = p(site is heterozygous), 3rd = p(site is homozygous-ALT)]
