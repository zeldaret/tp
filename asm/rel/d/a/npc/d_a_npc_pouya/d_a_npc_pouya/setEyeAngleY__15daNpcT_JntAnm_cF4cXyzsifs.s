lbl_80AB19F0:
/* 80AB19F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AB19F4  7C 08 02 A6 */	mflr r0
/* 80AB19F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AB19FC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AB1A00  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AB1A04  39 61 00 50 */	addi r11, r1, 0x50
/* 80AB1A08  4B 8B 07 D1 */	bl _savegpr_28
/* 80AB1A0C  7C 7F 1B 78 */	mr r31, r3
/* 80AB1A10  7C 80 23 78 */	mr r0, r4
/* 80AB1A14  7C BC 2B 78 */	mr r28, r5
/* 80AB1A18  7C DD 33 78 */	mr r29, r6
/* 80AB1A1C  FF E0 08 90 */	fmr f31, f1
/* 80AB1A20  7C FE 3B 78 */	mr r30, r7
/* 80AB1A24  38 A0 00 00 */	li r5, 0
/* 80AB1A28  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AB1A2C  28 04 00 00 */	cmplwi r4, 0
/* 80AB1A30  41 82 00 44 */	beq lbl_80AB1A74
/* 80AB1A34  38 61 00 08 */	addi r3, r1, 8
/* 80AB1A38  7C 05 03 78 */	mr r5, r0
/* 80AB1A3C  4B 7B 50 F9 */	bl __mi__4cXyzCFRC3Vec
/* 80AB1A40  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AB1A44  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AB1A48  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AB1A4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB1A50  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AB1A54  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AB1A58  4B 7B 5C 1D */	bl cM_atan2s__Fff
/* 80AB1A5C  7C BC 18 50 */	subf r5, r28, r3
/* 80AB1A60  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AB1A64  7C 1C 00 50 */	subf r0, r28, r0
/* 80AB1A68  7C 00 07 34 */	extsh r0, r0
/* 80AB1A6C  7C A0 28 50 */	subf r5, r0, r5
/* 80AB1A70  7C A5 F2 14 */	add r5, r5, r30
lbl_80AB1A74:
/* 80AB1A74  2C 1D 00 00 */	cmpwi r29, 0
/* 80AB1A78  41 82 00 0C */	beq lbl_80AB1A84
/* 80AB1A7C  7C 05 00 D0 */	neg r0, r5
/* 80AB1A80  7C 05 07 34 */	extsh r5, r0
lbl_80AB1A84:
/* 80AB1A84  3C 60 80 AB */	lis r3, lit_4414@ha /* 0x80AB20C8@ha */
/* 80AB1A88  C0 63 20 C8 */	lfs f3, lit_4414@l(r3)  /* 0x80AB20C8@l */
/* 80AB1A8C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AB1A90  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AB1A94  3C 60 80 AB */	lis r3, lit_4918@ha /* 0x80AB20F0@ha */
/* 80AB1A98  C8 43 20 F0 */	lfd f2, lit_4918@l(r3)  /* 0x80AB20F0@l */
/* 80AB1A9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB1AA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB1AA4  3C 60 43 30 */	lis r3, 0x4330
/* 80AB1AA8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AB1AAC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AB1AB0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AB1AB4  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AB1AB8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AB1ABC  7C A0 07 34 */	extsh r0, r5
/* 80AB1AC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AB1AC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AB1AC8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AB1ACC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AB1AD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AB1AD4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AB1AD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80AB1ADC  FC 00 00 1E */	fctiwz f0, f0
/* 80AB1AE0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AB1AE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB1AE8  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AB1AEC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AB1AF0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AB1AF4  39 61 00 50 */	addi r11, r1, 0x50
/* 80AB1AF8  4B 8B 07 2D */	bl _restgpr_28
/* 80AB1AFC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AB1B00  7C 08 03 A6 */	mtlr r0
/* 80AB1B04  38 21 00 60 */	addi r1, r1, 0x60
/* 80AB1B08  4E 80 00 20 */	blr 
