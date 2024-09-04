import os
import pandas as pd
cwd = os.getcwd()
spid = [
'DERSIL',
'HAELON',
'ECTDAV',
'DYSSIL',
'ULODIV',
'LATELE',
'PARTEP',
'HYLGRA',
'OEDGIB',
'ARGBRU',
'TRIANT',
'TRICLA',
'CARROT',
'TACGIG'
]


anno = [
'anno',
'1.5_C_anno',
'whdis_anno',
'wohdis_anno',
'whpro_anno',
'wohpro_anno',
'whseg_anno',
'wohseg_anno',
'whsin_anno',
'wohsin_anno',
'whtan_anno',
'wohtan_anno'
]

all_anno = {}
with open("all_anno.txt", 'r') as all:
    for line in all:
        all_anno[line.split(',')[2]] = {}
#print(all_anno)
for an in anno:
    for sp in spid:
        for k in all_anno.keys():
            all_anno[k][an+sp] = 0
        
        if an == '1.5_C_anno':
            if sp == 'DERSIL' or sp == 'HAELON':
                continue


        #print(all_anno)
        with open(cwd+"/anno/"+sp+"/"+sp+"_"+an+".txt") as infile:
            for line in infile:
                ids = line.split(' ')[1].replace(':','')
                #print(ids)
                if ids in list(all_anno.keys()):
                    all_anno[ids][an+sp] += 1

#print(all_anno)
#print(list(all_anno.keys()))

df = pd.DataFrame(all_anno)
df.T.to_csv("dataframe.csv")
#print(df.T)

out = []

for ks, vs in all_anno.items():
    for k, v in vs.items():
        outline = []
        k = k.replace("_","").split("anno")
        if k[0] == '':
            k[0] = "anno"
        #print(k[0])
        #print(k[1])
        outline.append(ks)
        outline.append(k[0])
        outline.append(k[1])
        outline.append(v)

        out.append(outline)


df=pd.DataFrame(out,columns=['HD','type','species','count'])
df.to_csv("dataframe_melted.csv")
