lbl_809475B4:
/* 809475B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809475B8  7C 08 02 A6 */	mflr r0
/* 809475BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809475C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809475C4  7C 7F 1B 78 */	mr r31, r3
/* 809475C8  88 03 09 31 */	lbz r0, 0x931(r3)
/* 809475CC  54 00 20 36 */	slwi r0, r0, 4
/* 809475D0  7C 7F 02 14 */	add r3, r31, r0
/* 809475D4  80 03 08 68 */	lwz r0, 0x868(r3)
/* 809475D8  90 01 00 08 */	stw r0, 8(r1)
/* 809475DC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 809475E0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 809475E4  38 81 00 08 */	addi r4, r1, 8
/* 809475E8  4B 6D 22 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 809475EC  90 7F 08 28 */	stw r3, 0x828(r31)
/* 809475F0  88 1F 09 31 */	lbz r0, 0x931(r31)
/* 809475F4  54 00 20 36 */	slwi r0, r0, 4
/* 809475F8  7C 7F 02 14 */	add r3, r31, r0
/* 809475FC  A0 03 08 70 */	lhz r0, 0x870(r3)
/* 80947600  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 80947604  38 7F 06 20 */	addi r3, r31, 0x620
/* 80947608  7F E4 FB 78 */	mr r4, r31
/* 8094760C  A0 BF 09 1C */	lhz r5, 0x91c(r31)
/* 80947610  38 C0 00 00 */	li r6, 0
/* 80947614  38 E0 00 00 */	li r7, 0
/* 80947618  4B 90 29 78 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8094761C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80947620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80947624  7C 08 03 A6 */	mtlr r0
/* 80947628  38 21 00 20 */	addi r1, r1, 0x20
/* 8094762C  4E 80 00 20 */	blr 
