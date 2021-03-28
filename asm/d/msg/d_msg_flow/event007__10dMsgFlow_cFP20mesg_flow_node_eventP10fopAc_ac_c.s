lbl_8024C694:
/* 8024C694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C698  7C 08 02 A6 */	mflr r0
/* 8024C69C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C6A0  38 84 00 04 */	addi r4, r4, 4
/* 8024C6A4  4B FF EA 8D */	bl getParam__10dMsgFlow_cFPUc
/* 8024C6A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8024C6AC  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 8024C6B0  A8 85 5D CC */	lha r4, 0x5dcc(r5)
/* 8024C6B4  7C 03 00 D0 */	neg r0, r3
/* 8024C6B8  7C 00 07 34 */	extsh r0, r0
/* 8024C6BC  7C 04 02 14 */	add r0, r4, r0
/* 8024C6C0  B0 05 5D CC */	sth r0, 0x5dcc(r5)
/* 8024C6C4  38 60 00 01 */	li r3, 1
/* 8024C6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C6CC  7C 08 03 A6 */	mtlr r0
/* 8024C6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C6D4  4E 80 00 20 */	blr 
