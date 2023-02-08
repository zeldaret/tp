lbl_80AD42C0:
/* 80AD42C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AD42C4  7C 08 02 A6 */	mflr r0
/* 80AD42C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AD42CC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AD42D0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AD42D4  39 61 00 50 */	addi r11, r1, 0x50
/* 80AD42D8  4B 88 DF 01 */	bl _savegpr_28
/* 80AD42DC  7C 7F 1B 78 */	mr r31, r3
/* 80AD42E0  7C 80 23 78 */	mr r0, r4
/* 80AD42E4  7C BC 2B 78 */	mr r28, r5
/* 80AD42E8  7C DD 33 78 */	mr r29, r6
/* 80AD42EC  FF E0 08 90 */	fmr f31, f1
/* 80AD42F0  7C FE 3B 78 */	mr r30, r7
/* 80AD42F4  38 A0 00 00 */	li r5, 0
/* 80AD42F8  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AD42FC  28 04 00 00 */	cmplwi r4, 0
/* 80AD4300  41 82 00 44 */	beq lbl_80AD4344
/* 80AD4304  38 61 00 08 */	addi r3, r1, 8
/* 80AD4308  7C 05 03 78 */	mr r5, r0
/* 80AD430C  4B 79 28 29 */	bl __mi__4cXyzCFRC3Vec
/* 80AD4310  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AD4314  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AD4318  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AD431C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AD4320  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AD4324  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AD4328  4B 79 33 4D */	bl cM_atan2s__Fff
/* 80AD432C  7C BC 18 50 */	subf r5, r28, r3
/* 80AD4330  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AD4334  7C 1C 00 50 */	subf r0, r28, r0
/* 80AD4338  7C 00 07 34 */	extsh r0, r0
/* 80AD433C  7C A0 28 50 */	subf r5, r0, r5
/* 80AD4340  7C A5 F2 14 */	add r5, r5, r30
lbl_80AD4344:
/* 80AD4344  2C 1D 00 00 */	cmpwi r29, 0
/* 80AD4348  41 82 00 0C */	beq lbl_80AD4354
/* 80AD434C  7C 05 00 D0 */	neg r0, r5
/* 80AD4350  7C 05 07 34 */	extsh r5, r0
lbl_80AD4354:
/* 80AD4354  3C 60 80 AD */	lis r3, lit_4443@ha /* 0x80AD4B1C@ha */
/* 80AD4358  C0 63 4B 1C */	lfs f3, lit_4443@l(r3)  /* 0x80AD4B1C@l */
/* 80AD435C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AD4360  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AD4364  3C 60 80 AD */	lis r3, lit_4860@ha /* 0x80AD4B38@ha */
/* 80AD4368  C8 43 4B 38 */	lfd f2, lit_4860@l(r3)  /* 0x80AD4B38@l */
/* 80AD436C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AD4370  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD4374  3C 60 43 30 */	lis r3, 0x4330
/* 80AD4378  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AD437C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AD4380  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AD4384  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AD4388  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AD438C  7C A0 07 34 */	extsh r0, r5
/* 80AD4390  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AD4394  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AD4398  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AD439C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AD43A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AD43A4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AD43A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80AD43AC  FC 00 00 1E */	fctiwz f0, f0
/* 80AD43B0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AD43B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD43B8  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AD43BC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AD43C0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AD43C4  39 61 00 50 */	addi r11, r1, 0x50
/* 80AD43C8  4B 88 DE 5D */	bl _restgpr_28
/* 80AD43CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AD43D0  7C 08 03 A6 */	mtlr r0
/* 80AD43D4  38 21 00 60 */	addi r1, r1, 0x60
/* 80AD43D8  4E 80 00 20 */	blr 
