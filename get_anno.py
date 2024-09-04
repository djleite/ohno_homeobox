# get ohnologs from fastas

import sys

# annotation file and hits file inputs
anno_file = sys.argv[1]
hits_file = sys.argv[2]

#store anno file
id_anno = {}
with open(anno_file, 'r') as anno:
	for an in anno:
		an = an.strip('\n\r').split(",")
		gid = an[6]
		aid = an[2]
		id_anno[gid] = aid

#print(id_anno)

#run through hits and convert to annotations		
gdict = {}
with open(hits_file, 'r') as hits:
	for hit in hits:
		hit = hit.strip('\n').split('\t')
		gid = str(hit[0])
		#print(gid)
		h = hit[1]
		#print(h)
		h = id_anno.get(h)
		#print(h)
		if gid not in gdict:
			if h is not None:
				idlist = []
				idlist.append(h)
				gdict[gid] = idlist
		elif gid in gdict:
			if h is not None:
				gdict[gid].append(h)

#print(gdict)

#count the highest hit annotations
for k,v in gdict.items():
	count_dict = {i:v.count(i) for i in v}
	#new_order = dict(sorted(count_dict.items(), key=lambda item: item[1]))
	new_order = {k: v for k, v in sorted(count_dict.items(), key=lambda item: item[1], reverse=True)}
	out = k+', '+str(new_order)
	out = out.replace('{','').replace('}','').replace("'",'')
	print(out)


