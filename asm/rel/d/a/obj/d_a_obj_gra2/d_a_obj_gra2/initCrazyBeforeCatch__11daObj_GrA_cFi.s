lbl_80C0C348:
/* 80C0C348  38 00 00 01 */	li r0, 1
/* 80C0C34C  90 03 1F F0 */	stw r0, 0x1ff0(r3)
/* 80C0C350  3C 80 80 C1 */	lis r4, lit_4333@ha /* 0x80C0FB98@ha */
/* 80C0C354  C0 04 FB 98 */	lfs f0, lit_4333@l(r4)  /* 0x80C0FB98@l */
/* 80C0C358  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C0C35C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80C0C360  4E 80 00 20 */	blr 
