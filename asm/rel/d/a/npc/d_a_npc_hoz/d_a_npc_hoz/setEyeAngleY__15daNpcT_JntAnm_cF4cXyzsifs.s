lbl_80A05FBC:
/* 80A05FBC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A05FC0  7C 08 02 A6 */	mflr r0
/* 80A05FC4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A05FC8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A05FCC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A05FD0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A05FD4  4B 95 C2 04 */	b _savegpr_28
/* 80A05FD8  7C 7F 1B 78 */	mr r31, r3
/* 80A05FDC  7C 80 23 78 */	mr r0, r4
/* 80A05FE0  7C BC 2B 78 */	mr r28, r5
/* 80A05FE4  7C DD 33 78 */	mr r29, r6
/* 80A05FE8  FF E0 08 90 */	fmr f31, f1
/* 80A05FEC  7C FE 3B 78 */	mr r30, r7
/* 80A05FF0  38 A0 00 00 */	li r5, 0
/* 80A05FF4  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A05FF8  28 04 00 00 */	cmplwi r4, 0
/* 80A05FFC  41 82 00 44 */	beq lbl_80A06040
/* 80A06000  38 61 00 08 */	addi r3, r1, 8
/* 80A06004  7C 05 03 78 */	mr r5, r0
/* 80A06008  4B 86 0B 2C */	b __mi__4cXyzCFRC3Vec
/* 80A0600C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A06010  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A06014  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A06018  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A0601C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A06020  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A06024  4B 86 16 50 */	b cM_atan2s__Fff
/* 80A06028  7C BC 18 50 */	subf r5, r28, r3
/* 80A0602C  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A06030  7C 1C 00 50 */	subf r0, r28, r0
/* 80A06034  7C 00 07 34 */	extsh r0, r0
/* 80A06038  7C A0 28 50 */	subf r5, r0, r5
/* 80A0603C  7C A5 F2 14 */	add r5, r5, r30
lbl_80A06040:
/* 80A06040  2C 1D 00 00 */	cmpwi r29, 0
/* 80A06044  41 82 00 0C */	beq lbl_80A06050
/* 80A06048  7C 05 00 D0 */	neg r0, r5
/* 80A0604C  7C 05 07 34 */	extsh r5, r0
lbl_80A06050:
/* 80A06050  3C 60 80 A0 */	lis r3, lit_4486@ha
/* 80A06054  C0 63 67 18 */	lfs f3, lit_4486@l(r3)
/* 80A06058  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A0605C  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A06060  3C 60 80 A0 */	lis r3, lit_4923@ha
/* 80A06064  C8 43 67 30 */	lfd f2, lit_4923@l(r3)
/* 80A06068  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A0606C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A06070  3C 60 43 30 */	lis r3, 0x4330
/* 80A06074  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A06078  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A0607C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A06080  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A06084  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A06088  7C A0 07 34 */	extsh r0, r5
/* 80A0608C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A06090  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A06094  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A06098  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A0609C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A060A0  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A060A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A060A8  FC 00 00 1E */	fctiwz f0, f0
/* 80A060AC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A060B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A060B4  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A060B8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A060BC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A060C0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A060C4  4B 95 C1 60 */	b _restgpr_28
/* 80A060C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A060CC  7C 08 03 A6 */	mtlr r0
/* 80A060D0  38 21 00 60 */	addi r1, r1, 0x60
/* 80A060D4  4E 80 00 20 */	blr 
