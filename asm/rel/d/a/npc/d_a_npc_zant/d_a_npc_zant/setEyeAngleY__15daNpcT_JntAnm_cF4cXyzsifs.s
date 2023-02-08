lbl_80B6E370:
/* 80B6E370  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B6E374  7C 08 02 A6 */	mflr r0
/* 80B6E378  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B6E37C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B6E380  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B6E384  39 61 00 50 */	addi r11, r1, 0x50
/* 80B6E388  4B 7F 3E 51 */	bl _savegpr_28
/* 80B6E38C  7C 7F 1B 78 */	mr r31, r3
/* 80B6E390  7C 80 23 78 */	mr r0, r4
/* 80B6E394  7C BC 2B 78 */	mr r28, r5
/* 80B6E398  7C DD 33 78 */	mr r29, r6
/* 80B6E39C  FF E0 08 90 */	fmr f31, f1
/* 80B6E3A0  7C FE 3B 78 */	mr r30, r7
/* 80B6E3A4  38 A0 00 00 */	li r5, 0
/* 80B6E3A8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B6E3AC  28 04 00 00 */	cmplwi r4, 0
/* 80B6E3B0  41 82 00 44 */	beq lbl_80B6E3F4
/* 80B6E3B4  38 61 00 08 */	addi r3, r1, 8
/* 80B6E3B8  7C 05 03 78 */	mr r5, r0
/* 80B6E3BC  4B 6F 87 79 */	bl __mi__4cXyzCFRC3Vec
/* 80B6E3C0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B6E3C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B6E3C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B6E3CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B6E3D0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B6E3D4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B6E3D8  4B 6F 92 9D */	bl cM_atan2s__Fff
/* 80B6E3DC  7C BC 18 50 */	subf r5, r28, r3
/* 80B6E3E0  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B6E3E4  7C 1C 00 50 */	subf r0, r28, r0
/* 80B6E3E8  7C 00 07 34 */	extsh r0, r0
/* 80B6E3EC  7C A0 28 50 */	subf r5, r0, r5
/* 80B6E3F0  7C A5 F2 14 */	add r5, r5, r30
lbl_80B6E3F4:
/* 80B6E3F4  2C 1D 00 00 */	cmpwi r29, 0
/* 80B6E3F8  41 82 00 0C */	beq lbl_80B6E404
/* 80B6E3FC  7C 05 00 D0 */	neg r0, r5
/* 80B6E400  7C 05 07 34 */	extsh r5, r0
lbl_80B6E404:
/* 80B6E404  3C 60 80 B7 */	lis r3, lit_4313@ha /* 0x80B6EA54@ha */
/* 80B6E408  C0 63 EA 54 */	lfs f3, lit_4313@l(r3)  /* 0x80B6EA54@l */
/* 80B6E40C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B6E410  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B6E414  3C 60 80 B7 */	lis r3, lit_4561@ha /* 0x80B6EA60@ha */
/* 80B6E418  C8 43 EA 60 */	lfd f2, lit_4561@l(r3)  /* 0x80B6EA60@l */
/* 80B6E41C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6E420  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6E424  3C 60 43 30 */	lis r3, 0x4330
/* 80B6E428  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B6E42C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B6E430  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B6E434  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B6E438  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B6E43C  7C A0 07 34 */	extsh r0, r5
/* 80B6E440  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6E444  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B6E448  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B6E44C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B6E450  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B6E454  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B6E458  EC 01 00 2A */	fadds f0, f1, f0
/* 80B6E45C  FC 00 00 1E */	fctiwz f0, f0
/* 80B6E460  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B6E464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6E468  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B6E46C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B6E470  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B6E474  39 61 00 50 */	addi r11, r1, 0x50
/* 80B6E478  4B 7F 3D AD */	bl _restgpr_28
/* 80B6E47C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B6E480  7C 08 03 A6 */	mtlr r0
/* 80B6E484  38 21 00 60 */	addi r1, r1, 0x60
/* 80B6E488  4E 80 00 20 */	blr 
