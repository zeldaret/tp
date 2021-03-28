lbl_80BA2780:
/* 80BA2780  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BA2784  7C 08 02 A6 */	mflr r0
/* 80BA2788  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA278C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA2790  4B 7B FA 48 */	b _savegpr_28
/* 80BA2794  7C 7C 1B 78 */	mr r28, r3
/* 80BA2798  7C BE 2B 78 */	mr r30, r5
/* 80BA279C  A3 A4 00 14 */	lhz r29, 0x14(r4)
/* 80BA27A0  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80BA27A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BA27A8  1F FD 00 30 */	mulli r31, r29, 0x30
/* 80BA27AC  7C 60 FA 14 */	add r3, r0, r31
/* 80BA27B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80BA27B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80BA27B8  4B 7A 3C F8 */	b PSMTXCopy
/* 80BA27BC  2C 1D 00 01 */	cmpwi r29, 1
/* 80BA27C0  40 82 00 4C */	bne lbl_80BA280C
/* 80BA27C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA27C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA27CC  3C 80 80 BA */	lis r4, lit_3814@ha
/* 80BA27D0  C0 44 54 58 */	lfs f2, lit_3814@l(r4)
/* 80BA27D4  A8 1C 06 0C */	lha r0, 0x60c(r28)
/* 80BA27D8  3C 80 80 BA */	lis r4, lit_3816@ha
/* 80BA27DC  C8 24 54 60 */	lfd f1, lit_3816@l(r4)
/* 80BA27E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BA27E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA27E8  3C 00 43 30 */	lis r0, 0x4330
/* 80BA27EC  90 01 00 08 */	stw r0, 8(r1)
/* 80BA27F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BA27F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BA27F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BA27FC  FC 00 00 1E */	fctiwz f0, f0
/* 80BA2800  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BA2804  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BA2808  4B 46 9C 2C */	b mDoMtx_YrotM__FPA4_fs
lbl_80BA280C:
/* 80BA280C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2810  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA2814  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80BA2818  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80BA281C  7C 80 FA 14 */	add r4, r0, r31
/* 80BA2820  4B 7A 3C 90 */	b PSMTXCopy
/* 80BA2824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BA2828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BA282C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80BA2830  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80BA2834  4B 7A 3C 7C */	b PSMTXCopy
/* 80BA2838  38 60 00 01 */	li r3, 1
/* 80BA283C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BA2840  4B 7B F9 E4 */	b _restgpr_28
/* 80BA2844  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BA2848  7C 08 03 A6 */	mtlr r0
/* 80BA284C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BA2850  4E 80 00 20 */	blr 
