import sys
from Bio import SeqIO
fastq_file = "/projects/EBP/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/5074_test_LSK109_30JAN19-reads/5074_test_LSK109_30JAN19-reads-pass.fastq"
remove_file = "contaminated_pafricana_promethion_reads.txt"
result_file = "physcomitrellopsis_africana_clean_reads.fastq"

with open(result_file, "w") as a, open(remove_file, "r") as b:
	reader = b.read().splitlines()
	for seq in SeqIO.parse(fastq_file, "fastq"):
		if seq.id not in reader:
			SeqIO.write(seq, a, "fastq")

