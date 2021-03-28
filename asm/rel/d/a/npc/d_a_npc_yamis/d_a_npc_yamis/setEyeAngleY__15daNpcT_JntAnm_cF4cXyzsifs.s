lbl_80B49058:
/* 80B49058  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B4905C  7C 08 02 A6 */	mflr r0
/* 80B49060  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B49064  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B49068  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B4906C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B49070  4B 81 91 68 */	b _savegpr_28
/* 80B49074  7C 7F 1B 78 */	mr r31, r3
/* 80B49078  7C 80 23 78 */	mr r0, r4
/* 80B4907C  7C BC 2B 78 */	mr r28, r5
/* 80B49080  7C DD 33 78 */	mr r29, r6
/* 80B49084  FF E0 08 90 */	fmr f31, f1
/* 80B49088  7C FE 3B 78 */	mr r30, r7
/* 80B4908C  38 A0 00 00 */	li r5, 0
/* 80B49090  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B49094  28 04 00 00 */	cmplwi r4, 0
/* 80B49098  41 82 00 44 */	beq lbl_80B490DC
/* 80B4909C  38 61 00 08 */	addi r3, r1, 8
/* 80B490A0  7C 05 03 78 */	mr r5, r0
/* 80B490A4  4B 71 DA 90 */	b __mi__4cXyzCFRC3Vec
/* 80B490A8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B490AC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B490B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B490B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B490B8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B490BC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B490C0  4B 71 E5 B4 */	b cM_atan2s__Fff
/* 80B490C4  7C BC 18 50 */	subf r5, r28, r3
/* 80B490C8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B490CC  7C 1C 00 50 */	subf r0, r28, r0
/* 80B490D0  7C 00 07 34 */	extsh r0, r0
/* 80B490D4  7C A0 28 50 */	subf r5, r0, r5
/* 80B490D8  7C A5 F2 14 */	add r5, r5, r30
lbl_80B490DC:
/* 80B490DC  2C 1D 00 00 */	cmpwi r29, 0
/* 80B490E0  41 82 00 0C */	beq lbl_80B490EC
/* 80B490E4  7C 05 00 D0 */	neg r0, r5
/* 80B490E8  7C 05 07 34 */	extsh r5, r0
lbl_80B490EC:
/* 80B490EC  3C 60 80 B5 */	lis r3, lit_4345@ha
/* 80B490F0  C0 63 97 60 */	lfs f3, lit_4345@l(r3)
/* 80B490F4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B490F8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B490FC  3C 60 80 B5 */	lis r3, lit_4700@ha
/* 80B49100  C8 43 97 70 */	lfd f2, lit_4700@l(r3)
/* 80B49104  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B49108  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4910C  3C 60 43 30 */	lis r3, 0x4330
/* 80B49110  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B49114  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B49118  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B4911C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B49120  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B49124  7C A0 07 34 */	extsh r0, r5
/* 80B49128  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4912C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B49130  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B49134  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B49138  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B4913C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B49140  EC 01 00 2A */	fadds f0, f1, f0
/* 80B49144  FC 00 00 1E */	fctiwz f0, f0
/* 80B49148  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B4914C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B49150  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B49154  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B49158  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B4915C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B49160  4B 81 90 C4 */	b _restgpr_28
/* 80B49164  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B49168  7C 08 03 A6 */	mtlr r0
/* 80B4916C  38 21 00 60 */	addi r1, r1, 0x60
/* 80B49170  4E 80 00 20 */	blr 
