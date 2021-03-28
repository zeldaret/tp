lbl_80CD5480:
/* 80CD5480  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CD5484  7C 08 02 A6 */	mflr r0
/* 80CD5488  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CD548C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80CD5490  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80CD5494  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD5498  4B 68 CD 40 */	b _savegpr_28
/* 80CD549C  7C 7F 1B 78 */	mr r31, r3
/* 80CD54A0  7C 80 23 78 */	mr r0, r4
/* 80CD54A4  7C BC 2B 78 */	mr r28, r5
/* 80CD54A8  7C DD 33 78 */	mr r29, r6
/* 80CD54AC  FF E0 08 90 */	fmr f31, f1
/* 80CD54B0  7C FE 3B 78 */	mr r30, r7
/* 80CD54B4  38 A0 00 00 */	li r5, 0
/* 80CD54B8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80CD54BC  28 04 00 00 */	cmplwi r4, 0
/* 80CD54C0  41 82 00 44 */	beq lbl_80CD5504
/* 80CD54C4  38 61 00 08 */	addi r3, r1, 8
/* 80CD54C8  7C 05 03 78 */	mr r5, r0
/* 80CD54CC  4B 59 16 68 */	b __mi__4cXyzCFRC3Vec
/* 80CD54D0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80CD54D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CD54D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CD54DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD54E0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80CD54E4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80CD54E8  4B 59 21 8C */	b cM_atan2s__Fff
/* 80CD54EC  7C BC 18 50 */	subf r5, r28, r3
/* 80CD54F0  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80CD54F4  7C 1C 00 50 */	subf r0, r28, r0
/* 80CD54F8  7C 00 07 34 */	extsh r0, r0
/* 80CD54FC  7C A0 28 50 */	subf r5, r0, r5
/* 80CD5500  7C A5 F2 14 */	add r5, r5, r30
lbl_80CD5504:
/* 80CD5504  2C 1D 00 00 */	cmpwi r29, 0
/* 80CD5508  41 82 00 0C */	beq lbl_80CD5514
/* 80CD550C  7C 05 00 D0 */	neg r0, r5
/* 80CD5510  7C 05 07 34 */	extsh r5, r0
lbl_80CD5514:
/* 80CD5514  3C 60 80 CD */	lis r3, lit_4533@ha
/* 80CD5518  C0 63 5D C8 */	lfs f3, lit_4533@l(r3)
/* 80CD551C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80CD5520  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80CD5524  3C 60 80 CD */	lis r3, lit_5082@ha
/* 80CD5528  C8 43 5D DC */	lfd f2, lit_5082@l(r3)
/* 80CD552C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD5530  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD5534  3C 60 43 30 */	lis r3, 0x4330
/* 80CD5538  90 61 00 20 */	stw r3, 0x20(r1)
/* 80CD553C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CD5540  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CD5544  EC 03 20 28 */	fsubs f0, f3, f4
/* 80CD5548  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CD554C  7C A0 07 34 */	extsh r0, r5
/* 80CD5550  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD5554  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CD5558  90 61 00 28 */	stw r3, 0x28(r1)
/* 80CD555C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CD5560  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD5564  EC 00 01 32 */	fmuls f0, f0, f4
/* 80CD5568  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD556C  FC 00 00 1E */	fctiwz f0, f0
/* 80CD5570  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CD5574  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD5578  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80CD557C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80CD5580  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80CD5584  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD5588  4B 68 CC 9C */	b _restgpr_28
/* 80CD558C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CD5590  7C 08 03 A6 */	mtlr r0
/* 80CD5594  38 21 00 60 */	addi r1, r1, 0x60
/* 80CD5598  4E 80 00 20 */	blr 
