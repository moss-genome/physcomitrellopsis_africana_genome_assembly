### Physcomitrellopsis africana Genome Assembly
Moss Genome Assembly Spreadsheet: https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit?usp=sharing

# 1. Nanopore Sequencing.

Physcomitrellopsis africana tissue sequenced using Nanopore PromethION technology.
     Raw sequencing run data located at:

       /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-fast5_pass/

Basecalled sequencing reads located at:

       /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/

# 2. Genome Assembly.

## Flye Assembly
Draft genome assembly created using Flye genome assembly program.
     
**flye_assembly_moss_30JAN19_5074.sh** script runs Flye assembly program with basecalled sequencing reads as input.

Path to Initial Flye Assembly:

       /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/assembly.fasta

## Flye Assembly with Clean Input Reads
Draft genome assembly created using Flye genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **flye_assembly_rmv_contam_moss_30JAN19_5074.sh** runs Flye genome assembly program with clean input reads.
     
Path to Initial Flye Assembly with Clean Input Reads:
     
       /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta

# 3. Nanopolish to Improve Genome Assembly

## Flye Assembly
   1. Basecalled fastq reads are linked to signal-level nanopore raw fast5 data using nanopolish index.
      1. **nanopolish_index_physcomitrellopsis_africana.sh** indexes the basecalled reads.
   1. Basecalled reads are aligned to the initial flye assembly using minimap2, and the bam alignment file is sorted and indexed using samtools.
      1. **minmap_alignment_physcomitrellopsis_africana.sh** script performs minimap2 alignment of reads to assembly and samtools processing of bam alignment file.
   1. Polished genome assembly is created with nanopolish.
      1. **nanopolish_physcomitrellopsis_africana.sh** generates polished assembly contigs in 50kb parts in vcf format (output and temp directories need to be created before running script).
   1. Final polished genome assembly is generated by compiling all polished contig files using nanopolish vcf2fasta
      1. **nanopolish_vcf_to_fasta.sh** script converts polished contig files into a polished genome assembly

## Flye Assembly (Rmv Contam Input)
   1. Basecalled fastq reads are linked to signal-level nanopore raw fast5 data using nanopolish index.
      1. **nanopolish_index_pafricana_flye_rmv_contam.sh** indexes the basecalled reads.
   1. Basecalled reads are aligned to the initial flye assembly using minimap2, and the bam alignment file is sorted and indexed using samtools.
      1. **minmap2_alignment_pafricana_flye_rmv_contam.sh** script performs minimap2 alignment of reads to assembly and samtools processing of bam alignment file.
   1. Polished genome assembly is created with nanopolish.
      1. **divide_genome_assembly.py** divides the genome assembly into six partial assemblies, each partial assembly is named **pafricana_flye_assembly_rmv_contam_{DIGITS_1-9}_contigs.fasta**.
      1. Each partial assembly has a nanopolish script with individual output and temporary directories. The input assembly file, output directory, and temporary directory are the only parameters that need to be changed when calling nanopolish in the script. The scripts are named according to the name of the partial assembly i.e **nanopolish_pafricana_flye_rmv_contam_{DIGITS_1-9}_contigs.sh**.
   1. Final polished genome assembly is generated by compiling all polished contig files using nanopolish vcf2fasta
      1. **nanopolish_vcf_to_fasta_flye_rmv_input_contam.sh** script converts polished contig files into a polished genome assembly

# 4. Polished Genome Assembly Refinement
## Initial Flye Assembly
   1. Contigs less than 3kb in length were removed from the assembly using awk command detailed in **awk_remove_3kb_contigs**
   1. The genome assembly was analyzed with centrifuge using a human, archaea, bacteria, and viral genomic index to determine contaminant contigs in the assembly. Afterwards the contaminant contigs were removed from the assembly using a biopython script.
      1. **centrifuge_pafricana.sh** runs centrifuge on the genome assembly with min-hit-len 50
      1. **remove_contaminated_reads_pafricana.py** removes contaminant contigs from the genome assembly based on contig ids from the centrifuge classification report.
   1. Purge haplotigs was run on the genome assembly to identify syntenic contigs.
      1. **minmap_alignment_physcomitrellopsis_africana_polished_3kb_rmvcontam.sh** aligns the most recent polished assembly to the basecalled reads.
      1. **pafricana_purgehap.sh** runs purge haplotigs on the polished assembly in three steps.

Path to Final Initial Flye Polished Genome Assembly:

    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_3kb_rmvcontam_purgehap_assembly.fasta

## Flye Assembly (Rmv Contam Input)
   1. Purge Haplotigs was run on the polished rmv contam genome assembly to identify and remove syntenic contigs.
     1. **minmap_alignment_polished_pafricana_flye_assembly_rmv_contam_input.sh** aligns the polished rmv input contam flye assembly to the basecalled reads.
     1. **pafricana_purgehap_rmv_input_contam.sh** runs purge haplotigs on the polished rmv input contam flye assembly.
   1. Purge-dups was run on the post-purgehap polished rmv input contam flye assembly to further reduce the duplication of the assembly.
     1. **run_purge_dups.sh** runs purge-dups with information from **config_pafricana_flye_assembly_rmv_input_contam_post_purgehap.json**. **pb.fofn** contains the path to the long-read input data. 

Path to Final Rmv Input Contam Flye Polished Genome Assembly:

    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_dups/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid_55/seqs/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.purged.fa


