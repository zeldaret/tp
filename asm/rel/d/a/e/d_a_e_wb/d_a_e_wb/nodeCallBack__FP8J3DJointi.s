lbl_807D2610:
/* 807D2610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807D2614  7C 08 02 A6 */	mflr r0
/* 807D2618  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D261C  39 61 00 20 */	addi r11, r1, 0x20
/* 807D2620  4B B8 FB B9 */	bl _savegpr_28
/* 807D2624  2C 04 00 00 */	cmpwi r4, 0
/* 807D2628  40 82 01 90 */	bne lbl_807D27B8
/* 807D262C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 807D2630  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 807D2634  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 807D2638  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 807D263C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 807D2640  28 1C 00 00 */	cmplwi r28, 0
/* 807D2644  41 82 01 74 */	beq lbl_807D27B8
/* 807D2648  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 807D264C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807D2650  1F BF 00 30 */	mulli r29, r31, 0x30
/* 807D2654  7C 60 EA 14 */	add r3, r0, r29
/* 807D2658  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807D265C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807D2660  80 84 00 00 */	lwz r4, 0(r4)
/* 807D2664  4B B7 3E 4D */	bl PSMTXCopy
/* 807D2668  2C 1F 00 00 */	cmpwi r31, 0
/* 807D266C  40 82 00 1C */	bne lbl_807D2688
/* 807D2670  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D2674  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D2678  80 63 00 00 */	lwz r3, 0(r3)
/* 807D267C  A8 9C 07 9A */	lha r4, 0x79a(r28)
/* 807D2680  4B 83 9E 4D */	bl mDoMtx_ZrotM__FPA4_fs
/* 807D2684  48 00 00 B0 */	b lbl_807D2734
lbl_807D2688:
/* 807D2688  2C 1F 00 02 */	cmpwi r31, 2
/* 807D268C  41 82 00 14 */	beq lbl_807D26A0
/* 807D2690  80 7C 06 88 */	lwz r3, 0x688(r28)
/* 807D2694  38 03 00 0B */	addi r0, r3, 0xb
/* 807D2698  7C 1F 00 00 */	cmpw r31, r0
/* 807D269C  40 82 00 1C */	bne lbl_807D26B8
lbl_807D26A0:
/* 807D26A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D26A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D26A8  80 63 00 00 */	lwz r3, 0(r3)
/* 807D26AC  A8 9C 06 D8 */	lha r4, 0x6d8(r28)
/* 807D26B0  4B 83 9D 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 807D26B4  48 00 00 80 */	b lbl_807D2734
lbl_807D26B8:
/* 807D26B8  2C 1F 00 04 */	cmpwi r31, 4
/* 807D26BC  41 82 00 5C */	beq lbl_807D2718
/* 807D26C0  2C 1F 00 08 */	cmpwi r31, 8
/* 807D26C4  41 82 00 54 */	beq lbl_807D2718
/* 807D26C8  2C 1F 00 13 */	cmpwi r31, 0x13
/* 807D26CC  40 82 00 10 */	bne lbl_807D26DC
/* 807D26D0  88 1C 07 9D */	lbz r0, 0x79d(r28)
/* 807D26D4  7C 00 07 75 */	extsb. r0, r0
/* 807D26D8  41 82 00 40 */	beq lbl_807D2718
lbl_807D26DC:
/* 807D26DC  2C 1F 00 17 */	cmpwi r31, 0x17
/* 807D26E0  40 82 00 10 */	bne lbl_807D26F0
/* 807D26E4  88 1C 07 9D */	lbz r0, 0x79d(r28)
/* 807D26E8  7C 00 07 75 */	extsb. r0, r0
/* 807D26EC  41 82 00 2C */	beq lbl_807D2718
lbl_807D26F0:
/* 807D26F0  2C 1F 00 16 */	cmpwi r31, 0x16
/* 807D26F4  40 82 00 10 */	bne lbl_807D2704
/* 807D26F8  88 1C 07 9D */	lbz r0, 0x79d(r28)
/* 807D26FC  7C 00 07 75 */	extsb. r0, r0
/* 807D2700  40 82 00 18 */	bne lbl_807D2718
lbl_807D2704:
/* 807D2704  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 807D2708  40 82 00 2C */	bne lbl_807D2734
/* 807D270C  88 1C 07 9D */	lbz r0, 0x79d(r28)
/* 807D2710  7C 00 07 75 */	extsb. r0, r0
/* 807D2714  41 82 00 20 */	beq lbl_807D2734
lbl_807D2718:
/* 807D2718  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D271C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D2720  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2724  A8 1C 07 9A */	lha r0, 0x79a(r28)
/* 807D2728  54 00 08 3C */	slwi r0, r0, 1
/* 807D272C  7C 04 07 34 */	extsh r4, r0
/* 807D2730  4B 83 9D 05 */	bl mDoMtx_YrotM__FPA4_fs
lbl_807D2734:
/* 807D2734  88 1C 07 9D */	lbz r0, 0x79d(r28)
/* 807D2738  7C 00 07 75 */	extsb. r0, r0
/* 807D273C  41 82 00 48 */	beq lbl_807D2784
/* 807D2740  2C 1F 00 0D */	cmpwi r31, 0xd
/* 807D2744  40 82 00 40 */	bne lbl_807D2784
/* 807D2748  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D274C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D2750  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2754  A8 9C 06 E0 */	lha r4, 0x6e0(r28)
/* 807D2758  4B 83 9C DD */	bl mDoMtx_YrotM__FPA4_fs
/* 807D275C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D2760  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D2764  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2768  A8 9C 06 DE */	lha r4, 0x6de(r28)
/* 807D276C  4B 83 9C 31 */	bl mDoMtx_XrotM__FPA4_fs
/* 807D2770  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D2774  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D2778  80 63 00 00 */	lwz r3, 0(r3)
/* 807D277C  A8 9C 06 E2 */	lha r4, 0x6e2(r28)
/* 807D2780  4B 83 9D 4D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_807D2784:
/* 807D2784  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D2788  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D278C  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2790  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 807D2794  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807D2798  7C 80 EA 14 */	add r4, r0, r29
/* 807D279C  4B B7 3D 15 */	bl PSMTXCopy
/* 807D27A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807D27A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807D27A8  80 63 00 00 */	lwz r3, 0(r3)
/* 807D27AC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 807D27B0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 807D27B4  4B B7 3C FD */	bl PSMTXCopy
lbl_807D27B8:
/* 807D27B8  38 60 00 01 */	li r3, 1
/* 807D27BC  39 61 00 20 */	addi r11, r1, 0x20
/* 807D27C0  4B B8 FA 65 */	bl _restgpr_28
/* 807D27C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807D27C8  7C 08 03 A6 */	mtlr r0
/* 807D27CC  38 21 00 20 */	addi r1, r1, 0x20
/* 807D27D0  4E 80 00 20 */	blr 
