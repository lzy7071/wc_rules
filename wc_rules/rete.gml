graph
[
 directed 1
node [id 0 graphics [ hasOutline 0 fill "#FBB4AE" ]  LabelGraphics [text "(0)root" ]  ] 
node [id 1 graphics [ hasOutline 0 fill "#DECBE4" ]  LabelGraphics [text "(1)*0.bond--*1.sites" ]  ] 
node [id 2 graphics [ hasOutline 0 fill "#E5D8BD" ]  LabelGraphics [text "(2)store" ]  ] 
node [id 3 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(3)p4:x1,p4:bnd" ]  ] 
node [id 4 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(4)p4:A1,p4:bnd,p4:x1" ]  ] 
node [id 5 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(5)p4:A1,p4:bnd,p4:x1" ]  ] 
node [id 6 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(6)p4:A1,p4:bnd,p4:x1,p4:x2" ]  ] 
node [id 7 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(7)p4:A1,p4:bnd,p4:x1,p4:x2" ]  ] 
node [id 8 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(8)p4:A1,p4:A2,p4:bnd,p4:x1,p4:x2" ]  ] 
node [id 9 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(9)p4:A1,p4:A2,p4:bnd,p4:x1,p4:x2" ]  ] 
node [id 10 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(10)p4" ]  ] 
node [id 11 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(11)p4:x2,p4:bnd" ]  ] 
node [id 12 graphics [ hasOutline 0 fill "#DECBE4" ]  LabelGraphics [text "(12)*0.molecule--*1.sites" ]  ] 
node [id 13 graphics [ hasOutline 0 fill "#E5D8BD" ]  LabelGraphics [text "(13)store" ]  ] 
node [id 14 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(14)p4:x1,p4:A1" ]  ] 
node [id 15 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(15)p4:A1,p4:x1" ]  ] 
node [id 16 graphics [ hasOutline 0 fill "#FFFFCC" ]  LabelGraphics [text "(16)p4:A1,p4:x1" ]  ] 
node [id 17 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(17)p4:x2,p4:A2" ]  ] 
node [id 18 graphics [ hasOutline 0 fill "#FED9A6" ]  LabelGraphics [text "(18)isinstance(*,Entity)" ]  ] 
node [id 19 graphics [ hasOutline 0 fill "#FED9A6" ]  LabelGraphics [text "(19)isinstance(*,Bond)" ]  ] 
node [id 20 graphics [ hasOutline 0 fill "#E5D8BD" ]  LabelGraphics [text "(20)store" ]  ] 
node [id 21 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(21)p4:bnd" ]  ] 
node [id 22 graphics [ hasOutline 0 fill "#FED9A6" ]  LabelGraphics [text "(22)isinstance(*,Molecule)" ]  ] 
node [id 23 graphics [ hasOutline 0 fill "#FED9A6" ]  LabelGraphics [text "(23)isinstance(*,A)" ]  ] 
node [id 24 graphics [ hasOutline 0 fill "#E5D8BD" ]  LabelGraphics [text "(24)store" ]  ] 
node [id 25 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(25)p4:A1" ]  ] 
node [id 26 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(26)p4:A2" ]  ] 
node [id 27 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(27)p5:a3" ]  ] 
node [id 28 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(28)p5" ]  ] 
node [id 29 graphics [ hasOutline 0 fill "#FED9A6" ]  LabelGraphics [text "(29)isinstance(*,Site)" ]  ] 
node [id 30 graphics [ hasOutline 0 fill "#FED9A6" ]  LabelGraphics [text "(30)isinstance(*,X)" ]  ] 
node [id 31 graphics [ hasOutline 0 fill "#CCEBC5" ]  LabelGraphics [text "(31)*.ph==True
*.v==0" ]  ] 
node [id 32 graphics [ hasOutline 0 fill "#E5D8BD" ]  LabelGraphics [text "(32)store" ]  ] 
node [id 33 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(33)p4:x1" ]  ] 
node [id 34 graphics [ hasOutline 0 fill "#CCEBC5" ]  LabelGraphics [text "(34)*.ph==True
*.v==1" ]  ] 
node [id 35 graphics [ hasOutline 0 fill "#E5D8BD" ]  LabelGraphics [text "(35)store" ]  ] 
node [id 36 graphics [ hasOutline 0 fill "#B3CDE3" ]  LabelGraphics [text "(36)p4:x2" ]  ] 
edge [ source 21 target 5 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 31 target 32 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 29 target 30 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 30 target 34 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 30 target 31 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 32 target 33 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 33 target 16 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 34 target 35 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 35 target 36 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 36 target 7 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 1 target 2 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 2 target 3 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 2 target 11 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 3 target 4 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 11 target 6 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 0 target 18 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 0 target 1 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 0 target 12 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 12 target 13 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 13 target 14 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 13 target 17 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 14 target 15 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 17 target 8 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 15 target 16 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 16 target 4 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 4 target 5 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 5 target 6 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 24 target 25 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 24 target 26 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 24 target 27 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 6 target 7 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 18 target 29 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 18 target 22 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 18 target 19 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 7 target 8 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 22 target 23 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 8 target 9 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 23 target 24 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 9 target 10 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 25 target 15 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 26 target 9 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 20 target 21 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 19 target 20 graphics [ fill "#999999" targetArrow "standard" ]  ] 
edge [ source 27 target 28 graphics [ fill "#999999" targetArrow "standard" ]  ] 
]
