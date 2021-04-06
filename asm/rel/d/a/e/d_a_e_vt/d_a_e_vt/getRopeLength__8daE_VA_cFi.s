lbl_807C53DC:
/* 807C53DC  2C 04 00 05 */	cmpwi r4, 5
/* 807C53E0  40 80 00 10 */	bge lbl_807C53F0
/* 807C53E4  3C 60 80 7D */	lis r3, lit_5407@ha /* 0x807CED50@ha */
/* 807C53E8  C0 23 ED 50 */	lfs f1, lit_5407@l(r3)  /* 0x807CED50@l */
/* 807C53EC  4E 80 00 20 */	blr 
lbl_807C53F0:
/* 807C53F0  3C 60 80 7D */	lis r3, lit_5408@ha /* 0x807CED54@ha */
/* 807C53F4  C0 23 ED 54 */	lfs f1, lit_5408@l(r3)  /* 0x807CED54@l */
/* 807C53F8  4E 80 00 20 */	blr 
