# get ohnologs from fastas

import sys

# annotation file and hits file inputs
hits_file = sys.argv[1]
gene_list = sys.argv[2]

gl = []
with open(gene_list, 'r') as l:
	for line in l:
		gl.append(line.strip('\n'))

with open(hits_file, 'r') as h:
	for line in h:
		if line.split('\t')[0] in gl:
			print(line.strip('\n'))
