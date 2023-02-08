lbl_806753CC:
/* 806753CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806753D0  7C 08 02 A6 */	mflr r0
/* 806753D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806753D8  80 03 05 F4 */	lwz r0, 0x5f4(r3)
/* 806753DC  90 01 00 08 */	stw r0, 8(r1)
/* 806753E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806753E4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806753E8  38 81 00 08 */	addi r4, r1, 8
/* 806753EC  4B 9A 44 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806753F0  28 03 00 00 */	cmplwi r3, 0
/* 806753F4  41 82 00 0C */	beq lbl_80675400
/* 806753F8  38 00 00 01 */	li r0, 1
/* 806753FC  98 03 2C A4 */	stb r0, 0x2ca4(r3)
lbl_80675400:
/* 80675400  38 60 00 01 */	li r3, 1
/* 80675404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80675408  7C 08 03 A6 */	mtlr r0
/* 8067540C  38 21 00 10 */	addi r1, r1, 0x10
/* 80675410  4E 80 00 20 */	blr 
