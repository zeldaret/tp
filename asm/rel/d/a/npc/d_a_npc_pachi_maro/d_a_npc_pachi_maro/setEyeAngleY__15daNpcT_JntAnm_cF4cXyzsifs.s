lbl_80A9B220:
/* 80A9B220  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A9B224  7C 08 02 A6 */	mflr r0
/* 80A9B228  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A9B22C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A9B230  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A9B234  39 61 00 50 */	addi r11, r1, 0x50
/* 80A9B238  4B 8C 6F A0 */	b _savegpr_28
/* 80A9B23C  7C 7F 1B 78 */	mr r31, r3
/* 80A9B240  7C 80 23 78 */	mr r0, r4
/* 80A9B244  7C BC 2B 78 */	mr r28, r5
/* 80A9B248  7C DD 33 78 */	mr r29, r6
/* 80A9B24C  FF E0 08 90 */	fmr f31, f1
/* 80A9B250  7C FE 3B 78 */	mr r30, r7
/* 80A9B254  38 A0 00 00 */	li r5, 0
/* 80A9B258  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A9B25C  28 04 00 00 */	cmplwi r4, 0
/* 80A9B260  41 82 00 44 */	beq lbl_80A9B2A4
/* 80A9B264  38 61 00 08 */	addi r3, r1, 8
/* 80A9B268  7C 05 03 78 */	mr r5, r0
/* 80A9B26C  4B 7C B8 C8 */	b __mi__4cXyzCFRC3Vec
/* 80A9B270  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A9B274  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A9B278  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A9B27C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A9B280  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A9B284  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A9B288  4B 7C C3 EC */	b cM_atan2s__Fff
/* 80A9B28C  7C BC 18 50 */	subf r5, r28, r3
/* 80A9B290  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A9B294  7C 1C 00 50 */	subf r0, r28, r0
/* 80A9B298  7C 00 07 34 */	extsh r0, r0
/* 80A9B29C  7C A0 28 50 */	subf r5, r0, r5
/* 80A9B2A0  7C A5 F2 14 */	add r5, r5, r30
lbl_80A9B2A4:
/* 80A9B2A4  2C 1D 00 00 */	cmpwi r29, 0
/* 80A9B2A8  41 82 00 0C */	beq lbl_80A9B2B4
/* 80A9B2AC  7C 05 00 D0 */	neg r0, r5
/* 80A9B2B0  7C 05 07 34 */	extsh r5, r0
lbl_80A9B2B4:
/* 80A9B2B4  3C 60 80 AA */	lis r3, lit_4494@ha
/* 80A9B2B8  C0 63 B9 3C */	lfs f3, lit_4494@l(r3)
/* 80A9B2BC  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A9B2C0  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A9B2C4  3C 60 80 AA */	lis r3, lit_4853@ha
/* 80A9B2C8  C8 43 B9 5C */	lfd f2, lit_4853@l(r3)
/* 80A9B2CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A9B2D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9B2D4  3C 60 43 30 */	lis r3, 0x4330
/* 80A9B2D8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A9B2DC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A9B2E0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A9B2E4  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A9B2E8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A9B2EC  7C A0 07 34 */	extsh r0, r5
/* 80A9B2F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A9B2F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A9B2F8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A9B2FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A9B300  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A9B304  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A9B308  EC 01 00 2A */	fadds f0, f1, f0
/* 80A9B30C  FC 00 00 1E */	fctiwz f0, f0
/* 80A9B310  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A9B314  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9B318  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A9B31C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A9B320  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A9B324  39 61 00 50 */	addi r11, r1, 0x50
/* 80A9B328  4B 8C 6E FC */	b _restgpr_28
/* 80A9B32C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A9B330  7C 08 03 A6 */	mtlr r0
/* 80A9B334  38 21 00 60 */	addi r1, r1, 0x60
/* 80A9B338  4E 80 00 20 */	blr 
