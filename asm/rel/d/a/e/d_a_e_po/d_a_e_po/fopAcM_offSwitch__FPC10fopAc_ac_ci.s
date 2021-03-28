lbl_807573C8:
/* 807573C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807573CC  7C 08 02 A6 */	mflr r0
/* 807573D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807573D4  7C 65 1B 78 */	mr r5, r3
/* 807573D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807573DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807573E0  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 807573E4  7C 05 07 74 */	extsb r5, r0
/* 807573E8  4B 8D DE C8 */	b offSwitch__10dSv_info_cFii
/* 807573EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807573F0  7C 08 03 A6 */	mtlr r0
/* 807573F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807573F8  4E 80 00 20 */	blr 
