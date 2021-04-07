lbl_8035FBF0:
/* 8035FBF0  81 02 CB 80 */	lwz r8, __GXData(r2)
/* 8035FBF4  20 03 00 03 */	subfic r0, r3, 3
/* 8035FBF8  7C 07 00 34 */	cntlzw r7, r0
/* 8035FBFC  20 03 00 02 */	subfic r0, r3, 2
/* 8035FC00  81 28 01 D0 */	lwz r9, 0x1d0(r8)
/* 8035FC04  50 E9 35 28 */	rlwimi r9, r7, 6, 0x14, 0x14
/* 8035FC08  38 E9 00 00 */	addi r7, r9, 0
/* 8035FC0C  50 67 07 FE */	rlwimi r7, r3, 0, 0x1f, 0x1f
/* 8035FC10  7C 00 00 34 */	cntlzw r0, r0
/* 8035FC14  50 07 E7 BC */	rlwimi r7, r0, 0x1c, 0x1e, 0x1e
/* 8035FC18  50 C7 64 26 */	rlwimi r7, r6, 0xc, 0x10, 0x13
/* 8035FC1C  50 87 45 6E */	rlwimi r7, r4, 8, 0x15, 0x17
/* 8035FC20  38 00 00 61 */	li r0, 0x61
/* 8035FC24  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035FC28  98 03 80 00 */	stb r0, 0x8000(r3)  /* 0xCC008000@l */
/* 8035FC2C  50 A7 2E 34 */	rlwimi r7, r5, 5, 0x18, 0x1a
/* 8035FC30  38 00 00 00 */	li r0, 0
/* 8035FC34  90 E3 80 00 */	stw r7, -0x8000(r3)
/* 8035FC38  90 E8 01 D0 */	stw r7, 0x1d0(r8)
/* 8035FC3C  B0 08 00 02 */	sth r0, 2(r8)
/* 8035FC40  4E 80 00 20 */	blr 
