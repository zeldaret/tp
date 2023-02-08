lbl_80D4B988:
/* 80D4B988  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D4B98C  7C 08 02 A6 */	mflr r0
/* 80D4B990  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D4B994  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D4B998  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D4B99C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D4B9A0  4B 61 68 39 */	bl _savegpr_28
/* 80D4B9A4  7C 7F 1B 78 */	mr r31, r3
/* 80D4B9A8  7C 80 23 78 */	mr r0, r4
/* 80D4B9AC  7C BC 2B 78 */	mr r28, r5
/* 80D4B9B0  7C DD 33 78 */	mr r29, r6
/* 80D4B9B4  FF E0 08 90 */	fmr f31, f1
/* 80D4B9B8  7C FE 3B 78 */	mr r30, r7
/* 80D4B9BC  38 A0 00 00 */	li r5, 0
/* 80D4B9C0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80D4B9C4  28 04 00 00 */	cmplwi r4, 0
/* 80D4B9C8  41 82 00 44 */	beq lbl_80D4BA0C
/* 80D4B9CC  38 61 00 08 */	addi r3, r1, 8
/* 80D4B9D0  7C 05 03 78 */	mr r5, r0
/* 80D4B9D4  4B 51 B1 61 */	bl __mi__4cXyzCFRC3Vec
/* 80D4B9D8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80D4B9DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D4B9E0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D4B9E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D4B9E8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80D4B9EC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80D4B9F0  4B 51 BC 85 */	bl cM_atan2s__Fff
/* 80D4B9F4  7C BC 18 50 */	subf r5, r28, r3
/* 80D4B9F8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80D4B9FC  7C 1C 00 50 */	subf r0, r28, r0
/* 80D4BA00  7C 00 07 34 */	extsh r0, r0
/* 80D4BA04  7C A0 28 50 */	subf r5, r0, r5
/* 80D4BA08  7C A5 F2 14 */	add r5, r5, r30
lbl_80D4BA0C:
/* 80D4BA0C  2C 1D 00 00 */	cmpwi r29, 0
/* 80D4BA10  41 82 00 0C */	beq lbl_80D4BA1C
/* 80D4BA14  7C 05 00 D0 */	neg r0, r5
/* 80D4BA18  7C 05 07 34 */	extsh r5, r0
lbl_80D4BA1C:
/* 80D4BA1C  3C 60 80 D5 */	lis r3, lit_4348@ha /* 0x80D4C114@ha */
/* 80D4BA20  C0 63 C1 14 */	lfs f3, lit_4348@l(r3)  /* 0x80D4C114@l */
/* 80D4BA24  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80D4BA28  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80D4BA2C  3C 60 80 D5 */	lis r3, lit_4666@ha /* 0x80D4C138@ha */
/* 80D4BA30  C8 43 C1 38 */	lfd f2, lit_4666@l(r3)  /* 0x80D4C138@l */
/* 80D4BA34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4BA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D4BA3C  3C 60 43 30 */	lis r3, 0x4330
/* 80D4BA40  90 61 00 20 */	stw r3, 0x20(r1)
/* 80D4BA44  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80D4BA48  EC 20 10 28 */	fsubs f1, f0, f2
/* 80D4BA4C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80D4BA50  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D4BA54  7C A0 07 34 */	extsh r0, r5
/* 80D4BA58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D4BA5C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D4BA60  90 61 00 28 */	stw r3, 0x28(r1)
/* 80D4BA64  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80D4BA68  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D4BA6C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80D4BA70  EC 01 00 2A */	fadds f0, f1, f0
/* 80D4BA74  FC 00 00 1E */	fctiwz f0, f0
/* 80D4BA78  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80D4BA7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4BA80  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80D4BA84  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D4BA88  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D4BA8C  39 61 00 50 */	addi r11, r1, 0x50
/* 80D4BA90  4B 61 67 95 */	bl _restgpr_28
/* 80D4BA94  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D4BA98  7C 08 03 A6 */	mtlr r0
/* 80D4BA9C  38 21 00 60 */	addi r1, r1, 0x60
/* 80D4BAA0  4E 80 00 20 */	blr 
