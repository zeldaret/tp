lbl_8020D7EC:
/* 8020D7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020D7F0  7C 08 02 A6 */	mflr r0
/* 8020D7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020D7F8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8020D7FC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8020D800  C0 22 AE 40 */	lfs f1, lit_4159(r2)
/* 8020D804  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020D808  EF E1 00 28 */	fsubs f31, f1, f0
/* 8020D80C  C0 42 AE 30 */	lfs f2, lit_4128(r2)
/* 8020D810  80 83 00 08 */	lwz r4, 8(r3)
/* 8020D814  28 04 00 00 */	cmplwi r4, 0
/* 8020D818  41 82 00 2C */	beq lbl_8020D844
/* 8020D81C  C0 44 00 5C */	lfs f2, 0x5c(r4)
/* 8020D820  C0 22 AE 34 */	lfs f1, lit_4129(r2)
/* 8020D824  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 8020D828  EC 61 00 24 */	fdivs f3, f1, f0
/* 8020D82C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8020D830  C0 04 00 68 */	lfs f0, 0x68(r4)
/* 8020D834  C0 24 00 6C */	lfs f1, 0x6c(r4)
/* 8020D838  EC 03 00 32 */	fmuls f0, f3, f0
/* 8020D83C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020D840  EC 42 00 2A */	fadds f2, f2, f0
lbl_8020D844:
/* 8020D844  EF FF 10 2A */	fadds f31, f31, f2
/* 8020D848  4B FF FE E5 */	bl getMapDispEdgeLeftX_Layout__11dMeterMap_cFv
/* 8020D84C  EC 1F 08 28 */	fsubs f0, f31, f1
/* 8020D850  FC 00 00 1E */	fctiwz f0, f0
/* 8020D854  D8 01 00 08 */	stfd f0, 8(r1)
/* 8020D858  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8020D85C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8020D860  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8020D864  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020D868  7C 08 03 A6 */	mtlr r0
/* 8020D86C  38 21 00 20 */	addi r1, r1, 0x20
/* 8020D870  4E 80 00 20 */	blr 
