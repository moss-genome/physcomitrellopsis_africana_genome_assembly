### Physcomitrellopsis africana Genome Assembly
Moss Genome Assembly Spreadsheet: https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit?usp=sharing

# 1. Nanopore Sequencing.

Physcomitrellopsis africana tissue sequenced using Nanopore PromethION technology.
     Raw sequencing run data located at:

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-fast5_pass/

Basecalled sequencing reads located at:

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/

# 2. Genome Assembly.

## Flye Assembly
Draft genome assembly created using Flye genome assembly program.
     
**flye_assembly_moss_30JAN19_5074.sh** script runs Flye assembly program with basecalled sequencing reads as input.

**P. africana Initial Flye Assembly**
*     /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_initial/assembly.fasta

      Genome Size: 540816378
      # of Contigs: 9796
      N50: 151896
      BUSCO:
          Viridiplantae: C:48.9%[S:45.4%,D:3.5%],F:25.9%,M:25.2%,n:425
          Embryophyta: C:24.8%[S:23.3%,D:1.5%],F:13.1%,M:62.1%,n:1614

**P. africana Flye Assembly (< 3Kb scaffolds filtered)**
*     /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/pafricana_initial_flye_assembly_3kb.fasta

      Genome Size: 538685308
      # of Contigs: 8388
      N50: 152580
      BUSCO:
          Viridiplantae: C:49.7%[S:45.9%,D:3.8%],F:25.4%,M:24.9%,n:425
          Embryophyta: C:25.0%[S:23.5%,D:1.5%],F:13.3%,M:61.7%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (Rmv Contam Input)
Draft genome assembly created using Flye genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **isolate_contaminated_read_ids.py** creates a list of contaminated read ids from the centrifuge output file **centrifuge_pafricana_promethion_fastq_reads_444526.out**.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **flye_assembly_rmv_contam_moss_30JAN19_5074.sh** runs Flye genome assembly program with clean input reads.
     
**P. africana Flye Assembly (rmv contam input reads)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta

      Genome Size: 547438596
      # of Contigs: 5754
      N50: 388035
      BUSCO:
          Viridiplantae: C:71.7%[S:66.8%,D:4.9%],F:16.9%,M:11.4%,n:425
          Embryophyta: C:49.3%[S:46.3%,D:3.0%],F:10.4%,M:40.3%,n:1614
          
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (rmv contam input reads & 3 additional polishing runs)
Draft genome assembly created using Flye genome assembly program with clean read input reads and 3 additional polishing runs.

**flye_assembly_pafricana_rmv_contam_input_rerun_3_polishing_runs.sh** runs Flye assembly program with clean input reads & 3 additional polishing runs.

**P. africana Flye Assembly (rmv contam input reads & 3 additional polishing runs)**

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam_input_rerun/flye_assembly_rmv_contam_input_rerun_3_polishing_runs/assembly.fasta

      Genome Size: 556343009
      # of Contigs: 4721
      N50: 596646
      BUSCO:
          Viridiplantae: C:89.4%[S:77.9%,D:11.5%],F:4.0%,M:6.6%,n:425
          Embryophyta: C:70.3%[S:63.7%,D:6.6%],F:4.3%,M:25.4%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Shasta Assembly
**Note:** Shasta Assembly was not selected for further refinement 

Draft genome assembly created using Shasta genome assembly program.
   1. **FastqToFasta.py** converts input reads from fastq format to fasta format
   1. **run_shasta_assembly_minlen_500.sh** runs Shasta genome assembly program with minimum accepted input read length of 500 base pairs
     
**P. africana Shasta Assembly (minlen 500)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/2ShastaRun/Assembly.fasta

      Genome Size: 223004245
      # of Contigs: 8945
      N50: 51351
      BUSCO:
          Viridiplantae: C:36.7%[S:36.2%,D:0.5%],F:23.8%,M:39.5%,n:425
          Embryophyta: C:17.5%[S:17.4%,D:0.1%],F:12.5%,M:70.0%,n:1614
          
**P. africana Shasta Assembly (minlen 500 & <3kb filtered)**

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/2ShastaRun/pafricana_shasta_assembly_3kb_minlen_500.fasta

      Genome Size: 220227121
      # of Contigs: 7135
      N50: 52035
      BUSCO:
          Viridiplantae: C:36.7%[S:36.2%,D:0.5%],F:23.8%,M:39.5%,n:425
          Embryophyta: C:17.4%[S:17.3%,D:0.1%],F:12.4%,M:70.2%,n:1614
  
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Shasta Assembly (rmv contam input)
**Note:** Shasta Assembly (rmv contam input) was not selected for further refinement

Draft genome assembly created using Shasta genome assembly program with cleaned input reads.
   1. **centrifuge_pafricana_promethion_reads.sh** runs centrifuge classification program on the raw basecalled sequencing reads.
   1. **isolate_contaminated_read_ids.py** creates a list of contaminated read ids from the centrifuge output file **centrifuge_pafricana_promethion_fastq_reads_444526.out**.
   1. **filter_reads.sh** runs **remove_contaminated_reads_pafricana.py** to remove contaminated reads from basecalled sequencing reads.
   1. **FastqToFasta.py** converts clean input reads from fastq format to fasta format
   1. **run_shasta_assembly_minlen_500_rmv_contam_input.sh** runs Shasta genome assembly program with clean input reads and minimum accepted input read length of 500 base pairs.
     
**P. africana Shasta Assembly (minlen 500 & rmv contamination input reads)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/test_shasta_assembly/ShastaRun_pafricana_rmv_contam_minreadlen_500/Assembly.fasta

      Genome Size: 211680036
      # of Contigs: 8515
      N50: 48947
      BUSCO:
          Viridiplantae: C:38.3%[S:38.1%,D:0.2%],F:24.2%,M:37.5%,n:425
          Embryophyta: C:19.9%[S:19.6%,D:0.3%],F:12.3%,M:67.8%,n:1614
          
**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Haslr Assembly
Draft genome assembly created using Haslr genome assembly program.
     
**pafricana_run_haslr_assembly.sh** script runs Haslr assembly program with raw Illumina reads as input.

**P. africana Initial Haslr Assembly**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/assembly_run_1/pafricana_haslr_assembly/asm_contigs_k49_a3_c250_lr25x_b500_s3_sim0.85/asm.final.fa

      Genome Size: 218471996
      # of Contigs: 10739
      N50: 36010
      BUSCO:
          Viridiplantae: C:49.4%[S:45.4%,D:4.0%],F:5.6%,M:45.0%,n:425
          Embryophyta: C:39.5%[S:36.7%,D:2.8%],F:2.7%,M:57.8%,n:1614

## Haslr Assembly (trimmed Illumina read input)
Draft genome assembly created using Haslr genome assembly program.

**sickle_trim_pafricana_DP_illumina_reads.sh** trims the both Illumina read sets.
**pafricana_run_haslr_assembly_trimmed_illumina_reads.sh** script runs Haslr assembly program with trimmed Illumina reads as input.

**P. africana Haslr Assembly (trimmed Illumina read input)**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_haslr_assembly/assembly_run_2/pafricana_haslr_assembly/asm_contigs_k49_a3_c250_lr25x_b500_s3_sim0.85/asm.final.fa

      Genome Size: 295988232
      # of Contigs: 12738
      N50: 52286
      BUSCO:
          Viridiplantae: C:94.1%[S:80.9%,D:13.2%],F:1.2%,M:4.7%,n:425
          Embryophyta: C:83.4%[S:70.1%,D:13.3%],F:2.0%,M:14.6%,n:1614


## Wengan Assembly
Draft genome assembly created using Wengan genome assembly program.
     
**pafricana_run_wengan_assembly.sh** script runs Wengan assembly program with raw Illumina reads as input.

**P. africana Initial Wengan Assembly**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run1/pafricana_asm_wengan.SPolished.asm.wengan.fasta

      Genome Size: 570434569
      # of Contigs: 14003
      N50: 120153
      BUSCO:
          Viridiplantae: C:96.4%[S:76.9%,D:19.5%],F:1.6%,M:2.0%,n:425
          Embryophyta: C:86.4%[S:70.8%,D:15.6%],F:1.9%,M:11.7%,n:1614

## Wengan Assembly (trimmed Illumina read input)
Draft genome assembly created using Wengan genome assembly program.
     
**pafricana_run_wengan_assembly_trimmed_illumina_reads.sh** script runs Wengan assembly program with trimmed Illumina reads as input.

**P. africana Wengan Assembly (trimmed Illumina read input)**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pafricana_wengan_assembly/wengan_assembly_run2/pafricana_asm_wengan.SPolished.asm.wengan.fasta

      Genome Size: 466642697
      # of Contigs: 10516
      N50: 119422
      BUSCO:
          Viridiplantae: C:96.4%[S:77.6%,D:18.8%],F:1.6%,M:2.0%,n:425
          Embryophyta: C:86.2%[S:70.7%,D:15.5%],F:1.9%,M:11.9%,n:1614

## Masurca Hybrid Assembly
Draft genome assembly created using Masurca genome assembly program.

**config_pafricana_masura_hybrid_assembly.txt** contains the parameters to run Masurca.
**run_masurca_hybrid_assembly_pafricana.sh** script runs Masurca assembly program with basecalled sequencing reads and raw Illumina reads as input.

**P. africana Masurca Hybrid Assembly**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/masurca/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina/CA.mr.41.17.15.0.02/primary.genome.scf.fasta

      Genome Size: 506222239
      # of Contigs: 3571
      N50: 381330
      BUSCO:
          Viridiplantae: C:96.2%[S:80.7%,D:15.5%],F:1.2%,M:2.6%,n:425
          Embryophyta: C:86.0%[S:71.3%,D:14.7%],F:2.0%,M:12.0%,n:1614

## Masurca Hybrid Assembly (Flye enabled) PENDING
Draft genome assembly created using Masurca genome assembly program.

**config_pafricana_masura_hybrid_assembly_flye_1.txt** contains the parameters to run Masurca with the Flye parameter enabled.
**run_masurca_hybrid_assembly_pafricana_flye_1.sh** script runs Masurca assembly program with basecalled sequencing reads and raw Illumina reads as input.

**P. africana Masurca Hybrid Assembly (Flye enabled) PENDING**
*     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/masurca/pafricana_masurca_hybrid_assembly_nanopore_rmv_contam_illumina_flye_assembly_1/

      Genome Size: 
      # of Contigs: 
      N50: 
      BUSCO:
          Viridiplantae: 
          Embryophyta: 

# 3. Genome Assembly Polishing

## Nanopolish on Flye Assembly
   1. Basecalled fastq reads are linked to signal-level nanopore raw fast5 data using nanopolish index.
      1. **nanopolish_index_physcomitrellopsis_africana.sh** indexes the basecalled reads.
   1. Basecalled reads are aligned to the initial flye assembly using minimap2, and the bam alignment file is sorted and indexed using samtools.
      1. **minmap_alignment_physcomitrellopsis_africana.sh** script performs minimap2 alignment of reads to assembly and samtools processing of bam alignment file.
   1. Polished genome assembly is created with nanopolish.
      1. **nanopolish_physcomitrellopsis_africana.sh** generates polished assembly contigs in 50kb parts in vcf format (output and temp directories need to be created before running script).
   1. Final polished genome assembly is generated by compiling all polished contig files using nanopolish vcf2fasta
      1. **nanopolish_vcf_to_fasta.sh** script converts polished contig files into a polished genome assembly

**P. africana Polished Flye Assembly**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_assembly.fa

      Genome Size: 534238232
      # of Contigs: 9791
      N50: 150051
      BUSCO:
          Viridiplantae: C:85.6%[S:74.8%,D:10.8%],F:7.3%,M:7.1%,n:425
          Embryophyta: C:65.6%[S:59.2%,D:6.4%],F:5.3%,M:29.1%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Nanopolish on Flye Assembly (Rmv Contam Input)
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
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_rmv_contam.fasta

      Genome Size: 545041764
      # of Contigs: 5754
      N50: 386201
      BUSCO:
          Viridiplantae: C:88.2%[S:78.8%,D:9.4%],F:5.4%,M:6.4%,n:425
          Embryophyta: C:67.3%[S:60.7%,D:6.6%],F:4.8%,M:27.9%,n:1614

**P. africana Polished Flye Assembly (rmv contam input reads & <3kb contigs)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/polished_pafricana_flye_assembly_3kb_rmv_contam.fasta

      Genome Size: 542202628
      # of Contigs: 3968
      N50: 388959
      BUSCO:
          Viridiplantae: C:87.8%[S:78.4%,D:9.4%],F:5.9%,M:6.3%,n:425
          Embryophyta: C:67.1%[S:60.5%,D:6.6%],F:5.1%,M:27.8%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Medaka on Flye Assembly (rmv contam input reads & 3 additional polishing runs)

**medaka_pafricana_genome.sh** runs Medaka error correction program on Flye assembly with clean input reads & 3 additional polishing runs.

**P. africana Flye Assembly (rmv contam input reads, 3 additional polishing runs, & Medaka polishing)**

    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/medaka/medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303/consensus.fasta
      
      Genome Size: 557068589
      # of Contigs: 5045
      N50: 590698
      BUSCO:
          Viridiplantae: C:92.5%[S:80.0%,D:12.5%],F:2.8%,M:4.7%,n:425
          Embryophyta: C:72.4%[S:64.5%,D:7.9%],F:3.4%,M:24.2%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Medaka on Haslr Assembly (trimmed Illumina read input)

**medaka_pafricana_haslr_assembly_trimmed_illumina_reads.sh** runs Medaka error correction program on Haslr Assembly (trimmed Illumina read input).

**P. africana Haslr Assembly (trimmed Illumina read input & Medaka polishing)**
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/medaka/medaka_haslr_assembly_trimmed_illumina_reads_r941_prom_high_g303/consensus.fasta
      
      Genome Size: 295737460
      # of Contigs: 12737
      N50: 52314
      BUSCO:
          Viridiplantae: C:90.6%[S:81.2%,D:9.4%],F:5.2%,M:4.2%,n:425
          Embryophyta: C:77.3%[S:68.2%,D:9.1%],F:5.0%,M:17.7%,n:1614

## Medaka on Wengan Assembly (trimmed Illumina read input)

**medaka_pafricana_wengan_assembly_trimmed_illumina_reads_r941_prom_high_g303.sh** runs Medaka error correction program on Wengan Assembly (trimmed Illumina read input).

**P. africana Wengan Assembly (trimmed Illumina read input & Medaka polishing)**
    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/medaka/medaka_pafricana_wengan_assembly_trimmed_illumina_reads_r941_prom_high_g303/consensus.fasta
      
      Genome Size: 434411272
      # of Contigs: 7639
      N50: 132405
      BUSCO:
          Viridiplantae: C:93.2%[S:81.4%,D:11.8%],F:4.7%,M:2.1%,n:425
          Embryophyta: C:79.7%[S:68.4%,D:11.3%],F:4.9%,M:15.4%,n:1614

## Pilon on Initial Wengan Assembly

**bowtie2_index_pafricana_wengan_assembly.sh** indexes Initial Wengan Assembly.
**bowtie2_align_pafricana_wengan_assembly.sh** aligns the Initial Wengan Asssembly to the raw Illumina reads.
**samtools_convert_index_wengan_assembly.sh** converts the resulting SAM alignment files to BAM format, then sorts and indexes both BAM files.
**pilon_pafricana_wengan_assembly.sh** runs Pilon error correction program on Initial Wengan Assembly.

**P. africana Wengan Assembly (Pilon polishing)**

    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_wengan_assembly/pafricana_wengan_assembly.fasta
      
      Genome Size: 568413172
      # of Contigs: 14003
      N50: 119190
      BUSCO:
          Viridiplantae: C:96.5%[S:77.2%,D:19.3%],F:1.6%,M:1.9%,n:425
          Embryophyta: C:86.4%[S:70.8%,D:15.6%],F:1.9%,M:11.7%,n:1614

## Pilon on Wengan Assembly (trimmed Illumina read input)

**bowtie2_index_pafricana_wengan_assembly_trimmed_illumina_reads.sh** indexes Wengan Assembly (trimmed Illumina read input).
**bowtie2_align_pafricana_wengan_assembly_trimmed_illumina_reads.sh** aligns the Wengan Asssembly (trimmed Illumina read input) to the raw Illumina reads.
**samtools_convert_index_pafricana_wengan_assembly_trimmed_illumina_reads.sh** converts the resulting SAM alignment files to BAM format, then sorts and indexes both BAM files.
**pilon_pafricana_wengan_assembly_trimmed_illumina_reads.sh** runs Pilon error correction program on Wengan Assembly (trimmed Illumina read input).

**P. africana Wengan Assembly (trimmed Illumina read input & Pilon polishing)**

    /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/pilon/pilon_pafricana_wengan_assembly_trimmed_illumina_reads/pafricana_wengan_assembly_trimmed_illumina_reads.fasta
      
      Genome Size: 465653078
      # of Contigs: 10516
      N50: 119028
      BUSCO:
          Viridiplantae: C:96.4%[S:77.6%,D:18.8%],F:1.6%,M:2.0%,n:425
          Embryophyta: C:86.3%[S:70.8%,D:15.5%],F:2.0%,M:11.7%,n:1614

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
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_rmvcontam_assembly.fasta

      Genome Size: 444358046
      # of Contigs: 7712
      N50: 130312
      BUSCO:
          Viridiplantae: C:85.1%[S:77.6%,D:7.5%],F:6.1%,M:8.8%,n:425
          Embryophyta: C:67.4%[S:62.0%,D:5.4%],F:5.9%,M:26.7%,n:1614

**P. africana Polished Flye Assembly (Contam, <3kb scaffolds filtered, & purgehaplotigs)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/polished_assembly/physcomitrellopsis_africana_polished_3kb_rmvcontam_purgehap_assembly.fasta

      Genome Size: 423566072
      # of Contigs: 6038
      N50: 138455
      BUSCO:
          Viridiplantae: C:86.1%[S:78.8%,D:7.3%],F:5.4%,M:8.5%,n:425
          Embryophyta: C:67.2%[S:61.8%,D:5.4%],F:5.6%,M:27.2%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (Rmv Contam Input)
   1. Purge Haplotigs was run on the polished rmv contam genome assembly to identify and remove syntenic contigs.
      1. **minmap_alignment_polished_pafricana_flye_assembly_rmv_contam_input.sh** aligns the polished rmv input contam flye assembly to the basecalled reads.
      1. **pafricana_purgehap_rmv_input_contam.sh** runs purge haplotigs on the polished rmv input contam flye assembly.
   1. Purge-dups was run on the post-purgehap polished rmv input contam flye assembly to further reduce the duplication of the assembly.
      1. **run_purge_dups.sh** runs purge-dups with information from **config_pafricana_flye_assembly_rmv_input_contam_post_purgehap.json**. **pb.fofn** contains the path to the long-read input data.

**P. africana Polished Flye Assembly (rmv contam input reads & purgehap)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haplotigs_rmv_input_contam_low_midpoint_55/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.fasta

      Genome Size: 531269006
      # of Contigs: 3656
      N50: 395401
      BUSCO:
          Viridiplantae: C:88.2%[S:78.8%,D:9.4%],F:5.4%,M:6.4%,n:425
          Embryophyta: C:67.8%[S:61.8%,D:6.0%],F:5.2%,M:27.0%,n:1614

**P. africana Polished Flye Assembly (rmv contam input reads, post-purgehap, purgedup)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_dups/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid_55/seqs/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.purged.fa

      Genome Size: 516772002
      # of Contigs: 2681
      N50: 402952
      BUSCO:
          Viridiplantae: C:87.3%[S:78.6%,D:8.7%],F:5.9%,M:6.8%,n:425
          Embryophyta: C:67.8%[S:61.9%,D:5.9%],F:5.2%,M:27.0%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Flye Assembly (rmv contam input reads, 3 additional polishing runs, & Medaka polishing)
   1. Purge-dups was run on the medaka error-corrected rmv input contam & 3 additional polishing runs flye assembly to reduce the duplication of the assembly.
      1. **run_purge_dups_medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303.sh** runs purge-dups with information from **config_medaka_flye_assembly_rmv_contam_input_rerun_3_polishing_runs_rerun_r941_prom_high_g303.json**. **pb.fofn** contains the path to the long-read input data.

**P. africana Flye Assembly (rmv contam input reads, 3 additional polishing runs, Medaka polishing, & purgedup)**
     
    /archive/projects/EBP/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_haplotigs/purge_haplotigs_rmv_input_contam_low_midpoint_55/polished_pafricana_flye_assembly_rmv_input_contam_reads_purgehap_low_mid.fasta

      Genome Size: 528022983
      # of Contigs: 2256
      N50: 604625
      BUSCO:
          Viridiplantae: C:90.8%[S:80.7%,D:10.1%],F:2.8%,M:6.4%,n:425
          Embryophyta: C:72.0%[S:64.9%,D:7.1%],F:3.8%,M:24.2%,n:1614

**Full Quast Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1231968718  
**Full BUSCO Stats:** https://docs.google.com/spreadsheets/d/1okPKCprWck4fmQgsz3Jt4654wdC38Elk3v131jLbmFw/edit#gid=1742671984

## Wengan Assembly (Pilon polishing)

1. Purge-dups was run on the Pilon-corrected Wengan Assembly to reduce the duplication of the assembly.
   1. **purge_dups_pilon_pafricana_wengan_assembly.sh** runs purge-dups with information from **config_pilon_pafricana_wengan_assembly.json**. **pb.fofn** contains the path to the long-read data, and **10x.fofn** contains the path to the raw Illumina reads.

**P. africana Wengan Assembly (Pilon polishing & purge-dups)**

     /projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/purge_dups/purge_dups_pilon_pafricana_wengan_assembly/pafricana_wengan_assembly_ispb_1/seqs/pafricana_wengan_assembly.purged.fa

      Genome Size: 450162637
      # of Contigs: 9406
      N50: 140730
      BUSCO:
          Viridiplantae: C:96.2%[S:80.2%,D:16.0%],F:1.6%,M:2.2%,n:425
          Embryophyta: C:86.1%[S:71.7%,D:14.4%],F:2.0%,M:11.9%,n:1614

