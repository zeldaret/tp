lbl_80B6B67C:
/* 80B6B67C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B6B680  7C 08 02 A6 */	mflr r0
/* 80B6B684  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B6B688  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B6B68C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B6B690  39 61 00 50 */	addi r11, r1, 0x50
/* 80B6B694  4B 7F 6B 44 */	b _savegpr_28
/* 80B6B698  7C 7F 1B 78 */	mr r31, r3
/* 80B6B69C  7C 80 23 78 */	mr r0, r4
/* 80B6B6A0  7C BC 2B 78 */	mr r28, r5
/* 80B6B6A4  7C DD 33 78 */	mr r29, r6
/* 80B6B6A8  FF E0 08 90 */	fmr f31, f1
/* 80B6B6AC  7C FE 3B 78 */	mr r30, r7
/* 80B6B6B0  38 A0 00 00 */	li r5, 0
/* 80B6B6B4  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B6B6B8  28 04 00 00 */	cmplwi r4, 0
/* 80B6B6BC  41 82 00 44 */	beq lbl_80B6B700
/* 80B6B6C0  38 61 00 08 */	addi r3, r1, 8
/* 80B6B6C4  7C 05 03 78 */	mr r5, r0
/* 80B6B6C8  4B 6F B4 6C */	b __mi__4cXyzCFRC3Vec
/* 80B6B6CC  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B6B6D0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B6B6D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B6B6D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B6B6DC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B6B6E0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B6B6E4  4B 6F BF 90 */	b cM_atan2s__Fff
/* 80B6B6E8  7C BC 18 50 */	subf r5, r28, r3
/* 80B6B6EC  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B6B6F0  7C 1C 00 50 */	subf r0, r28, r0
/* 80B6B6F4  7C 00 07 34 */	extsh r0, r0
/* 80B6B6F8  7C A0 28 50 */	subf r5, r0, r5
/* 80B6B6FC  7C A5 F2 14 */	add r5, r5, r30
lbl_80B6B700:
/* 80B6B700  2C 1D 00 00 */	cmpwi r29, 0
/* 80B6B704  41 82 00 0C */	beq lbl_80B6B710
/* 80B6B708  7C 05 00 D0 */	neg r0, r5
/* 80B6B70C  7C 05 07 34 */	extsh r5, r0
lbl_80B6B710:
/* 80B6B710  3C 60 80 B7 */	lis r3, lit_4336@ha
/* 80B6B714  C0 63 BD 78 */	lfs f3, lit_4336@l(r3)
/* 80B6B718  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B6B71C  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B6B720  3C 60 80 B7 */	lis r3, lit_4659@ha
/* 80B6B724  C8 43 BD 94 */	lfd f2, lit_4659@l(r3)
/* 80B6B728  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6B72C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6B730  3C 60 43 30 */	lis r3, 0x4330
/* 80B6B734  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B6B738  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B6B73C  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B6B740  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B6B744  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B6B748  7C A0 07 34 */	extsh r0, r5
/* 80B6B74C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B6B750  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B6B754  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B6B758  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B6B75C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B6B760  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B6B764  EC 01 00 2A */	fadds f0, f1, f0
/* 80B6B768  FC 00 00 1E */	fctiwz f0, f0
/* 80B6B76C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B6B770  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6B774  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B6B778  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B6B77C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B6B780  39 61 00 50 */	addi r11, r1, 0x50
/* 80B6B784  4B 7F 6A A0 */	b _restgpr_28
/* 80B6B788  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B6B78C  7C 08 03 A6 */	mtlr r0
/* 80B6B790  38 21 00 60 */	addi r1, r1, 0x60
/* 80B6B794  4E 80 00 20 */	blr 
