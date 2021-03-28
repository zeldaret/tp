lbl_80754A74:
/* 80754A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80754A78  7C 08 02 A6 */	mflr r0
/* 80754A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80754A80  7C 65 1B 78 */	mr r5, r3
/* 80754A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80754A88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80754A8C  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80754A90  7C 05 07 74 */	extsb r5, r0
/* 80754A94  4B 8E 08 CC */	b isSwitch__10dSv_info_cCFii
/* 80754A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80754A9C  7C 08 03 A6 */	mtlr r0
/* 80754AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80754AA4  4E 80 00 20 */	blr 
