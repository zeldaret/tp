lbl_80A73370:
/* 80A73370  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A73374  7C 08 02 A6 */	mflr r0
/* 80A73378  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A7337C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A73380  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A73384  39 61 00 50 */	addi r11, r1, 0x50
/* 80A73388  4B 8E EE 51 */	bl _savegpr_28
/* 80A7338C  7C 7F 1B 78 */	mr r31, r3
/* 80A73390  7C 80 23 78 */	mr r0, r4
/* 80A73394  7C BC 2B 78 */	mr r28, r5
/* 80A73398  7C DD 33 78 */	mr r29, r6
/* 80A7339C  FF E0 08 90 */	fmr f31, f1
/* 80A733A0  7C FE 3B 78 */	mr r30, r7
/* 80A733A4  38 A0 00 00 */	li r5, 0
/* 80A733A8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A733AC  28 04 00 00 */	cmplwi r4, 0
/* 80A733B0  41 82 00 44 */	beq lbl_80A733F4
/* 80A733B4  38 61 00 08 */	addi r3, r1, 8
/* 80A733B8  7C 05 03 78 */	mr r5, r0
/* 80A733BC  4B 7F 37 79 */	bl __mi__4cXyzCFRC3Vec
/* 80A733C0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A733C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A733C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A733CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A733D0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A733D4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A733D8  4B 7F 42 9D */	bl cM_atan2s__Fff
/* 80A733DC  7C BC 18 50 */	subf r5, r28, r3
/* 80A733E0  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A733E4  7C 1C 00 50 */	subf r0, r28, r0
/* 80A733E8  7C 00 07 34 */	extsh r0, r0
/* 80A733EC  7C A0 28 50 */	subf r5, r0, r5
/* 80A733F0  7C A5 F2 14 */	add r5, r5, r30
lbl_80A733F4:
/* 80A733F4  2C 1D 00 00 */	cmpwi r29, 0
/* 80A733F8  41 82 00 0C */	beq lbl_80A73404
/* 80A733FC  7C 05 00 D0 */	neg r0, r5
/* 80A73400  7C 05 07 34 */	extsh r5, r0
lbl_80A73404:
/* 80A73404  3C 60 80 A7 */	lis r3, lit_4338@ha /* 0x80A73A6C@ha */
/* 80A73408  C0 63 3A 6C */	lfs f3, lit_4338@l(r3)  /* 0x80A73A6C@l */
/* 80A7340C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A73410  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A73414  3C 60 80 A7 */	lis r3, lit_4724@ha /* 0x80A73A80@ha */
/* 80A73418  C8 43 3A 80 */	lfd f2, lit_4724@l(r3)  /* 0x80A73A80@l */
/* 80A7341C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A73420  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A73424  3C 60 43 30 */	lis r3, 0x4330
/* 80A73428  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7342C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A73430  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A73434  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A73438  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A7343C  7C A0 07 34 */	extsh r0, r5
/* 80A73440  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A73444  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A73448  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A7344C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A73450  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A73454  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A73458  EC 01 00 2A */	fadds f0, f1, f0
/* 80A7345C  FC 00 00 1E */	fctiwz f0, f0
/* 80A73460  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A73464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A73468  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A7346C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A73470  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A73474  39 61 00 50 */	addi r11, r1, 0x50
/* 80A73478  4B 8E ED AD */	bl _restgpr_28
/* 80A7347C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A73480  7C 08 03 A6 */	mtlr r0
/* 80A73484  38 21 00 60 */	addi r1, r1, 0x60
/* 80A73488  4E 80 00 20 */	blr 
