lbl_800738CC:
/* 800738CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800738D0  7C 08 02 A6 */	mflr r0
/* 800738D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800738D8  90 81 00 08 */	stw r4, 8(r1)
/* 800738DC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 800738E0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 800738E4  38 81 00 08 */	addi r4, r1, 8
/* 800738E8  4B FA 5F 11 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800738EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800738F0  7C 08 03 A6 */	mtlr r0
/* 800738F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800738F8  4E 80 00 20 */	blr 
