lbl_80B459F4:
/* 80B459F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B459F8  7C 08 02 A6 */	mflr r0
/* 80B459FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B45A00  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B45A04  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B45A08  39 61 00 50 */	addi r11, r1, 0x50
/* 80B45A0C  4B 81 C7 CD */	bl _savegpr_28
/* 80B45A10  7C 7F 1B 78 */	mr r31, r3
/* 80B45A14  7C 80 23 78 */	mr r0, r4
/* 80B45A18  7C BC 2B 78 */	mr r28, r5
/* 80B45A1C  7C DD 33 78 */	mr r29, r6
/* 80B45A20  FF E0 08 90 */	fmr f31, f1
/* 80B45A24  7C FE 3B 78 */	mr r30, r7
/* 80B45A28  38 A0 00 00 */	li r5, 0
/* 80B45A2C  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B45A30  28 04 00 00 */	cmplwi r4, 0
/* 80B45A34  41 82 00 44 */	beq lbl_80B45A78
/* 80B45A38  38 61 00 08 */	addi r3, r1, 8
/* 80B45A3C  7C 05 03 78 */	mr r5, r0
/* 80B45A40  4B 72 10 F5 */	bl __mi__4cXyzCFRC3Vec
/* 80B45A44  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B45A48  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B45A4C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B45A50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B45A54  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B45A58  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B45A5C  4B 72 1C 19 */	bl cM_atan2s__Fff
/* 80B45A60  7C BC 18 50 */	subf r5, r28, r3
/* 80B45A64  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B45A68  7C 1C 00 50 */	subf r0, r28, r0
/* 80B45A6C  7C 00 07 34 */	extsh r0, r0
/* 80B45A70  7C A0 28 50 */	subf r5, r0, r5
/* 80B45A74  7C A5 F2 14 */	add r5, r5, r30
lbl_80B45A78:
/* 80B45A78  2C 1D 00 00 */	cmpwi r29, 0
/* 80B45A7C  41 82 00 0C */	beq lbl_80B45A88
/* 80B45A80  7C 05 00 D0 */	neg r0, r5
/* 80B45A84  7C 05 07 34 */	extsh r5, r0
lbl_80B45A88:
/* 80B45A88  3C 60 80 B4 */	lis r3, lit_4345@ha /* 0x80B460FC@ha */
/* 80B45A8C  C0 63 60 FC */	lfs f3, lit_4345@l(r3)  /* 0x80B460FC@l */
/* 80B45A90  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B45A94  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B45A98  3C 60 80 B4 */	lis r3, lit_4700@ha /* 0x80B4610C@ha */
/* 80B45A9C  C8 43 61 0C */	lfd f2, lit_4700@l(r3)  /* 0x80B4610C@l */
/* 80B45AA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B45AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B45AA8  3C 60 43 30 */	lis r3, 0x4330
/* 80B45AAC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B45AB0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B45AB4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B45AB8  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B45ABC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B45AC0  7C A0 07 34 */	extsh r0, r5
/* 80B45AC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B45AC8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B45ACC  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B45AD0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B45AD4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B45AD8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B45ADC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B45AE0  FC 00 00 1E */	fctiwz f0, f0
/* 80B45AE4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B45AE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B45AEC  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B45AF0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B45AF4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B45AF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B45AFC  4B 81 C7 29 */	bl _restgpr_28
/* 80B45B00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B45B04  7C 08 03 A6 */	mtlr r0
/* 80B45B08  38 21 00 60 */	addi r1, r1, 0x60
/* 80B45B0C  4E 80 00 20 */	blr 
