lbl_807C267C:
/* 807C267C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807C2680  7C 08 02 A6 */	mflr r0
/* 807C2684  90 01 00 24 */	stw r0, 0x24(r1)
/* 807C2688  39 61 00 20 */	addi r11, r1, 0x20
/* 807C268C  4B B9 FB 4C */	b _savegpr_28
/* 807C2690  7C 7D 1B 78 */	mr r29, r3
/* 807C2694  7C BE 2B 78 */	mr r30, r5
/* 807C2698  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 807C269C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 807C26A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807C26A4  1F FC 00 30 */	mulli r31, r28, 0x30
/* 807C26A8  7C 60 FA 14 */	add r3, r0, r31
/* 807C26AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807C26B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807C26B4  4B B8 3D FC */	b PSMTXCopy
/* 807C26B8  2C 1C 00 1B */	cmpwi r28, 0x1b
/* 807C26BC  41 82 00 BC */	beq lbl_807C2778
/* 807C26C0  40 80 00 18 */	bge lbl_807C26D8
/* 807C26C4  2C 1C 00 0F */	cmpwi r28, 0xf
/* 807C26C8  40 80 01 3C */	bge lbl_807C2804
/* 807C26CC  2C 1C 00 0B */	cmpwi r28, 0xb
/* 807C26D0  40 80 00 20 */	bge lbl_807C26F0
/* 807C26D4  48 00 01 30 */	b lbl_807C2804
lbl_807C26D8:
/* 807C26D8  2C 1C 00 22 */	cmpwi r28, 0x22
/* 807C26DC  41 82 01 0C */	beq lbl_807C27E8
/* 807C26E0  40 80 01 24 */	bge lbl_807C2804
/* 807C26E4  2C 1C 00 21 */	cmpwi r28, 0x21
/* 807C26E8  40 80 00 D0 */	bge lbl_807C27B8
/* 807C26EC  48 00 01 18 */	b lbl_807C2804
lbl_807C26F0:
/* 807C26F0  88 1D 13 8B */	lbz r0, 0x138b(r29)
/* 807C26F4  28 00 00 00 */	cmplwi r0, 0
/* 807C26F8  41 82 01 0C */	beq lbl_807C2804
/* 807C26FC  38 1C FF F5 */	addi r0, r28, -11
/* 807C2700  1C 60 00 0C */	mulli r3, r0, 0xc
/* 807C2704  38 63 14 0C */	addi r3, r3, 0x140c
/* 807C2708  7C 7D 1A 14 */	add r3, r29, r3
/* 807C270C  4B 84 A6 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 807C2710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C2714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C2718  A8 9D 13 0C */	lha r4, 0x130c(r29)
/* 807C271C  4B 84 9D 18 */	b mDoMtx_YrotM__FPA4_fs
/* 807C2720  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C2724  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C2728  A8 9D 13 0E */	lha r4, 0x130e(r29)
/* 807C272C  4B 84 9D A0 */	b mDoMtx_ZrotM__FPA4_fs
/* 807C2730  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C2734  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C2738  1F 9C 00 06 */	mulli r28, r28, 6
/* 807C273C  7C 9D E2 14 */	add r4, r29, r28
/* 807C2740  A8 84 14 0A */	lha r4, 0x140a(r4)
/* 807C2744  4B 84 9D 88 */	b mDoMtx_ZrotM__FPA4_fs
/* 807C2748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C274C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C2750  7C 9D E2 14 */	add r4, r29, r28
/* 807C2754  A8 84 14 08 */	lha r4, 0x1408(r4)
/* 807C2758  4B 84 9C DC */	b mDoMtx_YrotM__FPA4_fs
/* 807C275C  3C 60 80 7D */	lis r3, l_HIO@ha
/* 807C2760  38 63 F4 C4 */	addi r3, r3, l_HIO@l
/* 807C2764  C0 23 00 08 */	lfs f1, 8(r3)
/* 807C2768  FC 40 08 90 */	fmr f2, f1
/* 807C276C  FC 60 08 90 */	fmr f3, f1
/* 807C2770  4B 84 A6 C8 */	b scaleM__14mDoMtx_stack_cFfff
/* 807C2774  48 00 00 90 */	b lbl_807C2804
lbl_807C2778:
/* 807C2778  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C277C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C2780  A8 9D 13 98 */	lha r4, 0x1398(r29)
/* 807C2784  4B 84 9C B0 */	b mDoMtx_YrotM__FPA4_fs
/* 807C2788  88 1D 13 91 */	lbz r0, 0x1391(r29)
/* 807C278C  28 00 00 01 */	cmplwi r0, 1
/* 807C2790  40 82 00 74 */	bne lbl_807C2804
/* 807C2794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C2798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C279C  A8 9D 13 94 */	lha r4, 0x1394(r29)
/* 807C27A0  4B 84 9B FC */	b mDoMtx_XrotM__FPA4_fs
/* 807C27A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C27A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C27AC  A8 9D 13 96 */	lha r4, 0x1396(r29)
/* 807C27B0  4B 84 9D 1C */	b mDoMtx_ZrotM__FPA4_fs
/* 807C27B4  48 00 00 50 */	b lbl_807C2804
lbl_807C27B8:
/* 807C27B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C27BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C27C0  A8 9D 13 98 */	lha r4, 0x1398(r29)
/* 807C27C4  4B 84 9C 70 */	b mDoMtx_YrotM__FPA4_fs
/* 807C27C8  88 1D 13 91 */	lbz r0, 0x1391(r29)
/* 807C27CC  28 00 00 02 */	cmplwi r0, 2
/* 807C27D0  40 82 00 34 */	bne lbl_807C2804
/* 807C27D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C27D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C27DC  A8 9D 13 94 */	lha r4, 0x1394(r29)
/* 807C27E0  4B 84 9B BC */	b mDoMtx_XrotM__FPA4_fs
/* 807C27E4  48 00 00 20 */	b lbl_807C2804
lbl_807C27E8:
/* 807C27E8  88 1D 13 91 */	lbz r0, 0x1391(r29)
/* 807C27EC  28 00 00 02 */	cmplwi r0, 2
/* 807C27F0  40 82 00 14 */	bne lbl_807C2804
/* 807C27F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C27F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C27FC  A8 9D 13 96 */	lha r4, 0x1396(r29)
/* 807C2800  4B 84 9C CC */	b mDoMtx_ZrotM__FPA4_fs
lbl_807C2804:
/* 807C2804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C2808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C280C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 807C2810  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807C2814  7C 80 FA 14 */	add r4, r0, r31
/* 807C2818  4B B8 3C 98 */	b PSMTXCopy
/* 807C281C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C2820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807C2824  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 807C2828  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 807C282C  4B B8 3C 84 */	b PSMTXCopy
/* 807C2830  38 60 00 01 */	li r3, 1
/* 807C2834  39 61 00 20 */	addi r11, r1, 0x20
/* 807C2838  4B B9 F9 EC */	b _restgpr_28
/* 807C283C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C2840  7C 08 03 A6 */	mtlr r0
/* 807C2844  38 21 00 20 */	addi r1, r1, 0x20
/* 807C2848  4E 80 00 20 */	blr 
