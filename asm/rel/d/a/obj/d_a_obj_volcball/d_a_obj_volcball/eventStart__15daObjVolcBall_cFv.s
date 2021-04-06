lbl_80D22DDC:
/* 80D22DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D22DE0  7C 08 02 A6 */	mflr r0
/* 80D22DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22DE8  80 03 29 20 */	lwz r0, 0x2920(r3)
/* 80D22DEC  90 01 00 08 */	stw r0, 8(r1)
/* 80D22DF0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80D22DF4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80D22DF8  38 81 00 08 */	addi r4, r1, 8
/* 80D22DFC  4B 2F 69 FD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80D22E00  28 03 00 00 */	cmplwi r3, 0
/* 80D22E04  41 82 00 0C */	beq lbl_80D22E10
/* 80D22E08  38 00 00 01 */	li r0, 1
/* 80D22E0C  98 03 09 5F */	stb r0, 0x95f(r3)
lbl_80D22E10:
/* 80D22E10  38 60 00 01 */	li r3, 1
/* 80D22E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D22E18  7C 08 03 A6 */	mtlr r0
/* 80D22E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D22E20  4E 80 00 20 */	blr 
