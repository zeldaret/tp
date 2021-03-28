lbl_80C75F70:
/* 80C75F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75F74  7C 08 02 A6 */	mflr r0
/* 80C75F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C75F80  7C 7F 1B 78 */	mr r31, r3
/* 80C75F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C75F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C75F8C  88 9F 05 E2 */	lbz r4, 0x5e2(r31)
/* 80C75F90  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C75F94  7C 05 07 74 */	extsb r5, r0
/* 80C75F98  4B 3B F3 C8 */	b isSwitch__10dSv_info_cCFii
/* 80C75F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C75FA0  41 82 00 0C */	beq lbl_80C75FAC
/* 80C75FA4  7F E3 FB 78 */	mr r3, r31
/* 80C75FA8  48 00 00 19 */	bl init_modeOpenWait0__13daLv6SzGate_cFv
lbl_80C75FAC:
/* 80C75FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C75FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75FB4  7C 08 03 A6 */	mtlr r0
/* 80C75FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C75FBC  4E 80 00 20 */	blr 
