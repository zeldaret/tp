lbl_80B674A4:
/* 80B674A4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B674A8  7C 08 02 A6 */	mflr r0
/* 80B674AC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B674B0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B674B4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B674B8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B674BC  4B 7F AD 1C */	b _savegpr_28
/* 80B674C0  7C 7F 1B 78 */	mr r31, r3
/* 80B674C4  7C 80 23 78 */	mr r0, r4
/* 80B674C8  7C BC 2B 78 */	mr r28, r5
/* 80B674CC  7C DD 33 78 */	mr r29, r6
/* 80B674D0  FF E0 08 90 */	fmr f31, f1
/* 80B674D4  7C FE 3B 78 */	mr r30, r7
/* 80B674D8  38 A0 00 00 */	li r5, 0
/* 80B674DC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B674E0  28 04 00 00 */	cmplwi r4, 0
/* 80B674E4  41 82 00 44 */	beq lbl_80B67528
/* 80B674E8  38 61 00 08 */	addi r3, r1, 8
/* 80B674EC  7C 05 03 78 */	mr r5, r0
/* 80B674F0  4B 6F F6 44 */	b __mi__4cXyzCFRC3Vec
/* 80B674F4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B674F8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B674FC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B67500  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B67504  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B67508  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B6750C  4B 70 01 68 */	b cM_atan2s__Fff
/* 80B67510  7C BC 18 50 */	subf r5, r28, r3
/* 80B67514  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B67518  7C 1C 00 50 */	subf r0, r28, r0
/* 80B6751C  7C 00 07 34 */	extsh r0, r0
/* 80B67520  7C A0 28 50 */	subf r5, r0, r5
/* 80B67524  7C A5 F2 14 */	add r5, r5, r30
lbl_80B67528:
/* 80B67528  2C 1D 00 00 */	cmpwi r29, 0
/* 80B6752C  41 82 00 0C */	beq lbl_80B67538
/* 80B67530  7C 05 00 D0 */	neg r0, r5
/* 80B67534  7C 05 07 34 */	extsh r5, r0
lbl_80B67538:
/* 80B67538  3C 60 80 B6 */	lis r3, lit_4669@ha
/* 80B6753C  C0 63 7D 28 */	lfs f3, lit_4669@l(r3)
/* 80B67540  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B67544  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B67548  3C 60 80 B6 */	lis r3, lit_5472@ha
/* 80B6754C  C8 43 7D 90 */	lfd f2, lit_5472@l(r3)
/* 80B67550  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B67554  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B67558  3C 60 43 30 */	lis r3, 0x4330
/* 80B6755C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B67560  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B67564  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B67568  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B6756C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B67570  7C A0 07 34 */	extsh r0, r5
/* 80B67574  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B67578  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B6757C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B67580  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B67584  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B67588  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B6758C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B67590  FC 00 00 1E */	fctiwz f0, f0
/* 80B67594  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B67598  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6759C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B675A0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B675A4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B675A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B675AC  4B 7F AC 78 */	b _restgpr_28
/* 80B675B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B675B4  7C 08 03 A6 */	mtlr r0
/* 80B675B8  38 21 00 60 */	addi r1, r1, 0x60
/* 80B675BC  4E 80 00 20 */	blr 
