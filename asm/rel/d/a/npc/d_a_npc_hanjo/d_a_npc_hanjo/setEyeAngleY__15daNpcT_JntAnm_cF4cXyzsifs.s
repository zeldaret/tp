lbl_809FFA88:
/* 809FFA88  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809FFA8C  7C 08 02 A6 */	mflr r0
/* 809FFA90  90 01 00 64 */	stw r0, 0x64(r1)
/* 809FFA94  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809FFA98  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809FFA9C  39 61 00 50 */	addi r11, r1, 0x50
/* 809FFAA0  4B 96 27 39 */	bl _savegpr_28
/* 809FFAA4  7C 7F 1B 78 */	mr r31, r3
/* 809FFAA8  7C 80 23 78 */	mr r0, r4
/* 809FFAAC  7C BC 2B 78 */	mr r28, r5
/* 809FFAB0  7C DD 33 78 */	mr r29, r6
/* 809FFAB4  FF E0 08 90 */	fmr f31, f1
/* 809FFAB8  7C FE 3B 78 */	mr r30, r7
/* 809FFABC  38 A0 00 00 */	li r5, 0
/* 809FFAC0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 809FFAC4  28 04 00 00 */	cmplwi r4, 0
/* 809FFAC8  41 82 00 44 */	beq lbl_809FFB0C
/* 809FFACC  38 61 00 08 */	addi r3, r1, 8
/* 809FFAD0  7C 05 03 78 */	mr r5, r0
/* 809FFAD4  4B 86 70 61 */	bl __mi__4cXyzCFRC3Vec
/* 809FFAD8  C0 21 00 08 */	lfs f1, 8(r1)
/* 809FFADC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809FFAE0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809FFAE4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FFAE8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 809FFAEC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809FFAF0  4B 86 7B 85 */	bl cM_atan2s__Fff
/* 809FFAF4  7C BC 18 50 */	subf r5, r28, r3
/* 809FFAF8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 809FFAFC  7C 1C 00 50 */	subf r0, r28, r0
/* 809FFB00  7C 00 07 34 */	extsh r0, r0
/* 809FFB04  7C A0 28 50 */	subf r5, r0, r5
/* 809FFB08  7C A5 F2 14 */	add r5, r5, r30
lbl_809FFB0C:
/* 809FFB0C  2C 1D 00 00 */	cmpwi r29, 0
/* 809FFB10  41 82 00 0C */	beq lbl_809FFB1C
/* 809FFB14  7C 05 00 D0 */	neg r0, r5
/* 809FFB18  7C 05 07 34 */	extsh r5, r0
lbl_809FFB1C:
/* 809FFB1C  3C 60 80 A0 */	lis r3, lit_4593@ha /* 0x80A00718@ha */
/* 809FFB20  C0 63 07 18 */	lfs f3, lit_4593@l(r3)  /* 0x80A00718@l */
/* 809FFB24  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809FFB28  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 809FFB2C  3C 60 80 A0 */	lis r3, lit_5238@ha /* 0x80A00748@ha */
/* 809FFB30  C8 43 07 48 */	lfd f2, lit_5238@l(r3)  /* 0x80A00748@l */
/* 809FFB34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809FFB38  90 01 00 24 */	stw r0, 0x24(r1)
/* 809FFB3C  3C 60 43 30 */	lis r3, 0x4330
/* 809FFB40  90 61 00 20 */	stw r3, 0x20(r1)
/* 809FFB44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809FFB48  EC 20 10 28 */	fsubs f1, f0, f2
/* 809FFB4C  EC 03 20 28 */	fsubs f0, f3, f4
/* 809FFB50  EC 21 00 32 */	fmuls f1, f1, f0
/* 809FFB54  7C A0 07 34 */	extsh r0, r5
/* 809FFB58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809FFB5C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809FFB60  90 61 00 28 */	stw r3, 0x28(r1)
/* 809FFB64  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809FFB68  EC 00 10 28 */	fsubs f0, f0, f2
/* 809FFB6C  EC 00 01 32 */	fmuls f0, f0, f4
/* 809FFB70  EC 01 00 2A */	fadds f0, f1, f0
/* 809FFB74  FC 00 00 1E */	fctiwz f0, f0
/* 809FFB78  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809FFB7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809FFB80  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 809FFB84  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809FFB88  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809FFB8C  39 61 00 50 */	addi r11, r1, 0x50
/* 809FFB90  4B 96 26 95 */	bl _restgpr_28
/* 809FFB94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809FFB98  7C 08 03 A6 */	mtlr r0
/* 809FFB9C  38 21 00 60 */	addi r1, r1, 0x60
/* 809FFBA0  4E 80 00 20 */	blr 
