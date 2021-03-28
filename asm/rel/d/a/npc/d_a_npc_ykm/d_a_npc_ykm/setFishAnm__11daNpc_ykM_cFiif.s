lbl_80B56624:
/* 80B56624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B56628  7C 08 02 A6 */	mflr r0
/* 80B5662C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B56630  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B56634  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B56638  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5663C  4B 80 BB A0 */	b _savegpr_29
/* 80B56640  7C 7D 1B 78 */	mr r29, r3
/* 80B56644  7C BE 2B 78 */	mr r30, r5
/* 80B56648  FF E0 08 90 */	fmr f31, f1
/* 80B5664C  3C A0 80 B6 */	lis r5, m__17daNpc_ykM_Param_c@ha
/* 80B56650  3B E5 D7 94 */	addi r31, r5, m__17daNpc_ykM_Param_c@l
/* 80B56654  38 C0 00 00 */	li r6, 0
/* 80B56658  80 03 0E 40 */	lwz r0, 0xe40(r3)
/* 80B5665C  28 00 00 00 */	cmplwi r0, 0
/* 80B56660  41 82 00 64 */	beq lbl_80B566C4
/* 80B56664  54 80 18 38 */	slwi r0, r4, 3
/* 80B56668  3C 80 80 B6 */	lis r4, fishAnmData@ha
/* 80B5666C  38 84 E8 80 */	addi r4, r4, fishAnmData@l
/* 80B56670  7C A4 00 2E */	lwzx r5, r4, r0
/* 80B56674  2C 05 00 00 */	cmpwi r5, 0
/* 80B56678  40 81 00 24 */	ble lbl_80B5669C
/* 80B5667C  7C 84 02 14 */	add r4, r4, r0
/* 80B56680  80 04 00 04 */	lwz r0, 4(r4)
/* 80B56684  54 00 10 3A */	slwi r0, r0, 2
/* 80B56688  3C 80 80 B6 */	lis r4, l_resNameList@ha
/* 80B5668C  38 84 DB 88 */	addi r4, r4, l_resNameList@l
/* 80B56690  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B56694  4B 5F 1A 00 */	b getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80B56698  7C 66 1B 78 */	mr r6, r3
lbl_80B5669C:
/* 80B5669C  28 06 00 00 */	cmplwi r6, 0
/* 80B566A0  41 82 00 24 */	beq lbl_80B566C4
/* 80B566A4  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80B566A8  7C C4 33 78 */	mr r4, r6
/* 80B566AC  7F C5 F3 78 */	mr r5, r30
/* 80B566B0  FC 20 F8 90 */	fmr f1, f31
/* 80B566B4  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80B566B8  C0 7F 01 04 */	lfs f3, 0x104(r31)
/* 80B566BC  C0 9F 01 3C */	lfs f4, 0x13c(r31)
/* 80B566C0  4B 4B A7 B0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80B566C4:
/* 80B566C4  38 60 00 01 */	li r3, 1
/* 80B566C8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B566CC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B566D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B566D4  4B 80 BB 54 */	b _restgpr_29
/* 80B566D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B566DC  7C 08 03 A6 */	mtlr r0
/* 80B566E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B566E4  4E 80 00 20 */	blr 
