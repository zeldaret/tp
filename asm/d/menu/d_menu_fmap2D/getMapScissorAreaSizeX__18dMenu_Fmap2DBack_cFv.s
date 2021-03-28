lbl_801D27E8:
/* 801D27E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D27EC  7C 08 02 A6 */	mflr r0
/* 801D27F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D27F4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D27F8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D27FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D2800  7C 7F 1B 78 */	mr r31, r3
/* 801D2804  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801D2808  80 63 00 04 */	lwz r3, 4(r3)
/* 801D280C  C3 E3 00 CC */	lfs f31, 0xcc(r3)
/* 801D2810  48 12 52 ED */	bl getParentPane__7J2DPaneFv
/* 801D2814  48 00 00 10 */	b lbl_801D2824
lbl_801D2818:
/* 801D2818  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 801D281C  EF FF 00 32 */	fmuls f31, f31, f0
/* 801D2820  48 12 52 DD */	bl getParentPane__7J2DPaneFv
lbl_801D2824:
/* 801D2824  28 03 00 00 */	cmplwi r3, 0
/* 801D2828  40 82 FF F0 */	bne lbl_801D2818
/* 801D282C  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801D2830  80 63 00 04 */	lwz r3, 4(r3)
/* 801D2834  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801D2838  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801D283C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D2840  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801D2844  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2848  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D284C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2854  7C 08 03 A6 */	mtlr r0
/* 801D2858  38 21 00 20 */	addi r1, r1, 0x20
/* 801D285C  4E 80 00 20 */	blr 
