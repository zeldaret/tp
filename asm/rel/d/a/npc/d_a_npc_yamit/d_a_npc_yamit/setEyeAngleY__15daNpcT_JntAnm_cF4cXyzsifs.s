lbl_80B4C7B8:
/* 80B4C7B8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B4C7BC  7C 08 02 A6 */	mflr r0
/* 80B4C7C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B4C7C4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B4C7C8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B4C7CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80B4C7D0  4B 81 5A 08 */	b _savegpr_28
/* 80B4C7D4  7C 7F 1B 78 */	mr r31, r3
/* 80B4C7D8  7C 80 23 78 */	mr r0, r4
/* 80B4C7DC  7C BC 2B 78 */	mr r28, r5
/* 80B4C7E0  7C DD 33 78 */	mr r29, r6
/* 80B4C7E4  FF E0 08 90 */	fmr f31, f1
/* 80B4C7E8  7C FE 3B 78 */	mr r30, r7
/* 80B4C7EC  38 A0 00 00 */	li r5, 0
/* 80B4C7F0  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80B4C7F4  28 04 00 00 */	cmplwi r4, 0
/* 80B4C7F8  41 82 00 44 */	beq lbl_80B4C83C
/* 80B4C7FC  38 61 00 08 */	addi r3, r1, 8
/* 80B4C800  7C 05 03 78 */	mr r5, r0
/* 80B4C804  4B 71 A3 30 */	b __mi__4cXyzCFRC3Vec
/* 80B4C808  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B4C80C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B4C810  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B4C814  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B4C818  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B4C81C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B4C820  4B 71 AE 54 */	b cM_atan2s__Fff
/* 80B4C824  7C BC 18 50 */	subf r5, r28, r3
/* 80B4C828  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80B4C82C  7C 1C 00 50 */	subf r0, r28, r0
/* 80B4C830  7C 00 07 34 */	extsh r0, r0
/* 80B4C834  7C A0 28 50 */	subf r5, r0, r5
/* 80B4C838  7C A5 F2 14 */	add r5, r5, r30
lbl_80B4C83C:
/* 80B4C83C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B4C840  41 82 00 0C */	beq lbl_80B4C84C
/* 80B4C844  7C 05 00 D0 */	neg r0, r5
/* 80B4C848  7C 05 07 34 */	extsh r5, r0
lbl_80B4C84C:
/* 80B4C84C  3C 60 80 B5 */	lis r3, lit_4344@ha
/* 80B4C850  C0 63 CE 54 */	lfs f3, lit_4344@l(r3)
/* 80B4C854  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B4C858  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80B4C85C  3C 60 80 B5 */	lis r3, lit_4707@ha
/* 80B4C860  C8 43 CE 64 */	lfd f2, lit_4707@l(r3)
/* 80B4C864  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4C868  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4C86C  3C 60 43 30 */	lis r3, 0x4330
/* 80B4C870  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B4C874  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B4C878  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B4C87C  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B4C880  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B4C884  7C A0 07 34 */	extsh r0, r5
/* 80B4C888  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B4C88C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B4C890  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B4C894  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80B4C898  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B4C89C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B4C8A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B4C8A4  FC 00 00 1E */	fctiwz f0, f0
/* 80B4C8A8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80B4C8AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4C8B0  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80B4C8B4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B4C8B8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B4C8BC  39 61 00 50 */	addi r11, r1, 0x50
/* 80B4C8C0  4B 81 59 64 */	b _restgpr_28
/* 80B4C8C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B4C8C8  7C 08 03 A6 */	mtlr r0
/* 80B4C8CC  38 21 00 60 */	addi r1, r1, 0x60
/* 80B4C8D0  4E 80 00 20 */	blr 
