lbl_8035E6C0:
/* 8035E6C0  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035E6C4  84 04 04 CC */	lwzu r0, 0x4cc(r4)
/* 8035E6C8  90 64 00 00 */	stw r3, 0(r4)
/* 8035E6CC  7C 03 03 78 */	mr r3, r0
/* 8035E6D0  4E 80 00 20 */	blr 
