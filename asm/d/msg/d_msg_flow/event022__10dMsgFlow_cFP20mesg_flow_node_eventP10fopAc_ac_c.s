lbl_8024CDAC:
/* 8024CDAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024CDB0  7C 08 02 A6 */	mflr r0
/* 8024CDB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024CDB8  38 84 00 04 */	addi r4, r4, 4
/* 8024CDBC  4B FF E3 75 */	bl getParam__10dMsgFlow_cFPUc
/* 8024CDC0  2C 03 00 00 */	cmpwi r3, 0
/* 8024CDC4  40 82 00 08 */	bne lbl_8024CDCC
/* 8024CDC8  38 60 00 64 */	li r3, 0x64
lbl_8024CDCC:
/* 8024CDCC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8024CDD0  38 C4 61 C0 */	addi r6, r4, g_dComIfG_gameInfo@l
/* 8024CDD4  A0 A6 00 06 */	lhz r5, 6(r6)
/* 8024CDD8  80 86 5D D4 */	lwz r4, 0x5dd4(r6)
/* 8024CDDC  C8 22 B3 A0 */	lfd f1, lit_6040(r2)
/* 8024CDE0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8024CDE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024CDE8  3C 00 43 30 */	lis r0, 0x4330
/* 8024CDEC  90 01 00 08 */	stw r0, 8(r1)
/* 8024CDF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8024CDF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 8024CDF8  C0 02 B3 A8 */	lfs f0, lit_6273(r2)
/* 8024CDFC  EC 41 00 24 */	fdivs f2, f1, f0
/* 8024CE00  C8 22 B3 90 */	lfd f1, lit_5116(r2)
/* 8024CE04  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8024CE08  90 01 00 10 */	stw r0, 0x10(r1)
/* 8024CE0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8024CE10  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024CE14  EC 02 00 32 */	fmuls f0, f2, f0
/* 8024CE18  FC 00 00 1E */	fctiwz f0, f0
/* 8024CE1C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8024CE20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8024CE24  7C 04 02 14 */	add r0, r4, r0
/* 8024CE28  90 06 5D D4 */	stw r0, 0x5dd4(r6)
/* 8024CE2C  38 60 00 01 */	li r3, 1
/* 8024CE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024CE34  7C 08 03 A6 */	mtlr r0
/* 8024CE38  38 21 00 20 */	addi r1, r1, 0x20
/* 8024CE3C  4E 80 00 20 */	blr 
