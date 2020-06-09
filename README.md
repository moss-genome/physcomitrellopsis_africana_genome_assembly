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

**P. africana Initial Flye Assembly**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/assembly.fasta

      Genome Size: 540816378
      # of Contigs: 9796
      N50: 151896
      BUSCO:
          Viridiplantae: C:56.1%[S:48.4%,D:7.7%],F:14.4%,M:29.5%,n:430
          Embryophyta: C:37.3%[S:35.4%,D:1.9%],F:15.8%,M:46.9%,n:1375

**P. africana Flye Assembly (< 3Kb scaffolds filtered)**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/filter_assembly_contam_3kb/pafricana_3kb.fasta

      Genome Size: 446578038
      # of Contigs: 7731
      N50: 130342
      BUSCO:
          Viridiplantae: C:52.6%[S:47.7%,D:4.9%],F:17.9%,M:29.5%,n:430
          Embryophyta: C:37.5%[S:36.1%,D:1.4%],F:16.7%,M:45.8%,n:1375

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (Rmv Contam Input)
Draft genome assembly created using Flye genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **flye_assembly_rmv_contam_moss_30JAN19_5074.sh** runs Flye genome assembly program with clean input reads.
     
**P. africana Flye Assembly (rmv contam input reads)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta

      Genome Size: 547438596
      # of Contigs: 5754
      N50: 388035
      BUSCO:
          Viridiplantae: C:74.9%[S:70.0%,D:4.9%],F:8.1%,M:17.0%,n:430
          Embryophyta: C:57.9%[S:54.3%,D:3.6%],F:11.3%,M:30.8%,n:1375
          
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Shasta Assembly
**Note:** Shasta Assembly was not selected for further refinement 

Draft genome assembly created using Shasta genome assembly program.
   1. **FastqToFasta.py** converts input reads from fastq format to fasta format
   1. **run_shasta_assembly_minlen_500.sh** runs Shasta genome assembly program with minimum accepted input read length of 500 base pairs
     
**P. africana Shasta Assembly (minlen 500)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/2ShastaRun/Assembly.fasta

      Genome Size: 223004245
      # of Contigs: 8945
      N50: 51351
      BUSCO:
          Viridiplantae: C:38.2%[S:36.3%,D:1.9%],F:19.1%,M:42.7%,n:430
          Embryophyta: C:31.3%[S:30.1%,D:1.2%],F:12.8%,M:55.9%,n:1375
          
**P. africana Shasta Assembly (minlen 500 & <3kb filtered)**

    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/2ShastaRun/pafricana_shasta_assembly_3kb_minlen_500.fasta

      Genome Size: 220227121
      # of Contigs: 7135
      N50: 52035
      BUSCO:
          Viridiplantae: C:38.2%[S:36.3%,D:1.9%],F:18.8%,M:43.0%,n:430
          Embryophyta: C:31.3%[S:30.1%,D:1.2%],F:12.8%,M:55.9%,n:1375
  
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Shasta Assembly (rmv contam input)
**Note:** Shasta Assembly (rmv contam input) was not selected for further refinement

Draft genome assembly created using Shasta genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **FastqToFasta.py** converts clean input reads from fastq format to fasta format
   1. **run_shasta_assembly_minlen_500_rmv_contam_input.sh** runs Shasta genome assembly program with clean input reads and minimum accepted input read length of 500 base pairs
     
**P. africana Shasta Assembly (minlen 500 & rmv contamination input reads)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/ShastaRun_pafricana_rmv_contam_minreadlen_500/Assembly.fasta

      Genome Size: 211680036
      # of Contigs: 8515
      N50: 48947
      BUSCO:
          Viridiplantae: C:40.2%[S:38.6%,D:1.6%],F:20.0%,M:39.8%,n:430
          Embryophyta: C:29.8%[S:28.7%,D:1.1%],F:14.7%,M:55.5%,n:1375
          
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

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

**P. africana Polished Flye Assembly**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_assembly.fa

      Genome Size: 534238232
      # of Contigs: 9791
      N50: 150051
      BUSCO:
          Viridiplantae: C:82.8%[S:70.7%,D:12.1%],F:4.7%,M:12.5%,n:430
          Embryophyta: C:70.9%[S:63.6%,D:7.3%],F:6.0%,M:23.1%,n:1375

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

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

**P. africana Polished Flye Assembly (rmv contam input reads)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_rmv_contam.fasta

      Genome Size: 545041764
      # of Contigs: 5754
      N50: 386201
      BUSCO:
          Viridiplantae: C:84.7%[S:70.5%,D:14.2%],F:4.2%,M:11.1%,n:430
          Embryophyta: C:72.7%[S:64.7%,D:8.0%],F:6.0%,M:21.3%,n:1375

**P. africana Polished Flye Assembly (rmv contam input reads & <3kb contigs)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_3kb_rmv_contam.fasta

      Genome Size: 542202628
      # of Contigs: 3968
      N50: 388959
      BUSCO:
          Viridiplantae: C:84.4%[S:70.2%,D:14.2%],F:4.4%,M:11.2%,n:430
          Embryophyta: C:73.2%[S:64.9%,D:8.3%],F:5.6%,M:21.2%,n:1375

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

# 4. Polished Genome Assembly Refinement
## Flye Assembly
   1. Contigs less than 3kb in length were removed from the assembly using awk command detailed in **awk_remove_3kb_contigs**
   1. The genome assembly was analyzed with centrifuge using a human, archaea, bacteria, and viral genomic index to determine contaminant contigs in the assembly. Afterwards the contaminant contigs were removed from the assembly using a biopython script.
      1. **centrifuge_pafricana.sh** runs centrifuge on the genome assembly with min-hit-len 50
      1. **remove_contaminated_contigs_pafricana_initial_flye_assembly.py** removes contaminant contigs from the genome assembly based on contig ids from the centrifuge classification report.
   1. Purge haplotigs was run on the genome assembly to identify syntenic contigs.
      1. **minmap_alignment_physcomitrellopsis_africana_polished_3kb_rmvcontam.sh** aligns the most recent polished assembly to the basecalled reads.
      1. **pafricana_purgehap.sh** runs purge haplotigs on the polished assembly in three steps.
      
**P.africana Polished Flye Assembly (Contam & <3Kb scaffolds filtered)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta

      Genome Size: 444358046
      # of Contigs: 7712
      N50: 130312
      BUSCO:
          Viridiplantae: C:81.1%[S:72.3%,D:8.8%],F:5.1%,M:13.8%,n:430
          Embryophyta: C:71.3%[S:65.3%,D:6.0%],F:6.5%,M:22.2%,n:1375

**P. africana Polished Flye Assembly (Contam, <3kb scaffolds filtered, & purgehaplotigs)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_3kb_rmvcontam_purgehap_assembly.fasta

      Genome Size: 423566072
      # of Contigs: 6038
      N50: 138455
      BUSCO:
          Viridiplantae: C:81.4%[S:73.3%,D:8.1%],F:4.7%,M:13.9%,n:430
          Embryophyta: C:71.1%[S:65.3%,D:5.8%],F:6.5%,M:22.4%,n:1375

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (Rmv Contam Input)
   1. Purge Haplotigs was run on the polished rmv contam genome assembly to identify and remove syntenic contigs.
      1. **minmap_alignment_polished_pafricana_flye_assembly_rmv_contam_input.sh** aligns the polished rmv input contam flye assembly to the basecalled reads.
      1. **pafricana_purgehap_rmv_input_contam.sh** runs purge haplotigs on the polished rmv input contam flye assembly.
   1. Purge-dups was run on the post-purgehap polished rmv input contam flye assembly to further reduce the duplication of the assembly.
      1. **run_purge_dups.sh** runs purge-dups with information from **config_pafricana_flye_assembly_rmv_input_contam_post_purgehap.json**. **pb.fofn** contains the path to the long-read input data.

**P. africana Polished Flye Assembly (rmv contam input reads & purgehap)**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haplotigs_rmv_input_contam_low_midpoint_55/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.fasta

      Genome Size: 531269006
      # of Contigs: 3656
      N50: 395401
      BUSCO:
          Viridiplantae: C:83.5%[S:71.4%,D:12.1%],F:5.1%,M:11.4%,n:430
          Embryophyta: C:72.6%[S:64.7%,D:7.9%],F:6.2%,M:21.2%,n:1375

**P. africana Polished Flye Assembly (rmv contam input reads, post-purgehap, purgedup) FINAL ASSEMBLY SELECTED FOR TRANSCRIPTOME ANALYSIS**
     
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_dups/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid_55/seqs/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.purged.fa

      Genome Size: 516772002
      # of Contigs: 2681
      N50: 402952
      BUSCO:
          Viridiplantae: C:83.5%[S:72.8%,D:10.7%],F:4.2%,M:12.3%,n:430
          Embryophyta: C:72.6%[S:65.3%,D:7.3%],F:6.0%,M:21.4%,n:1375

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

