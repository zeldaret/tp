lbl_80A963A0:
/* 80A963A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A963A4  7C 08 02 A6 */	mflr r0
/* 80A963A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A963AC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A963B0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A963B4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A963B8  4B 8C BE 20 */	b _savegpr_28
/* 80A963BC  7C 7F 1B 78 */	mr r31, r3
/* 80A963C0  7C 80 23 78 */	mr r0, r4
/* 80A963C4  7C BC 2B 78 */	mr r28, r5
/* 80A963C8  7C DD 33 78 */	mr r29, r6
/* 80A963CC  FF E0 08 90 */	fmr f31, f1
/* 80A963D0  7C FE 3B 78 */	mr r30, r7
/* 80A963D4  38 A0 00 00 */	li r5, 0
/* 80A963D8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A963DC  28 04 00 00 */	cmplwi r4, 0
/* 80A963E0  41 82 00 44 */	beq lbl_80A96424
/* 80A963E4  38 61 00 08 */	addi r3, r1, 8
/* 80A963E8  7C 05 03 78 */	mr r5, r0
/* 80A963EC  4B 7D 07 48 */	b __mi__4cXyzCFRC3Vec
/* 80A963F0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A963F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A963F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A963FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A96400  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A96404  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A96408  4B 7D 12 6C */	b cM_atan2s__Fff
/* 80A9640C  7C BC 18 50 */	subf r5, r28, r3
/* 80A96410  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A96414  7C 1C 00 50 */	subf r0, r28, r0
/* 80A96418  7C 00 07 34 */	extsh r0, r0
/* 80A9641C  7C A0 28 50 */	subf r5, r0, r5
/* 80A96420  7C A5 F2 14 */	add r5, r5, r30
lbl_80A96424:
/* 80A96424  2C 1D 00 00 */	cmpwi r29, 0
/* 80A96428  41 82 00 0C */	beq lbl_80A96434
/* 80A9642C  7C 05 00 D0 */	neg r0, r5
/* 80A96430  7C 05 07 34 */	extsh r5, r0
lbl_80A96434:
/* 80A96434  3C 60 80 A9 */	lis r3, lit_4497@ha
/* 80A96438  C0 63 6B 18 */	lfs f3, lit_4497@l(r3)
/* 80A9643C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A96440  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A96444  3C 60 80 A9 */	lis r3, lit_4912@ha
/* 80A96448  C8 43 6B 34 */	lfd f2, lit_4912@l(r3)
/* 80A9644C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A96450  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A96454  3C 60 43 30 */	lis r3, 0x4330
/* 80A96458  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A9645C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A96460  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A96464  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A96468  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A9646C  7C A0 07 34 */	extsh r0, r5
/* 80A96470  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A96474  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A96478  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A9647C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A96480  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A96484  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A96488  EC 01 00 2A */	fadds f0, f1, f0
/* 80A9648C  FC 00 00 1E */	fctiwz f0, f0
/* 80A96490  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A96494  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A96498  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A9649C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A964A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A964A4  39 61 00 50 */	addi r11, r1, 0x50
/* 80A964A8  4B 8C BD 7C */	b _restgpr_28
/* 80A964AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A964B0  7C 08 03 A6 */	mtlr r0
/* 80A964B4  38 21 00 60 */	addi r1, r1, 0x60
/* 80A964B8  4E 80 00 20 */	blr 
