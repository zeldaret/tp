lbl_80A7A794:
/* 80A7A794  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A7A798  7C 08 02 A6 */	mflr r0
/* 80A7A79C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A7A7A0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A7A7A4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A7A7A8  39 61 00 50 */	addi r11, r1, 0x50
/* 80A7A7AC  4B 8E 7A 2D */	bl _savegpr_28
/* 80A7A7B0  7C 7F 1B 78 */	mr r31, r3
/* 80A7A7B4  7C 80 23 78 */	mr r0, r4
/* 80A7A7B8  7C BC 2B 78 */	mr r28, r5
/* 80A7A7BC  7C DD 33 78 */	mr r29, r6
/* 80A7A7C0  FF E0 08 90 */	fmr f31, f1
/* 80A7A7C4  7C FE 3B 78 */	mr r30, r7
/* 80A7A7C8  38 A0 00 00 */	li r5, 0
/* 80A7A7CC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80A7A7D0  28 04 00 00 */	cmplwi r4, 0
/* 80A7A7D4  41 82 00 44 */	beq lbl_80A7A818
/* 80A7A7D8  38 61 00 08 */	addi r3, r1, 8
/* 80A7A7DC  7C 05 03 78 */	mr r5, r0
/* 80A7A7E0  4B 7E C3 55 */	bl __mi__4cXyzCFRC3Vec
/* 80A7A7E4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A7A7E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A7A7EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A7A7F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A7A7F4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A7A7F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A7A7FC  4B 7E CE 79 */	bl cM_atan2s__Fff
/* 80A7A800  7C BC 18 50 */	subf r5, r28, r3
/* 80A7A804  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80A7A808  7C 1C 00 50 */	subf r0, r28, r0
/* 80A7A80C  7C 00 07 34 */	extsh r0, r0
/* 80A7A810  7C A0 28 50 */	subf r5, r0, r5
/* 80A7A814  7C A5 F2 14 */	add r5, r5, r30
lbl_80A7A818:
/* 80A7A818  2C 1D 00 00 */	cmpwi r29, 0
/* 80A7A81C  41 82 00 0C */	beq lbl_80A7A828
/* 80A7A820  7C 05 00 D0 */	neg r0, r5
/* 80A7A824  7C 05 07 34 */	extsh r5, r0
lbl_80A7A828:
/* 80A7A828  3C 60 80 A8 */	lis r3, lit_4511@ha /* 0x80A7B000@ha */
/* 80A7A82C  C0 63 B0 00 */	lfs f3, lit_4511@l(r3)  /* 0x80A7B000@l */
/* 80A7A830  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A7A834  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80A7A838  3C 60 80 A8 */	lis r3, lit_5061@ha /* 0x80A7B038@ha */
/* 80A7A83C  C8 43 B0 38 */	lfd f2, lit_5061@l(r3)  /* 0x80A7B038@l */
/* 80A7A840  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7A844  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7A848  3C 60 43 30 */	lis r3, 0x4330
/* 80A7A84C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7A850  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A7A854  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A7A858  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A7A85C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A7A860  7C A0 07 34 */	extsh r0, r5
/* 80A7A864  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7A868  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A7A86C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A7A870  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A7A874  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A7A878  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A7A87C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A7A880  FC 00 00 1E */	fctiwz f0, f0
/* 80A7A884  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A7A888  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7A88C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80A7A890  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A7A894  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A7A898  39 61 00 50 */	addi r11, r1, 0x50
/* 80A7A89C  4B 8E 79 89 */	bl _restgpr_28
/* 80A7A8A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A7A8A4  7C 08 03 A6 */	mtlr r0
/* 80A7A8A8  38 21 00 60 */	addi r1, r1, 0x60
/* 80A7A8AC  4E 80 00 20 */	blr 
