lbl_8024C590:
/* 8024C590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C594  7C 08 02 A6 */	mflr r0
/* 8024C598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C59C  38 84 00 04 */	addi r4, r4, 4
/* 8024C5A0  4B FF EB 91 */	bl getParam__10dMsgFlow_cFPUc
/* 8024C5A4  C8 22 B3 A0 */	lfd f1, lit_6040(r2)
/* 8024C5A8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8024C5AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024C5B0  3C 00 43 30 */	lis r0, 0x4330
/* 8024C5B4  90 01 00 08 */	stw r0, 8(r1)
/* 8024C5B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024C5BC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8024C5C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024C5C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024C5C8  C0 03 5D C0 */	lfs f0, 0x5dc0(r3)
/* 8024C5CC  EC 00 08 2A */	fadds f0, f0, f1
/* 8024C5D0  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8024C5D4  38 00 00 00 */	li r0, 0
/* 8024C5D8  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8024C5DC  38 60 00 01 */	li r3, 1
/* 8024C5E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C5E4  7C 08 03 A6 */	mtlr r0
/* 8024C5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C5EC  4E 80 00 20 */	blr 
