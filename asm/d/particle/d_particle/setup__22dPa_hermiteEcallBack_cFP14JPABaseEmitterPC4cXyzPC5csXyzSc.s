lbl_8004FABC:
/* 8004FABC  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8004FAC0  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004FAC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8004FAC8  38 00 00 00 */	li r0, 0
/* 8004FACC  90 03 00 08 */	stw r0, 8(r3)
/* 8004FAD0  4E 80 00 20 */	blr 
