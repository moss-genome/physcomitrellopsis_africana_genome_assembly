import sys
from Bio import SeqIO

genome_assembly = "/labs/Wegrzyn/Moss/Physcomitrellopsis_africana/Physcomitrellopsis_africana_Genome/RawData_Nanopore_5074/5074_test_LSK109_30JAN19/flye_assembly/flye_assembly_rmv_contam/flye_assembly_rmv_contam/assembly.fasta"

fasta1 = "pafricana_flye_assembly_rmv_contam_1_contigs.fasta"
fasta2 = "pafricana_flye_assembly_rmv_contam_2_contigs.fasta"
fasta3 = "pafricana_flye_assembly_rmv_contam_3_contigs.fasta"
fasta4 = "pafricana_flye_assembly_rmv_contam_4_contigs.fasta"
fasta5 = "pafricana_flye_assembly_rmv_contam_5-6_contigs.fasta"
fasta6 = "pafricana_flye_assembly_rmv_contam_7-9_contigs.fasta"

with open(fasta1, "w") as a, open(fasta2, "w") as b, open(fasta3, "w") as c, open(fasta4, "w") as d, open(fasta5, "w") as e, open(fasta6, "w") as f:
	for seq in SeqIO.parse(genome_assembly, 'fasta'):
		if seq.id[0] is 'c':
			if int(seq.id[7]) == 1:
				SeqIO.write(seq, a, "fasta")
			elif int(seq.id[7]) == 2:
				SeqIO.write(seq, b, "fasta")
			elif int(seq.id[7]) == 3:
				SeqIO.write(seq, c, "fasta")
			elif int(seq.id[7]) == 4:
				SeqIO.write(seq, d, "fasta")
			elif int(seq.id[7]) > 4 and int(seq.id[7]) <= 6:
				SeqIO.write(seq, e, "fasta")
			elif int(seq.id[7]) >= 7:
				SeqIO.write(seq, f, "fasta")
		elif seq.id[0] is 's':
			if int(seq.id[9]) == 1:
                                SeqIO.write(seq, a, "fasta")
                        elif int(seq.id[9]) == 2:
                                SeqIO.write(seq, b, "fasta")
                        elif int(seq.id[9]) == 3:
                                SeqIO.write(seq, c, "fasta")
                        elif int(seq.id[9]) == 4:
                                SeqIO.write(seq, d, "fasta")
                        elif int(seq.id[9]) > 4 and int(seq.id[9]) <= 6:
                                SeqIO.write(seq, e, "fasta")
                        elif int(seq.id[9]) >= 7:
                                SeqIO.write(seq, f, "fasta")

