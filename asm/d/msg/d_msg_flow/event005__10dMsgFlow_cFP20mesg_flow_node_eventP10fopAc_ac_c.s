lbl_8024C5F0:
/* 8024C5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C5F4  7C 08 02 A6 */	mflr r0
/* 8024C5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C5FC  38 84 00 04 */	addi r4, r4, 4
/* 8024C600  4B FF EB 31 */	bl getParam__10dMsgFlow_cFPUc
/* 8024C604  C8 22 B3 A0 */	lfd f1, lit_6040(r2)
/* 8024C608  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8024C60C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024C610  3C 00 43 30 */	lis r0, 0x4330
/* 8024C614  90 01 00 08 */	stw r0, 8(r1)
/* 8024C618  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024C61C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024C620  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C624  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C628  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8024C62C  FC 00 00 50 */	fneg f0, f0
/* 8024C630  EC 01 00 2A */	fadds f0, f1, f0
/* 8024C634  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8024C638  38 00 00 00 */	li r0, 0
/* 8024C63C  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 8024C640  38 60 00 01 */	li r3, 1
/* 8024C644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C648  7C 08 03 A6 */	mtlr r0
/* 8024C64C  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C650  4E 80 00 20 */	blr 
