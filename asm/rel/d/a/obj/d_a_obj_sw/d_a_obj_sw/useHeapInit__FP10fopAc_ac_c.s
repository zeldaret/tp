lbl_80CF2790:
/* 80CF2790  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CF2794  7C 08 02 A6 */	mflr r0
/* 80CF2798  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CF279C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF27A0  4B 66 FA 28 */	b _savegpr_24
/* 80CF27A4  7C 7C 1B 78 */	mr r28, r3
/* 80CF27A8  3C 60 80 CF */	lis r3, lit_3850@ha
/* 80CF27AC  3B E3 30 00 */	addi r31, r3, lit_3850@l
/* 80CF27B0  88 1C 05 70 */	lbz r0, 0x570(r28)
/* 80CF27B4  28 00 00 08 */	cmplwi r0, 8
/* 80CF27B8  40 82 01 90 */	bne lbl_80CF2948
/* 80CF27BC  3B A0 00 00 */	li r29, 0
/* 80CF27C0  3B 60 00 00 */	li r27, 0
/* 80CF27C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF27C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF27CC  3F C3 00 02 */	addis r30, r3, 2
/* 80CF27D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF27D4  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 80CF27D8  3B DE C2 F8 */	addi r30, r30, -15624
lbl_80CF27DC:
/* 80CF27DC  38 60 00 54 */	li r3, 0x54
/* 80CF27E0  4B 5D C4 6C */	b __nw__FUl
/* 80CF27E4  7C 79 1B 79 */	or. r25, r3, r3
/* 80CF27E8  41 82 00 88 */	beq lbl_80CF2870
/* 80CF27EC  3C 60 80 CF */	lis r3, stringBase0@ha
/* 80CF27F0  38 63 30 EC */	addi r3, r3, stringBase0@l
/* 80CF27F4  38 80 00 0D */	li r4, 0xd
/* 80CF27F8  7F C5 F3 78 */	mr r5, r30
/* 80CF27FC  38 C0 00 80 */	li r6, 0x80
/* 80CF2800  4B 34 9A EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF2804  7C 78 1B 78 */	mr r24, r3
/* 80CF2808  3C 60 80 CF */	lis r3, stringBase0@ha
/* 80CF280C  38 63 30 EC */	addi r3, r3, stringBase0@l
/* 80CF2810  38 80 00 11 */	li r4, 0x11
/* 80CF2814  7F C5 F3 78 */	mr r5, r30
/* 80CF2818  38 C0 00 80 */	li r6, 0x80
/* 80CF281C  4B 34 9A D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF2820  7C 64 1B 78 */	mr r4, r3
/* 80CF2824  38 00 00 01 */	li r0, 1
/* 80CF2828  90 01 00 08 */	stw r0, 8(r1)
/* 80CF282C  38 00 00 00 */	li r0, 0
/* 80CF2830  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF2834  3C 00 00 08 */	lis r0, 8
/* 80CF2838  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CF283C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80CF2840  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80CF2844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF2848  7F 23 CB 78 */	mr r3, r25
/* 80CF284C  38 A0 00 00 */	li r5, 0
/* 80CF2850  38 C0 00 00 */	li r6, 0
/* 80CF2854  7F 07 C3 78 */	mr r7, r24
/* 80CF2858  39 00 00 02 */	li r8, 2
/* 80CF285C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CF2860  39 20 00 00 */	li r9, 0
/* 80CF2864  39 40 FF FF */	li r10, -1
/* 80CF2868  4B 31 D3 E4 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80CF286C  7C 79 1B 78 */	mr r25, r3
lbl_80CF2870:
/* 80CF2870  7F 1C DA 14 */	add r24, r28, r27
/* 80CF2874  93 38 05 E8 */	stw r25, 0x5e8(r24)
/* 80CF2878  80 78 05 E8 */	lwz r3, 0x5e8(r24)
/* 80CF287C  28 03 00 00 */	cmplwi r3, 0
/* 80CF2880  41 82 00 10 */	beq lbl_80CF2890
/* 80CF2884  80 03 00 04 */	lwz r0, 4(r3)
/* 80CF2888  28 00 00 00 */	cmplwi r0, 0
/* 80CF288C  40 82 00 0C */	bne lbl_80CF2898
lbl_80CF2890:
/* 80CF2890  38 60 00 00 */	li r3, 0
/* 80CF2894  48 00 01 28 */	b lbl_80CF29BC
lbl_80CF2898:
/* 80CF2898  7F 43 D3 78 */	mr r3, r26
/* 80CF289C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CF28A0  FC 40 08 90 */	fmr f2, f1
/* 80CF28A4  FC 60 08 90 */	fmr f3, f1
/* 80CF28A8  4B 65 40 C0 */	b PSMTXScale
/* 80CF28AC  80 78 05 E8 */	lwz r3, 0x5e8(r24)
/* 80CF28B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF28B4  7F 43 D3 78 */	mr r3, r26
/* 80CF28B8  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF28BC  4B 65 3B F4 */	b PSMTXCopy
/* 80CF28C0  2C 1D 00 02 */	cmpwi r29, 2
/* 80CF28C4  40 82 00 54 */	bne lbl_80CF2918
/* 80CF28C8  3C 60 80 CF */	lis r3, stringBase0@ha
/* 80CF28CC  38 63 30 EC */	addi r3, r3, stringBase0@l
/* 80CF28D0  38 80 00 12 */	li r4, 0x12
/* 80CF28D4  7F C5 F3 78 */	mr r5, r30
/* 80CF28D8  38 C0 00 80 */	li r6, 0x80
/* 80CF28DC  4B 34 9A 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF28E0  3C 80 00 08 */	lis r4, 8
/* 80CF28E4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CF28E8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CF28EC  4B 32 23 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF28F0  90 7C 08 C8 */	stw r3, 0x8c8(r28)
/* 80CF28F4  80 9C 08 C8 */	lwz r4, 0x8c8(r28)
/* 80CF28F8  28 04 00 00 */	cmplwi r4, 0
/* 80CF28FC  40 82 00 0C */	bne lbl_80CF2908
/* 80CF2900  38 60 00 00 */	li r3, 0
/* 80CF2904  48 00 00 B8 */	b lbl_80CF29BC
lbl_80CF2908:
/* 80CF2908  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF290C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF2910  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF2914  4B 65 3B 9C */	b PSMTXCopy
lbl_80CF2918:
/* 80CF2918  38 78 05 EC */	addi r3, r24, 0x5ec
/* 80CF291C  38 98 05 AC */	addi r4, r24, 0x5ac
/* 80CF2920  38 A0 00 01 */	li r5, 1
/* 80CF2924  81 98 05 FC */	lwz r12, 0x5fc(r24)
/* 80CF2928  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CF292C  7D 89 03 A6 */	mtctr r12
/* 80CF2930  4E 80 04 21 */	bctrl 
/* 80CF2934  3B BD 00 01 */	addi r29, r29, 1
/* 80CF2938  2C 1D 00 08 */	cmpwi r29, 8
/* 80CF293C  3B 7B 00 64 */	addi r27, r27, 0x64
/* 80CF2940  41 80 FE 9C */	blt lbl_80CF27DC
/* 80CF2944  48 00 00 74 */	b lbl_80CF29B8
lbl_80CF2948:
/* 80CF2948  3C 60 80 CF */	lis r3, stringBase0@ha
/* 80CF294C  38 63 30 EC */	addi r3, r3, stringBase0@l
/* 80CF2950  38 63 00 08 */	addi r3, r3, 8
/* 80CF2954  38 80 00 03 */	li r4, 3
/* 80CF2958  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CF295C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CF2960  3C A5 00 02 */	addis r5, r5, 2
/* 80CF2964  38 C0 00 80 */	li r6, 0x80
/* 80CF2968  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CF296C  4B 34 99 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF2970  7C 66 1B 78 */	mr r6, r3
/* 80CF2974  38 7C 0D 50 */	addi r3, r28, 0xd50
/* 80CF2978  38 80 00 01 */	li r4, 1
/* 80CF297C  38 A0 00 3F */	li r5, 0x3f
/* 80CF2980  38 E0 00 01 */	li r7, 1
/* 80CF2984  4B 32 09 DC */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80CF2988  2C 03 00 00 */	cmpwi r3, 0
/* 80CF298C  40 82 00 0C */	bne lbl_80CF2998
/* 80CF2990  38 60 00 00 */	li r3, 0
/* 80CF2994  48 00 00 28 */	b lbl_80CF29BC
lbl_80CF2998:
/* 80CF2998  80 7C 0D 88 */	lwz r3, 0xd88(r28)
/* 80CF299C  80 63 00 04 */	lwz r3, 4(r3)
/* 80CF29A0  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CF29A4  38 00 00 3F */	li r0, 0x3f
/* 80CF29A8  7C 09 03 A6 */	mtctr r0
lbl_80CF29AC:
/* 80CF29AC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CF29B0  38 63 00 04 */	addi r3, r3, 4
/* 80CF29B4  42 00 FF F8 */	bdnz lbl_80CF29AC
lbl_80CF29B8:
/* 80CF29B8  38 60 00 01 */	li r3, 1
lbl_80CF29BC:
/* 80CF29BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80CF29C0  4B 66 F8 54 */	b _restgpr_24
/* 80CF29C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CF29C8  7C 08 03 A6 */	mtlr r0
/* 80CF29CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80CF29D0  4E 80 00 20 */	blr 
