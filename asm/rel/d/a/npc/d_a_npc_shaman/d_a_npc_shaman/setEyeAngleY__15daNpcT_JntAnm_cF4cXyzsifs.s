lbl_80AE603C:
/* 80AE603C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AE6040  7C 08 02 A6 */	mflr r0
/* 80AE6044  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE6048  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AE604C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AE6050  39 61 00 50 */	addi r11, r1, 0x50
/* 80AE6054  4B 87 C1 85 */	bl _savegpr_28
/* 80AE6058  7C 7F 1B 78 */	mr r31, r3
/* 80AE605C  7C 80 23 78 */	mr r0, r4
/* 80AE6060  7C BC 2B 78 */	mr r28, r5
/* 80AE6064  7C DD 33 78 */	mr r29, r6
/* 80AE6068  FF E0 08 90 */	fmr f31, f1
/* 80AE606C  7C FE 3B 78 */	mr r30, r7
/* 80AE6070  38 A0 00 00 */	li r5, 0
/* 80AE6074  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AE6078  28 04 00 00 */	cmplwi r4, 0
/* 80AE607C  41 82 00 44 */	beq lbl_80AE60C0
/* 80AE6080  38 61 00 08 */	addi r3, r1, 8
/* 80AE6084  7C 05 03 78 */	mr r5, r0
/* 80AE6088  4B 78 0A AD */	bl __mi__4cXyzCFRC3Vec
/* 80AE608C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AE6090  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AE6094  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AE6098  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AE609C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AE60A0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AE60A4  4B 78 15 D1 */	bl cM_atan2s__Fff
/* 80AE60A8  7C BC 18 50 */	subf r5, r28, r3
/* 80AE60AC  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AE60B0  7C 1C 00 50 */	subf r0, r28, r0
/* 80AE60B4  7C 00 07 34 */	extsh r0, r0
/* 80AE60B8  7C A0 28 50 */	subf r5, r0, r5
/* 80AE60BC  7C A5 F2 14 */	add r5, r5, r30
lbl_80AE60C0:
/* 80AE60C0  2C 1D 00 00 */	cmpwi r29, 0
/* 80AE60C4  41 82 00 0C */	beq lbl_80AE60D0
/* 80AE60C8  7C 05 00 D0 */	neg r0, r5
/* 80AE60CC  7C 05 07 34 */	extsh r5, r0
lbl_80AE60D0:
/* 80AE60D0  3C 60 80 AE */	lis r3, lit_4331@ha /* 0x80AE6C80@ha */
/* 80AE60D4  C0 63 6C 80 */	lfs f3, lit_4331@l(r3)  /* 0x80AE6C80@l */
/* 80AE60D8  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AE60DC  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AE60E0  3C 60 80 AE */	lis r3, lit_4716@ha /* 0x80AE6CA0@ha */
/* 80AE60E4  C8 43 6C A0 */	lfd f2, lit_4716@l(r3)  /* 0x80AE6CA0@l */
/* 80AE60E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AE60EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE60F0  3C 60 43 30 */	lis r3, 0x4330
/* 80AE60F4  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AE60F8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AE60FC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AE6100  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AE6104  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AE6108  7C A0 07 34 */	extsh r0, r5
/* 80AE610C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AE6110  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AE6114  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AE6118  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AE611C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AE6120  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AE6124  EC 01 00 2A */	fadds f0, f1, f0
/* 80AE6128  FC 00 00 1E */	fctiwz f0, f0
/* 80AE612C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AE6130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE6134  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AE6138  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AE613C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AE6140  39 61 00 50 */	addi r11, r1, 0x50
/* 80AE6144  4B 87 C0 E1 */	bl _restgpr_28
/* 80AE6148  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AE614C  7C 08 03 A6 */	mtlr r0
/* 80AE6150  38 21 00 60 */	addi r1, r1, 0x60
/* 80AE6154  4E 80 00 20 */	blr 
