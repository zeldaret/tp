lbl_80AACB34:
/* 80AACB34  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AACB38  7C 08 02 A6 */	mflr r0
/* 80AACB3C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AACB40  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AACB44  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AACB48  39 61 00 50 */	addi r11, r1, 0x50
/* 80AACB4C  4B 8B 56 8C */	b _savegpr_28
/* 80AACB50  7C 7F 1B 78 */	mr r31, r3
/* 80AACB54  7C 80 23 78 */	mr r0, r4
/* 80AACB58  7C BC 2B 78 */	mr r28, r5
/* 80AACB5C  7C DD 33 78 */	mr r29, r6
/* 80AACB60  FF E0 08 90 */	fmr f31, f1
/* 80AACB64  7C FE 3B 78 */	mr r30, r7
/* 80AACB68  38 A0 00 00 */	li r5, 0
/* 80AACB6C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AACB70  28 04 00 00 */	cmplwi r4, 0
/* 80AACB74  41 82 00 44 */	beq lbl_80AACBB8
/* 80AACB78  38 61 00 08 */	addi r3, r1, 8
/* 80AACB7C  7C 05 03 78 */	mr r5, r0
/* 80AACB80  4B 7B 9F B4 */	b __mi__4cXyzCFRC3Vec
/* 80AACB84  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AACB88  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AACB8C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AACB90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AACB94  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AACB98  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AACB9C  4B 7B AA D8 */	b cM_atan2s__Fff
/* 80AACBA0  7C BC 18 50 */	subf r5, r28, r3
/* 80AACBA4  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AACBA8  7C 1C 00 50 */	subf r0, r28, r0
/* 80AACBAC  7C 00 07 34 */	extsh r0, r0
/* 80AACBB0  7C A0 28 50 */	subf r5, r0, r5
/* 80AACBB4  7C A5 F2 14 */	add r5, r5, r30
lbl_80AACBB8:
/* 80AACBB8  2C 1D 00 00 */	cmpwi r29, 0
/* 80AACBBC  41 82 00 0C */	beq lbl_80AACBC8
/* 80AACBC0  7C 05 00 D0 */	neg r0, r5
/* 80AACBC4  7C 05 07 34 */	extsh r5, r0
lbl_80AACBC8:
/* 80AACBC8  3C 60 80 AB */	lis r3, lit_4418@ha
/* 80AACBCC  C0 63 D2 B8 */	lfs f3, lit_4418@l(r3)
/* 80AACBD0  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AACBD4  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AACBD8  3C 60 80 AB */	lis r3, lit_4845@ha
/* 80AACBDC  C8 43 D2 EC */	lfd f2, lit_4845@l(r3)
/* 80AACBE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AACBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AACBE8  3C 60 43 30 */	lis r3, 0x4330
/* 80AACBEC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AACBF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AACBF4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AACBF8  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AACBFC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AACC00  7C A0 07 34 */	extsh r0, r5
/* 80AACC04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AACC08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AACC0C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AACC10  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AACC14  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AACC18  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AACC1C  EC 01 00 2A */	fadds f0, f1, f0
/* 80AACC20  FC 00 00 1E */	fctiwz f0, f0
/* 80AACC24  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AACC28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AACC2C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AACC30  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AACC34  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AACC38  39 61 00 50 */	addi r11, r1, 0x50
/* 80AACC3C  4B 8B 55 E8 */	b _restgpr_28
/* 80AACC40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AACC44  7C 08 03 A6 */	mtlr r0
/* 80AACC48  38 21 00 60 */	addi r1, r1, 0x60
/* 80AACC4C  4E 80 00 20 */	blr 
