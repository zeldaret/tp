lbl_80BDEC94:
/* 80BDEC94  3C 80 80 BE */	lis r4, lit_3719@ha /* 0x80BDF880@ha */
/* 80BDEC98  C0 04 F8 80 */	lfs f0, lit_3719@l(r4)  /* 0x80BDF880@l */
/* 80BDEC9C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BDECA0  D0 03 06 3C */	stfs f0, 0x63c(r3)
/* 80BDECA4  D0 03 06 40 */	stfs f0, 0x640(r3)
/* 80BDECA8  38 00 00 02 */	li r0, 2
/* 80BDECAC  98 03 06 28 */	stb r0, 0x628(r3)
/* 80BDECB0  4E 80 00 20 */	blr 
