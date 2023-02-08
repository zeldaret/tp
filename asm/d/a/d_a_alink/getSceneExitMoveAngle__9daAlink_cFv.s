lbl_800BE9D4:
/* 800BE9D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BE9D8  7C 08 02 A6 */	mflr r0
/* 800BE9DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BE9E0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800BE9E4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800BE9E8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 800BE9EC  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 800BE9F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BE9F4  93 C1 00 08 */	stw r30, 8(r1)
/* 800BE9F8  7C 7E 1B 78 */	mr r30, r3
/* 800BE9FC  80 83 2F 58 */	lwz r4, 0x2f58(r3)
/* 800BEA00  28 04 00 00 */	cmplwi r4, 0
/* 800BEA04  40 82 00 0C */	bne lbl_800BEA10
/* 800BEA08  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800BEA0C  48 00 00 C4 */	b lbl_800BEAD0
lbl_800BEA10:
/* 800BEA10  A0 04 00 00 */	lhz r0, 0(r4)
/* 800BEA14  88 BE 2F C2 */	lbz r5, 0x2fc2(r30)
/* 800BEA18  7C 00 28 00 */	cmpw r0, r5
/* 800BEA1C  40 82 00 0C */	bne lbl_800BEA28
/* 800BEA20  A8 7E 06 06 */	lha r3, 0x606(r30)
/* 800BEA24  48 00 00 AC */	b lbl_800BEAD0
lbl_800BEA28:
/* 800BEA28  80 84 00 08 */	lwz r4, 8(r4)
/* 800BEA2C  54 A0 25 36 */	rlwinm r0, r5, 4, 0x14, 0x1b
/* 800BEA30  7F E4 02 14 */	add r31, r4, r0
/* 800BEA34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800BEA38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800BEA3C  EF E1 00 28 */	fsubs f31, f1, f0
/* 800BEA40  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 800BEA44  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800BEA48  EF C1 00 28 */	fsubs f30, f1, f0
/* 800BEA4C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800BEA50  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800BEA54  7D 89 03 A6 */	mtctr r12
/* 800BEA58  4E 80 04 21 */	bctrl 
/* 800BEA5C  28 03 00 00 */	cmplwi r3, 0
/* 800BEA60  41 82 00 0C */	beq lbl_800BEA6C
/* 800BEA64  C0 42 93 5C */	lfs f2, lit_8322(r2)
/* 800BEA68  48 00 00 08 */	b lbl_800BEA70
lbl_800BEA6C:
/* 800BEA6C  C0 42 94 54 */	lfs f2, lit_14784(r2)
lbl_800BEA70:
/* 800BEA70  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 800BEA74  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 800BEA78  EC 01 00 2A */	fadds f0, f1, f0
/* 800BEA7C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800BEA80  40 80 00 44 */	bge lbl_800BEAC4
/* 800BEA84  88 7E 2F C2 */	lbz r3, 0x2fc2(r30)
/* 800BEA88  38 03 00 01 */	addi r0, r3, 1
/* 800BEA8C  98 1E 2F C2 */	stb r0, 0x2fc2(r30)
/* 800BEA90  80 7E 2F 58 */	lwz r3, 0x2f58(r30)
/* 800BEA94  A0 63 00 00 */	lhz r3, 0(r3)
/* 800BEA98  88 1E 2F C2 */	lbz r0, 0x2fc2(r30)
/* 800BEA9C  7C 03 00 00 */	cmpw r3, r0
/* 800BEAA0  40 82 00 0C */	bne lbl_800BEAAC
/* 800BEAA4  A8 7E 06 06 */	lha r3, 0x606(r30)
/* 800BEAA8  48 00 00 28 */	b lbl_800BEAD0
lbl_800BEAAC:
/* 800BEAAC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 800BEAB0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800BEAB4  EF E1 00 28 */	fsubs f31, f1, f0
/* 800BEAB8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 800BEABC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800BEAC0  EF C1 00 28 */	fsubs f30, f1, f0
lbl_800BEAC4:
/* 800BEAC4  FC 20 F8 90 */	fmr f1, f31
/* 800BEAC8  FC 40 F0 90 */	fmr f2, f30
/* 800BEACC  48 1A 8B A9 */	bl cM_atan2s__Fff
lbl_800BEAD0:
/* 800BEAD0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800BEAD4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800BEAD8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 800BEADC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 800BEAE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BEAE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BEAE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BEAEC  7C 08 03 A6 */	mtlr r0
/* 800BEAF0  38 21 00 30 */	addi r1, r1, 0x30
/* 800BEAF4  4E 80 00 20 */	blr 
