lbl_80237AB0:
/* 80237AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80237AB4  7C 08 02 A6 */	mflr r0
/* 80237AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80237ABC  7C 64 1B 78 */	mr r4, r3
/* 80237AC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80237AC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80237AC8  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 80237ACC  48 00 02 BD */	bl setDemoMessageLocal__12dMsgObject_cFUl
/* 80237AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80237AD4  7C 08 03 A6 */	mtlr r0
/* 80237AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80237ADC  4E 80 00 20 */	blr 
