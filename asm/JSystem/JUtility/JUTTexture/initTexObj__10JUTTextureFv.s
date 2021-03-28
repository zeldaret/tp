lbl_802DE658:
/* 802DE658  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DE65C  7C 08 02 A6 */	mflr r0
/* 802DE660  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DE664  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802DE668  7C 7F 1B 78 */	mr r31, r3
/* 802DE66C  80 E3 00 20 */	lwz r7, 0x20(r3)
/* 802DE670  88 67 00 10 */	lbz r3, 0x10(r7)
/* 802DE674  30 03 FF FF */	addic r0, r3, -1
/* 802DE678  7D 40 19 10 */	subfe r10, r0, r3
/* 802DE67C  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 802DE680  28 03 00 00 */	cmplwi r3, 0
/* 802DE684  38 00 00 20 */	li r0, 0x20
/* 802DE688  41 82 00 08 */	beq lbl_802DE690
/* 802DE68C  7C 60 1B 78 */	mr r0, r3
lbl_802DE690:
/* 802DE690  7C 87 02 14 */	add r4, r7, r0
/* 802DE694  7F E3 FB 78 */	mr r3, r31
/* 802DE698  A0 A7 00 02 */	lhz r5, 2(r7)
/* 802DE69C  A0 C7 00 04 */	lhz r6, 4(r7)
/* 802DE6A0  88 E7 00 00 */	lbz r7, 0(r7)
/* 802DE6A4  89 1F 00 30 */	lbz r8, 0x30(r31)
/* 802DE6A8  89 3F 00 31 */	lbz r9, 0x31(r31)
/* 802DE6AC  48 07 F7 95 */	bl GXInitTexObj
/* 802DE6B0  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE6B4  7F E3 FB 78 */	mr r3, r31
/* 802DE6B8  88 9F 00 32 */	lbz r4, 0x32(r31)
/* 802DE6BC  88 BF 00 33 */	lbz r5, 0x33(r31)
/* 802DE6C0  A0 1F 00 34 */	lhz r0, 0x34(r31)
/* 802DE6C4  C8 62 C5 E0 */	lfd f3, lit_456(r2)
/* 802DE6C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802DE6CC  3C C0 43 30 */	lis r6, 0x4330
/* 802DE6D0  90 C1 00 08 */	stw r6, 8(r1)
/* 802DE6D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802DE6D8  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE6DC  C0 42 C5 D8 */	lfs f2, lit_453(r2)
/* 802DE6E0  EC 20 00 B2 */	fmuls f1, f0, f2
/* 802DE6E4  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 802DE6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE6EC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802DE6F0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DE6F4  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE6F8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 802DE6FC  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802DE700  C8 62 C5 E8 */	lfd f3, lit_459(r2)
/* 802DE704  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802DE708  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DE70C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802DE710  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DE714  EC 60 18 28 */	fsubs f3, f0, f3
/* 802DE718  C0 02 C5 DC */	lfs f0, lit_454(r2)
/* 802DE71C  EC 63 00 24 */	fdivs f3, f3, f0
/* 802DE720  88 C8 00 12 */	lbz r6, 0x12(r8)
/* 802DE724  88 E8 00 11 */	lbz r7, 0x11(r8)
/* 802DE728  89 08 00 13 */	lbz r8, 0x13(r8)
/* 802DE72C  48 07 F9 A9 */	bl GXInitTexObjLOD
/* 802DE730  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802DE734  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DE738  7C 08 03 A6 */	mtlr r0
/* 802DE73C  38 21 00 30 */	addi r1, r1, 0x30
/* 802DE740  4E 80 00 20 */	blr 
