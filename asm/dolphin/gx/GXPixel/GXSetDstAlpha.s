lbl_8035FE04:
/* 8035FE04  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035FE08  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 8035FE0C  38 00 00 61 */	li r0, 0x61
/* 8035FE10  80 E6 01 D4 */	lwz r7, 0x1d4(r6)
/* 8035FE14  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035FE18  50 A7 06 3E */	rlwimi r7, r5, 0, 0x18, 0x1f
/* 8035FE1C  98 04 80 00 */	stb r0, 0x8000(r4)  /* 0xCC008000@l */
/* 8035FE20  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035FE24  38 67 00 00 */	addi r3, r7, 0
/* 8035FE28  50 03 45 EE */	rlwimi r3, r0, 8, 0x17, 0x17
/* 8035FE2C  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8035FE30  38 00 00 00 */	li r0, 0
/* 8035FE34  90 66 01 D4 */	stw r3, 0x1d4(r6)
/* 8035FE38  B0 06 00 02 */	sth r0, 2(r6)
/* 8035FE3C  4E 80 00 20 */	blr 
