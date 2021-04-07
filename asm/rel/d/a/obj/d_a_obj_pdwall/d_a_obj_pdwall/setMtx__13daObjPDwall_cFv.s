lbl_80CAC8DC:
/* 80CAC8DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CAC8E0  7C 08 02 A6 */	mflr r0
/* 80CAC8E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CAC8E8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80CAC8EC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80CAC8F0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80CAC8F4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80CAC8F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAC8FC  4B 6B 58 CD */	bl _savegpr_24
/* 80CAC900  7C 7E 1B 78 */	mr r30, r3
/* 80CAC904  3B E0 00 00 */	li r31, 0
/* 80CAC908  3B A0 00 00 */	li r29, 0
/* 80CAC90C  3B 80 00 00 */	li r28, 0
/* 80CAC910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAC914  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAC918  3C 60 80 CB */	lis r3, lit_3666@ha /* 0x80CAD1D0@ha */
/* 80CAC91C  C3 C3 D1 D0 */	lfs f30, lit_3666@l(r3)  /* 0x80CAD1D0@l */
/* 80CAC920  3C 60 80 CB */	lis r3, lit_3669@ha /* 0x80CAD1D8@ha */
/* 80CAC924  CB E3 D1 D8 */	lfd f31, lit_3669@l(r3)  /* 0x80CAD1D8@l */
/* 80CAC928  3F 20 43 30 */	lis r25, 0x4330
/* 80CAC92C  3C 60 80 CB */	lis r3, lit_3667@ha /* 0x80CAD1D4@ha */
/* 80CAC930  3B 43 D1 D4 */	addi r26, r3, lit_3667@l /* 0x80CAD1D4@l */
/* 80CAC934  7F 1B C3 78 */	mr r27, r24
lbl_80CAC938:
/* 80CAC938  7F 03 C3 78 */	mr r3, r24
/* 80CAC93C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80CAC940  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CAC944  38 1C 08 08 */	addi r0, r28, 0x808
/* 80CAC948  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80CAC94C  EC 42 00 2A */	fadds f2, f2, f0
/* 80CAC950  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80CAC954  4B 69 9F 95 */	bl PSMTXTrans
/* 80CAC958  7F 03 C3 78 */	mr r3, r24
/* 80CAC95C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80CAC960  38 04 C0 01 */	addi r0, r4, -16383
/* 80CAC964  7C 04 07 34 */	extsh r4, r0
/* 80CAC968  4B 35 FA CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CAC96C  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80CAC970  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CAC974  93 21 00 08 */	stw r25, 8(r1)
/* 80CAC978  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CAC97C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80CAC980  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80CAC984  C0 5A 00 00 */	lfs f2, 0(r26)
/* 80CAC988  FC 60 10 90 */	fmr f3, f2
/* 80CAC98C  4B 36 04 11 */	bl transM__14mDoMtx_stack_cFfff
/* 80CAC990  7F 63 DB 78 */	mr r3, r27
/* 80CAC994  38 9D 06 00 */	addi r4, r29, 0x600
/* 80CAC998  7C 9E 22 14 */	add r4, r30, r4
/* 80CAC99C  4B 69 9B 15 */	bl PSMTXCopy
/* 80CAC9A0  3B FF 00 01 */	addi r31, r31, 1
/* 80CAC9A4  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80CAC9A8  3B BD 00 30 */	addi r29, r29, 0x30
/* 80CAC9AC  3B 9C 00 04 */	addi r28, r28, 4
/* 80CAC9B0  41 80 FF 88 */	blt lbl_80CAC938
/* 80CAC9B4  38 7E 06 00 */	addi r3, r30, 0x600
/* 80CAC9B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAC9BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAC9C0  4B 69 9A F1 */	bl PSMTXCopy
/* 80CAC9C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAC9C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CAC9CC  38 9E 05 A8 */	addi r4, r30, 0x5a8
/* 80CAC9D0  4B 69 9A E1 */	bl PSMTXCopy
/* 80CAC9D4  3B 00 00 00 */	li r24, 0
/* 80CAC9D8  3B E0 00 00 */	li r31, 0
/* 80CAC9DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAC9E0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80CAC9E4:
/* 80CAC9E4  38 18 00 01 */	addi r0, r24, 1
/* 80CAC9E8  1C 60 00 30 */	mulli r3, r0, 0x30
/* 80CAC9EC  38 63 06 00 */	addi r3, r3, 0x600
/* 80CAC9F0  7C 7E 1A 14 */	add r3, r30, r3
/* 80CAC9F4  7F 84 E3 78 */	mr r4, r28
/* 80CAC9F8  4B 69 9A B9 */	bl PSMTXCopy
/* 80CAC9FC  7F 83 E3 78 */	mr r3, r28
/* 80CACA00  38 9F 08 60 */	addi r4, r31, 0x860
/* 80CACA04  7C 9E 22 14 */	add r4, r30, r4
/* 80CACA08  4B 69 9A A9 */	bl PSMTXCopy
/* 80CACA0C  3B 18 00 01 */	addi r24, r24, 1
/* 80CACA10  2C 18 00 09 */	cmpwi r24, 9
/* 80CACA14  3B FF 00 30 */	addi r31, r31, 0x30
/* 80CACA18  41 80 FF CC */	blt lbl_80CAC9E4
/* 80CACA1C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80CACA20  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80CACA24  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80CACA28  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80CACA2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CACA30  4B 6B 57 E5 */	bl _restgpr_24
/* 80CACA34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CACA38  7C 08 03 A6 */	mtlr r0
/* 80CACA3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CACA40  4E 80 00 20 */	blr 
