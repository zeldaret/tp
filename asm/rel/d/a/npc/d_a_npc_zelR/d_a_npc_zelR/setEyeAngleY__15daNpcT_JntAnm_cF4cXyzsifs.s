lbl_80B71508:
/* 80B71508  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B7150C  7C 08 02 A6 */	mflr r0
/* 80B71510  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B71514  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B71518  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B7151C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B71520  4B 7F 0C B8 */	b _savegpr_28
/* 80B71524  7C 7F 1B 78 */	mr r31, r3
/* 80B71528  7C 80 23 78 */	mr r0, r4
/* 80B7152C  7C BC 2B 78 */	mr r28, r5
/* 80B71530  7C DD 33 78 */	mr r29, r6
/* 80B71534  FF E0 08 90 */	fmr f31, f1
/* 80B71538  7C FE 3B 78 */	mr r30, r7
/* 80B7153C  38 A0 00 00 */	li r5, 0
/* 80B71540  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B71544  28 04 00 00 */	cmplwi r4, 0
/* 80B71548  41 82 00 44 */	beq lbl_80B7158C
/* 80B7154C  38 61 00 08 */	addi r3, r1, 8
/* 80B71550  7C 05 03 78 */	mr r5, r0
/* 80B71554  4B 6F 55 E0 */	b __mi__4cXyzCFRC3Vec
/* 80B71558  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B7155C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B71560  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B71564  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B71568  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B7156C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B71570  4B 6F 61 04 */	b cM_atan2s__Fff
/* 80B71574  7C BC 18 50 */	subf r5, r28, r3
/* 80B71578  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B7157C  7C 1C 00 50 */	subf r0, r28, r0
/* 80B71580  7C 00 07 34 */	extsh r0, r0
/* 80B71584  7C A0 28 50 */	subf r5, r0, r5
/* 80B71588  7C A5 F2 14 */	add r5, r5, r30
lbl_80B7158C:
/* 80B7158C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B71590  41 82 00 0C */	beq lbl_80B7159C
/* 80B71594  7C 05 00 D0 */	neg r0, r5
/* 80B71598  7C 05 07 34 */	extsh r5, r0
lbl_80B7159C:
/* 80B7159C  3C 60 80 B7 */	lis r3, lit_4339@ha
/* 80B715A0  C0 63 1B 88 */	lfs f3, lit_4339@l(r3)
/* 80B715A4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B715A8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B715AC  3C 60 80 B7 */	lis r3, lit_4732@ha
/* 80B715B0  C8 43 1B A0 */	lfd f2, lit_4732@l(r3)
/* 80B715B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B715B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B715BC  3C 60 43 30 */	lis r3, 0x4330
/* 80B715C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B715C4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B715C8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B715CC  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B715D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B715D4  7C A0 07 34 */	extsh r0, r5
/* 80B715D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B715DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B715E0  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B715E4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B715E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B715EC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B715F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B715F4  FC 00 00 1E */	fctiwz f0, f0
/* 80B715F8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B715FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B71600  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B71604  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B71608  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B7160C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B71610  4B 7F 0C 14 */	b _restgpr_28
/* 80B71614  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B71618  7C 08 03 A6 */	mtlr r0
/* 80B7161C  38 21 00 60 */	addi r1, r1, 0x60
/* 80B71620  4E 80 00 20 */	blr 
