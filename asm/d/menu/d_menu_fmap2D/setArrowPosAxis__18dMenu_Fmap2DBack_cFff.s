lbl_801D5BB8:
/* 801D5BB8  D0 23 11 8C */	stfs f1, 0x118c(r3)
/* 801D5BBC  D0 43 11 90 */	stfs f2, 0x1190(r3)
/* 801D5BC0  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D5BC4  D0 03 11 9C */	stfs f0, 0x119c(r3)
/* 801D5BC8  D0 03 11 A0 */	stfs f0, 0x11a0(r3)
/* 801D5BCC  4E 80 00 20 */	blr 
