lbl_8003FCC8:
/* 8003FCC8  38 00 00 00 */	li r0, 0
/* 8003FCCC  98 03 00 31 */	stb r0, 0x31(r3)
/* 8003FCD0  90 83 00 04 */	stw r4, 4(r3)
/* 8003FCD4  B0 A3 00 1C */	sth r5, 0x1c(r3)
/* 8003FCD8  B0 C3 00 1E */	sth r6, 0x1e(r3)
/* 8003FCDC  B0 E3 00 20 */	sth r7, 0x20(r3)
/* 8003FCE0  B1 03 00 22 */	sth r8, 0x22(r3)
/* 8003FCE4  C0 02 84 28 */	lfs f0, lit_3796(r2)
/* 8003FCE8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8003FCEC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8003FCF0  C0 02 84 38 */	lfs f0, lit_4202(r2)
/* 8003FCF4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8003FCF8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8003FCFC  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8003FD00  98 03 00 30 */	stb r0, 0x30(r3)
/* 8003FD04  4E 80 00 20 */	blr 
