lbl_8035FC9C:
/* 8035FC9C  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035FCA0  38 00 00 61 */	li r0, 0x61
/* 8035FCA4  80 E6 01 D8 */	lwz r7, 0x1d8(r6)
/* 8035FCA8  50 67 07 FE */	rlwimi r7, r3, 0, 0x1f, 0x1f
/* 8035FCAC  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035FCB0  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035FCB4  50 87 0F 3C */	rlwimi r7, r4, 1, 0x1c, 0x1e
/* 8035FCB8  50 A7 26 F6 */	rlwimi r7, r5, 4, 0x1b, 0x1b
/* 8035FCBC  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 8035FCC0  38 00 00 00 */	li r0, 0
/* 8035FCC4  90 E6 01 D8 */	stw r7, 0x1d8(r6)
/* 8035FCC8  B0 06 00 02 */	sth r0, 2(r6)
/* 8035FCCC  4E 80 00 20 */	blr 
