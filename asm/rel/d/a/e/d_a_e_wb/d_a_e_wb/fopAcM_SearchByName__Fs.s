lbl_807E2500:
/* 807E2500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2504  7C 08 02 A6 */	mflr r0
/* 807E2508  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E250C  B0 61 00 08 */	sth r3, 8(r1)
/* 807E2510  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 807E2514  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 807E2518  38 81 00 08 */	addi r4, r1, 8
/* 807E251C  4B 83 72 DD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807E2520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2524  7C 08 03 A6 */	mtlr r0
/* 807E2528  38 21 00 10 */	addi r1, r1, 0x10
/* 807E252C  4E 80 00 20 */	blr 
