lbl_809B8AA0:
/* 809B8AA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809B8AA4  7C 08 02 A6 */	mflr r0
/* 809B8AA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 809B8AAC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809B8AB0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809B8AB4  39 61 00 50 */	addi r11, r1, 0x50
/* 809B8AB8  4B 9A 97 21 */	bl _savegpr_28
/* 809B8ABC  7C 7F 1B 78 */	mr r31, r3
/* 809B8AC0  7C 80 23 78 */	mr r0, r4
/* 809B8AC4  7C BC 2B 78 */	mr r28, r5
/* 809B8AC8  7C DD 33 78 */	mr r29, r6
/* 809B8ACC  FF E0 08 90 */	fmr f31, f1
/* 809B8AD0  7C FE 3B 78 */	mr r30, r7
/* 809B8AD4  38 A0 00 00 */	li r5, 0
/* 809B8AD8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 809B8ADC  28 04 00 00 */	cmplwi r4, 0
/* 809B8AE0  41 82 00 44 */	beq lbl_809B8B24
/* 809B8AE4  38 61 00 08 */	addi r3, r1, 8
/* 809B8AE8  7C 05 03 78 */	mr r5, r0
/* 809B8AEC  4B 8A E0 49 */	bl __mi__4cXyzCFRC3Vec
/* 809B8AF0  C0 21 00 08 */	lfs f1, 8(r1)
/* 809B8AF4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809B8AF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809B8AFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B8B00  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 809B8B04  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809B8B08  4B 8A EB 6D */	bl cM_atan2s__Fff
/* 809B8B0C  7C BC 18 50 */	subf r5, r28, r3
/* 809B8B10  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 809B8B14  7C 1C 00 50 */	subf r0, r28, r0
/* 809B8B18  7C 00 07 34 */	extsh r0, r0
/* 809B8B1C  7C A0 28 50 */	subf r5, r0, r5
/* 809B8B20  7C A5 F2 14 */	add r5, r5, r30
lbl_809B8B24:
/* 809B8B24  2C 1D 00 00 */	cmpwi r29, 0
/* 809B8B28  41 82 00 0C */	beq lbl_809B8B34
/* 809B8B2C  7C 05 00 D0 */	neg r0, r5
/* 809B8B30  7C 05 07 34 */	extsh r5, r0
lbl_809B8B34:
/* 809B8B34  3C 60 80 9C */	lis r3, lit_3916@ha /* 0x809B9378@ha */
/* 809B8B38  C0 63 93 78 */	lfs f3, lit_3916@l(r3)  /* 0x809B9378@l */
/* 809B8B3C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809B8B40  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 809B8B44  3C 60 80 9C */	lis r3, lit_5138@ha /* 0x809B943C@ha */
/* 809B8B48  C8 43 94 3C */	lfd f2, lit_5138@l(r3)  /* 0x809B943C@l */
/* 809B8B4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809B8B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B8B54  3C 60 43 30 */	lis r3, 0x4330
/* 809B8B58  90 61 00 20 */	stw r3, 0x20(r1)
/* 809B8B5C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809B8B60  EC 20 10 28 */	fsubs f1, f0, f2
/* 809B8B64  EC 03 20 28 */	fsubs f0, f3, f4
/* 809B8B68  EC 21 00 32 */	fmuls f1, f1, f0
/* 809B8B6C  7C A0 07 34 */	extsh r0, r5
/* 809B8B70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809B8B74  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809B8B78  90 61 00 28 */	stw r3, 0x28(r1)
/* 809B8B7C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809B8B80  EC 00 10 28 */	fsubs f0, f0, f2
/* 809B8B84  EC 00 01 32 */	fmuls f0, f0, f4
/* 809B8B88  EC 01 00 2A */	fadds f0, f1, f0
/* 809B8B8C  FC 00 00 1E */	fctiwz f0, f0
/* 809B8B90  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809B8B94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B8B98  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 809B8B9C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809B8BA0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809B8BA4  39 61 00 50 */	addi r11, r1, 0x50
/* 809B8BA8  4B 9A 96 7D */	bl _restgpr_28
/* 809B8BAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809B8BB0  7C 08 03 A6 */	mtlr r0
/* 809B8BB4  38 21 00 60 */	addi r1, r1, 0x60
/* 809B8BB8  4E 80 00 20 */	blr 
