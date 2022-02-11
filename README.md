### Raw data - Variant Annotation/Detection
The variant calling pipeline identifies single nucleotide variants present within whole genome sequence data. The variants are identified by comparing the datasets of an individual with a reference sequence.
#### Steps followed
Quality Control,
Reference Mapping,
Variant Calling and
Variant Annotation

1. Quality Control: The first step of this variant calling pipeline involves the evaluation of the quality of raw sequencing data. Tools used here include; fastqc  and multiqc tools 

3. Trimming was then performed using trim_galore. Here, the reads with base calls that have poor quality are removed. Adapter sequences, which remain attached to the raw reads are also removed before the downstream analysis. In addition, very short reads with fewer than 20 bases are removed, to avoid multiple mapping to the reference genome.

3. Reference Mapping:The filtered sequence reads are aligned to the reference genome of Bundibugyo ebolavirus using BWA(Burrows-Wheeler Aligner) tool 0.7.10 
4. Variant Calling: We used freeBayes tool to call variants from the isolates of Bundibugyo ebolavirus. This tool uses short-read alignments (BAM files) for any number of individuals from a population and a reference genome to determine the most-likely combination of genotypes for the population at each position in the reference. It reports positions which it finds putatively polymorphic in variant call file (VCF) format.

5. Variant Annotation: SnpEff was the tool used to annotate the variants. This tool annotates and predicts the effects of variants on genes 

### References
1. https://github.com/s-andrews/FastQC
2. https://github.com/ewels/MultiQC. 
3. https://github.com/FelixKrueger/TrimGalore;
4. http://bio-bwa.sourceforge.net/
5. https://github.com/freebayes/freebayes/blob/master/README.md
6. https://github.com/sanger-pathogens/SnpEffWrapper 
