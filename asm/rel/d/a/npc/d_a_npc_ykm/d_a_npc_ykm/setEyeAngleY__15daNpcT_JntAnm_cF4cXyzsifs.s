lbl_80B5CF8C:
/* 80B5CF8C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B5CF90  7C 08 02 A6 */	mflr r0
/* 80B5CF94  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B5CF98  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B5CF9C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B5CFA0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B5CFA4  4B 80 52 34 */	b _savegpr_28
/* 80B5CFA8  7C 7F 1B 78 */	mr r31, r3
/* 80B5CFAC  7C 80 23 78 */	mr r0, r4
/* 80B5CFB0  7C BC 2B 78 */	mr r28, r5
/* 80B5CFB4  7C DD 33 78 */	mr r29, r6
/* 80B5CFB8  FF E0 08 90 */	fmr f31, f1
/* 80B5CFBC  7C FE 3B 78 */	mr r30, r7
/* 80B5CFC0  38 A0 00 00 */	li r5, 0
/* 80B5CFC4  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B5CFC8  28 04 00 00 */	cmplwi r4, 0
/* 80B5CFCC  41 82 00 44 */	beq lbl_80B5D010
/* 80B5CFD0  38 61 00 08 */	addi r3, r1, 8
/* 80B5CFD4  7C 05 03 78 */	mr r5, r0
/* 80B5CFD8  4B 70 9B 5C */	b __mi__4cXyzCFRC3Vec
/* 80B5CFDC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B5CFE0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B5CFE4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B5CFE8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B5CFEC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B5CFF0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B5CFF4  4B 70 A6 80 */	b cM_atan2s__Fff
/* 80B5CFF8  7C BC 18 50 */	subf r5, r28, r3
/* 80B5CFFC  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B5D000  7C 1C 00 50 */	subf r0, r28, r0
/* 80B5D004  7C 00 07 34 */	extsh r0, r0
/* 80B5D008  7C A0 28 50 */	subf r5, r0, r5
/* 80B5D00C  7C A5 F2 14 */	add r5, r5, r30
lbl_80B5D010:
/* 80B5D010  2C 1D 00 00 */	cmpwi r29, 0
/* 80B5D014  41 82 00 0C */	beq lbl_80B5D020
/* 80B5D018  7C 05 00 D0 */	neg r0, r5
/* 80B5D01C  7C 05 07 34 */	extsh r5, r0
lbl_80B5D020:
/* 80B5D020  3C 60 80 B6 */	lis r3, lit_4613@ha
/* 80B5D024  C0 63 D8 B0 */	lfs f3, lit_4613@l(r3)
/* 80B5D028  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B5D02C  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B5D030  3C 60 80 B6 */	lis r3, lit_5517@ha
/* 80B5D034  C8 43 D9 2C */	lfd f2, lit_5517@l(r3)
/* 80B5D038  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B5D03C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5D040  3C 60 43 30 */	lis r3, 0x4330
/* 80B5D044  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B5D048  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B5D04C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B5D050  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B5D054  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B5D058  7C A0 07 34 */	extsh r0, r5
/* 80B5D05C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B5D060  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B5D064  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B5D068  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B5D06C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B5D070  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B5D074  EC 01 00 2A */	fadds f0, f1, f0
/* 80B5D078  FC 00 00 1E */	fctiwz f0, f0
/* 80B5D07C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B5D080  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5D084  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B5D088  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B5D08C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B5D090  39 61 00 50 */	addi r11, r1, 0x50
/* 80B5D094  4B 80 51 90 */	b _restgpr_28
/* 80B5D098  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B5D09C  7C 08 03 A6 */	mtlr r0
/* 80B5D0A0  38 21 00 60 */	addi r1, r1, 0x60
/* 80B5D0A4  4E 80 00 20 */	blr 
