lbl_8053DF84:
/* 8053DF84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8053DF88  7C 08 02 A6 */	mflr r0
/* 8053DF8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8053DF90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8053DF94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8053DF98  39 61 00 50 */	addi r11, r1, 0x50
/* 8053DF9C  4B E2 42 3D */	bl _savegpr_28
/* 8053DFA0  7C 7F 1B 78 */	mr r31, r3
/* 8053DFA4  7C 80 23 78 */	mr r0, r4
/* 8053DFA8  7C BC 2B 78 */	mr r28, r5
/* 8053DFAC  7C DD 33 78 */	mr r29, r6
/* 8053DFB0  FF E0 08 90 */	fmr f31, f1
/* 8053DFB4  7C FE 3B 78 */	mr r30, r7
/* 8053DFB8  38 A0 00 00 */	li r5, 0
/* 8053DFBC  80 83 00 20 */	lwz r4, 0x20(r3)
/* 8053DFC0  28 04 00 00 */	cmplwi r4, 0
/* 8053DFC4  41 82 00 44 */	beq lbl_8053E008
/* 8053DFC8  38 61 00 08 */	addi r3, r1, 8
/* 8053DFCC  7C 05 03 78 */	mr r5, r0
/* 8053DFD0  4B D2 8B 65 */	bl __mi__4cXyzCFRC3Vec
/* 8053DFD4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8053DFD8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8053DFDC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8053DFE0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8053DFE4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8053DFE8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8053DFEC  4B D2 96 89 */	bl cM_atan2s__Fff
/* 8053DFF0  7C BC 18 50 */	subf r5, r28, r3
/* 8053DFF4  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 8053DFF8  7C 1C 00 50 */	subf r0, r28, r0
/* 8053DFFC  7C 00 07 34 */	extsh r0, r0
/* 8053E000  7C A0 28 50 */	subf r5, r0, r5
/* 8053E004  7C A5 F2 14 */	add r5, r5, r30
lbl_8053E008:
/* 8053E008  2C 1D 00 00 */	cmpwi r29, 0
/* 8053E00C  41 82 00 0C */	beq lbl_8053E018
/* 8053E010  7C 05 00 D0 */	neg r0, r5
/* 8053E014  7C 05 07 34 */	extsh r5, r0
lbl_8053E018:
/* 8053E018  3C 60 80 54 */	lis r3, lit_4531@ha /* 0x8053E850@ha */
/* 8053E01C  C0 63 E8 50 */	lfs f3, lit_4531@l(r3)  /* 0x8053E850@l */
/* 8053E020  EC 83 F8 24 */	fdivs f4, f3, f31
/* 8053E024  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 8053E028  3C 60 80 54 */	lis r3, lit_5212@ha /* 0x8053E89C@ha */
/* 8053E02C  C8 43 E8 9C */	lfd f2, lit_5212@l(r3)  /* 0x8053E89C@l */
/* 8053E030  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053E034  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053E038  3C 60 43 30 */	lis r3, 0x4330
/* 8053E03C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8053E040  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8053E044  EC 20 10 28 */	fsubs f1, f0, f2
/* 8053E048  EC 03 20 28 */	fsubs f0, f3, f4
/* 8053E04C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8053E050  7C A0 07 34 */	extsh r0, r5
/* 8053E054  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053E058  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8053E05C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8053E060  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8053E064  EC 00 10 28 */	fsubs f0, f0, f2
/* 8053E068  EC 00 01 32 */	fmuls f0, f0, f4
/* 8053E06C  EC 01 00 2A */	fadds f0, f1, f0
/* 8053E070  FC 00 00 1E */	fctiwz f0, f0
/* 8053E074  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8053E078  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053E07C  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 8053E080  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8053E084  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8053E088  39 61 00 50 */	addi r11, r1, 0x50
/* 8053E08C  4B E2 41 99 */	bl _restgpr_28
/* 8053E090  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8053E094  7C 08 03 A6 */	mtlr r0
/* 8053E098  38 21 00 60 */	addi r1, r1, 0x60
/* 8053E09C  4E 80 00 20 */	blr 
