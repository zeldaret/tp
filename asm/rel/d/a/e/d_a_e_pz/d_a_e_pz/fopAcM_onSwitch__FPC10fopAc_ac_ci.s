lbl_80761220:
/* 80761220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80761224  7C 08 02 A6 */	mflr r0
/* 80761228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076122C  7C 65 1B 78 */	mr r5, r3
/* 80761230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80761234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80761238  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 8076123C  7C 05 07 74 */	extsb r5, r0
/* 80761240  4B 8D 3F C0 */	b onSwitch__10dSv_info_cFii
/* 80761244  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80761248  7C 08 03 A6 */	mtlr r0
/* 8076124C  38 21 00 10 */	addi r1, r1, 0x10
/* 80761250  4E 80 00 20 */	blr 
