lbl_80ACF648:
/* 80ACF648  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ACF64C  7C 08 02 A6 */	mflr r0
/* 80ACF650  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ACF654  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80ACF658  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80ACF65C  39 61 00 50 */	addi r11, r1, 0x50
/* 80ACF660  4B 89 2B 78 */	b _savegpr_28
/* 80ACF664  7C 7F 1B 78 */	mr r31, r3
/* 80ACF668  7C 80 23 78 */	mr r0, r4
/* 80ACF66C  7C BC 2B 78 */	mr r28, r5
/* 80ACF670  7C DD 33 78 */	mr r29, r6
/* 80ACF674  FF E0 08 90 */	fmr f31, f1
/* 80ACF678  7C FE 3B 78 */	mr r30, r7
/* 80ACF67C  38 A0 00 00 */	li r5, 0
/* 80ACF680  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80ACF684  28 04 00 00 */	cmplwi r4, 0
/* 80ACF688  41 82 00 44 */	beq lbl_80ACF6CC
/* 80ACF68C  38 61 00 08 */	addi r3, r1, 8
/* 80ACF690  7C 05 03 78 */	mr r5, r0
/* 80ACF694  4B 79 74 A0 */	b __mi__4cXyzCFRC3Vec
/* 80ACF698  C0 21 00 08 */	lfs f1, 8(r1)
/* 80ACF69C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80ACF6A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80ACF6A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80ACF6A8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80ACF6AC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80ACF6B0  4B 79 7F C4 */	b cM_atan2s__Fff
/* 80ACF6B4  7C BC 18 50 */	subf r5, r28, r3
/* 80ACF6B8  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80ACF6BC  7C 1C 00 50 */	subf r0, r28, r0
/* 80ACF6C0  7C 00 07 34 */	extsh r0, r0
/* 80ACF6C4  7C A0 28 50 */	subf r5, r0, r5
/* 80ACF6C8  7C A5 F2 14 */	add r5, r5, r30
lbl_80ACF6CC:
/* 80ACF6CC  2C 1D 00 00 */	cmpwi r29, 0
/* 80ACF6D0  41 82 00 0C */	beq lbl_80ACF6DC
/* 80ACF6D4  7C 05 00 D0 */	neg r0, r5
/* 80ACF6D8  7C 05 07 34 */	extsh r5, r0
lbl_80ACF6DC:
/* 80ACF6DC  3C 60 80 AD */	lis r3, lit_4455@ha
/* 80ACF6E0  C0 63 FE AC */	lfs f3, lit_4455@l(r3)
/* 80ACF6E4  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80ACF6E8  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80ACF6EC  3C 60 80 AD */	lis r3, lit_4926@ha
/* 80ACF6F0  C8 43 FE C8 */	lfd f2, lit_4926@l(r3)
/* 80ACF6F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ACF6F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACF6FC  3C 60 43 30 */	lis r3, 0x4330
/* 80ACF700  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ACF704  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80ACF708  EC 20 10 28 */	fsubs f1, f0, f2
/* 80ACF70C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80ACF710  EC 21 00 32 */	fmuls f1, f1, f0
/* 80ACF714  7C A0 07 34 */	extsh r0, r5
/* 80ACF718  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ACF71C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80ACF720  90 61 00 28 */	stw r3, 0x28(r1)
/* 80ACF724  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80ACF728  EC 00 10 28 */	fsubs f0, f0, f2
/* 80ACF72C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80ACF730  EC 01 00 2A */	fadds f0, f1, f0
/* 80ACF734  FC 00 00 1E */	fctiwz f0, f0
/* 80ACF738  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ACF73C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACF740  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80ACF744  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80ACF748  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80ACF74C  39 61 00 50 */	addi r11, r1, 0x50
/* 80ACF750  4B 89 2A D4 */	b _restgpr_28
/* 80ACF754  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ACF758  7C 08 03 A6 */	mtlr r0
/* 80ACF75C  38 21 00 60 */	addi r1, r1, 0x60
/* 80ACF760  4E 80 00 20 */	blr 
