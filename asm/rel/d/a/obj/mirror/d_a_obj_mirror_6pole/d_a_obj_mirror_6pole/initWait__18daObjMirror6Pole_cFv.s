lbl_80C95E18:
/* 80C95E18  3C 80 80 C9 */	lis r4, lit_3630@ha /* 0x80C96510@ha */
/* 80C95E1C  C0 04 65 10 */	lfs f0, lit_3630@l(r4)  /* 0x80C96510@l */
/* 80C95E20  80 63 05 6C */	lwz r3, 0x56c(r3)
/* 80C95E24  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C95E28  4E 80 00 20 */	blr 
