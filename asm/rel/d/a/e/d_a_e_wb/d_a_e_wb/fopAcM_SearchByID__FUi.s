lbl_807E2530:
/* 807E2530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2534  7C 08 02 A6 */	mflr r0
/* 807E2538  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E253C  90 61 00 08 */	stw r3, 8(r1)
/* 807E2540  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807E2544  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807E2548  38 81 00 08 */	addi r4, r1, 8
/* 807E254C  4B 83 72 AD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807E2550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2554  7C 08 03 A6 */	mtlr r0
/* 807E2558  38 21 00 10 */	addi r1, r1, 0x10
/* 807E255C  4E 80 00 20 */	blr 
