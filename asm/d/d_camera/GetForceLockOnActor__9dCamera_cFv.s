lbl_80181500:
/* 80181500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80181504  7C 08 02 A6 */	mflr r0
/* 80181508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018150C  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80181510  90 01 00 08 */	stw r0, 8(r1)
/* 80181514  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80181518  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8018151C  38 81 00 08 */	addi r4, r1, 8
/* 80181520  4B E9 82 D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80181524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80181528  7C 08 03 A6 */	mtlr r0
/* 8018152C  38 21 00 10 */	addi r1, r1, 0x10
/* 80181530  4E 80 00 20 */	blr 
