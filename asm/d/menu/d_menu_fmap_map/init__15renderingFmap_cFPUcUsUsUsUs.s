lbl_801CE15C:
/* 801CE15C  90 83 00 04 */	stw r4, 4(r3)
/* 801CE160  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 801CE164  B0 C3 00 1E */	sth r6, 0x1e(r3)
/* 801CE168  B0 E3 00 20 */	sth r7, 0x20(r3)
/* 801CE16C  B1 03 00 22 */	sth r8, 0x22(r3)
/* 801CE170  C0 02 A7 80 */	lfs f0, lit_3703(r2)
/* 801CE174  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801CE178  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801CE17C  38 00 00 00 */	li r0, 0
/* 801CE180  98 03 00 BB */	stb r0, 0xbb(r3)
/* 801CE184  4E 80 00 20 */	blr 
