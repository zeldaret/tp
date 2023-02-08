lbl_802DE744:
/* 802DE744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DE748  7C 08 02 A6 */	mflr r0
/* 802DE74C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DE750  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802DE754  7C 7F 1B 78 */	mr r31, r3
/* 802DE758  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802DE75C  88 63 00 10 */	lbz r3, 0x10(r3)
/* 802DE760  30 03 FF FF */	addic r0, r3, -1
/* 802DE764  7D 40 19 10 */	subfe r10, r0, r3
/* 802DE768  98 9F 00 3A */	stb r4, 0x3a(r31)
/* 802DE76C  80 FF 00 20 */	lwz r7, 0x20(r31)
/* 802DE770  80 67 00 1C */	lwz r3, 0x1c(r7)
/* 802DE774  28 03 00 00 */	cmplwi r3, 0
/* 802DE778  38 00 00 20 */	li r0, 0x20
/* 802DE77C  41 82 00 08 */	beq lbl_802DE784
/* 802DE780  7C 60 1B 78 */	mr r0, r3
lbl_802DE784:
/* 802DE784  7C 07 02 14 */	add r0, r7, r0
/* 802DE788  90 81 00 08 */	stw r4, 8(r1)
/* 802DE78C  7F E3 FB 78 */	mr r3, r31
/* 802DE790  7C 04 03 78 */	mr r4, r0
/* 802DE794  A0 A7 00 02 */	lhz r5, 2(r7)
/* 802DE798  A0 C7 00 04 */	lhz r6, 4(r7)
/* 802DE79C  88 E7 00 00 */	lbz r7, 0(r7)
/* 802DE7A0  89 1F 00 30 */	lbz r8, 0x30(r31)
/* 802DE7A4  89 3F 00 31 */	lbz r9, 0x31(r31)
/* 802DE7A8  48 07 F8 E5 */	bl GXInitTexObjCI
/* 802DE7AC  81 1F 00 20 */	lwz r8, 0x20(r31)
/* 802DE7B0  7F E3 FB 78 */	mr r3, r31
/* 802DE7B4  88 9F 00 32 */	lbz r4, 0x32(r31)
/* 802DE7B8  88 BF 00 33 */	lbz r5, 0x33(r31)
/* 802DE7BC  A0 1F 00 34 */	lhz r0, 0x34(r31)
/* 802DE7C0  C8 62 C5 E0 */	lfd f3, lit_456(r2)
/* 802DE7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE7C8  3C C0 43 30 */	lis r6, 0x4330
/* 802DE7CC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802DE7D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802DE7D4  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE7D8  C0 42 C5 D8 */	lfs f2, lit_453(r2)
/* 802DE7DC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 802DE7E0  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 802DE7E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DE7E8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802DE7EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802DE7F0  EC 00 18 28 */	fsubs f0, f0, f3
/* 802DE7F4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 802DE7F8  A8 1F 00 38 */	lha r0, 0x38(r31)
/* 802DE7FC  C8 62 C5 E8 */	lfd f3, lit_459(r2)
/* 802DE800  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802DE804  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE808  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802DE80C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802DE810  EC 60 18 28 */	fsubs f3, f0, f3
/* 802DE814  C0 02 C5 DC */	lfs f0, lit_454(r2)
/* 802DE818  EC 63 00 24 */	fdivs f3, f3, f0
/* 802DE81C  88 C8 00 12 */	lbz r6, 0x12(r8)
/* 802DE820  88 E8 00 11 */	lbz r7, 0x11(r8)
/* 802DE824  89 08 00 13 */	lbz r8, 0x13(r8)
/* 802DE828  48 07 F8 AD */	bl GXInitTexObjLOD
/* 802DE82C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802DE830  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DE834  7C 08 03 A6 */	mtlr r0
/* 802DE838  38 21 00 30 */	addi r1, r1, 0x30
/* 802DE83C  4E 80 00 20 */	blr 
