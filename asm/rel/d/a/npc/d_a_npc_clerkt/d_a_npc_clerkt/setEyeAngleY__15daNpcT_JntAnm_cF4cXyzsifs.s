lbl_8099CB34:
/* 8099CB34  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8099CB38  7C 08 02 A6 */	mflr r0
/* 8099CB3C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8099CB40  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8099CB44  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8099CB48  39 61 00 50 */	addi r11, r1, 0x50
/* 8099CB4C  4B 9C 56 8C */	b _savegpr_28
/* 8099CB50  7C 7F 1B 78 */	mr r31, r3
/* 8099CB54  7C 80 23 78 */	mr r0, r4
/* 8099CB58  7C BC 2B 78 */	mr r28, r5
/* 8099CB5C  7C DD 33 78 */	mr r29, r6
/* 8099CB60  FF E0 08 90 */	fmr f31, f1
/* 8099CB64  7C FE 3B 78 */	mr r30, r7
/* 8099CB68  38 A0 00 00 */	li r5, 0
/* 8099CB6C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8099CB70  28 04 00 00 */	cmplwi r4, 0
/* 8099CB74  41 82 00 44 */	beq lbl_8099CBB8
/* 8099CB78  38 61 00 08 */	addi r3, r1, 8
/* 8099CB7C  7C 05 03 78 */	mr r5, r0
/* 8099CB80  4B 8C 9F B4 */	b __mi__4cXyzCFRC3Vec
/* 8099CB84  C0 21 00 08 */	lfs f1, 8(r1)
/* 8099CB88  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8099CB8C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8099CB90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8099CB94  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8099CB98  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8099CB9C  4B 8C AA D8 */	b cM_atan2s__Fff
/* 8099CBA0  7C BC 18 50 */	subf r5, r28, r3
/* 8099CBA4  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 8099CBA8  7C 1C 00 50 */	subf r0, r28, r0
/* 8099CBAC  7C 00 07 34 */	extsh r0, r0
/* 8099CBB0  7C A0 28 50 */	subf r5, r0, r5
/* 8099CBB4  7C A5 F2 14 */	add r5, r5, r30
lbl_8099CBB8:
/* 8099CBB8  2C 1D 00 00 */	cmpwi r29, 0
/* 8099CBBC  41 82 00 0C */	beq lbl_8099CBC8
/* 8099CBC0  7C 05 00 D0 */	neg r0, r5
/* 8099CBC4  7C 05 07 34 */	extsh r5, r0
lbl_8099CBC8:
/* 8099CBC8  3C 60 80 9A */	lis r3, lit_4490@ha
/* 8099CBCC  C0 63 D3 04 */	lfs f3, lit_4490@l(r3)
/* 8099CBD0  EC 83 F8 24 */	fdivs f4, f3, f31
/* 8099CBD4  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 8099CBD8  3C 60 80 9A */	lis r3, lit_5181@ha
/* 8099CBDC  C8 43 D3 1C */	lfd f2, lit_5181@l(r3)
/* 8099CBE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099CBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099CBE8  3C 60 43 30 */	lis r3, 0x4330
/* 8099CBEC  90 61 00 20 */	stw r3, 0x20(r1)
/* 8099CBF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8099CBF4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8099CBF8  EC 03 20 28 */	fsubs f0, f3, f4
/* 8099CBFC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8099CC00  7C A0 07 34 */	extsh r0, r5
/* 8099CC04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099CC08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8099CC0C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8099CC10  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8099CC14  EC 00 10 28 */	fsubs f0, f0, f2
/* 8099CC18  EC 00 01 32 */	fmuls f0, f0, f4
/* 8099CC1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8099CC20  FC 00 00 1E */	fctiwz f0, f0
/* 8099CC24  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8099CC28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8099CC2C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 8099CC30  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8099CC34  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8099CC38  39 61 00 50 */	addi r11, r1, 0x50
/* 8099CC3C  4B 9C 55 E8 */	b _restgpr_28
/* 8099CC40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8099CC44  7C 08 03 A6 */	mtlr r0
/* 8099CC48  38 21 00 60 */	addi r1, r1, 0x60
/* 8099CC4C  4E 80 00 20 */	blr 
