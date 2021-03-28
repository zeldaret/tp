lbl_8046A724:
/* 8046A724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046A728  7C 08 02 A6 */	mflr r0
/* 8046A72C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046A730  39 61 00 20 */	addi r11, r1, 0x20
/* 8046A734  4B EF 7A A0 */	b _savegpr_27
/* 8046A738  7C 7F 1B 78 */	mr r31, r3
/* 8046A73C  3C 60 80 47 */	lis r3, struct_8046B0D0+0x0@ha
/* 8046A740  38 63 B0 D0 */	addi r3, r3, struct_8046B0D0+0x0@l
/* 8046A744  38 63 00 23 */	addi r3, r3, 0x23
/* 8046A748  88 1F 0A 5A */	lbz r0, 0xa5a(r31)
/* 8046A74C  7C 00 07 74 */	extsb r0, r0
/* 8046A750  54 00 10 3A */	slwi r0, r0, 2
/* 8046A754  3C 80 80 47 */	lis r4, model_d@ha
/* 8046A758  38 84 B1 3C */	addi r4, r4, model_d@l
/* 8046A75C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046A760  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8046A764  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8046A768  3F 85 00 02 */	addis r28, r5, 2
/* 8046A76C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8046A770  7F 85 E3 78 */	mr r5, r28
/* 8046A774  38 C0 00 80 */	li r6, 0x80
/* 8046A778  4B BD 1B 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046A77C  3C 80 00 08 */	lis r4, 8
/* 8046A780  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8046A784  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8046A788  4B BA A4 CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8046A78C  90 7F 05 A0 */	stw r3, 0x5a0(r31)
/* 8046A790  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 8046A794  28 00 00 00 */	cmplwi r0, 0
/* 8046A798  40 82 00 0C */	bne lbl_8046A7A4
/* 8046A79C  38 60 00 00 */	li r3, 0
/* 8046A7A0  48 00 00 A0 */	b lbl_8046A840
lbl_8046A7A4:
/* 8046A7A4  3C 60 80 47 */	lis r3, lit_3683@ha
/* 8046A7A8  C0 23 AF CC */	lfs f1, lit_3683@l(r3)
/* 8046A7AC  FC 40 08 90 */	fmr f2, f1
/* 8046A7B0  FC 60 08 90 */	fmr f3, f1
/* 8046A7B4  38 60 00 00 */	li r3, 0
/* 8046A7B8  4B E0 66 EC */	b MtxScale__FfffUc
/* 8046A7BC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8046A7C0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8046A7C4  80 63 00 00 */	lwz r3, 0(r3)
/* 8046A7C8  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 8046A7CC  38 84 00 24 */	addi r4, r4, 0x24
/* 8046A7D0  4B ED BC E0 */	b PSMTXCopy
/* 8046A7D4  3C 60 80 47 */	lis r3, struct_8046B0D0+0x0@ha
/* 8046A7D8  38 63 B0 D0 */	addi r3, r3, struct_8046B0D0+0x0@l
/* 8046A7DC  38 63 00 23 */	addi r3, r3, 0x23
/* 8046A7E0  38 80 00 07 */	li r4, 7
/* 8046A7E4  7F 85 E3 78 */	mr r5, r28
/* 8046A7E8  38 C0 00 80 */	li r6, 0x80
/* 8046A7EC  4B BD 1B 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046A7F0  7C 7C 1B 78 */	mr r28, r3
/* 8046A7F4  3B 60 00 00 */	li r27, 0
/* 8046A7F8  3B C0 00 00 */	li r30, 0
/* 8046A7FC  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_8046A800:
/* 8046A800  7F 83 E3 78 */	mr r3, r28
/* 8046A804  3C 80 00 08 */	lis r4, 8
/* 8046A808  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 8046A80C  4B BA A4 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8046A810  38 1E 0A 7C */	addi r0, r30, 0xa7c
/* 8046A814  7C 7F 01 2E */	stwx r3, r31, r0
/* 8046A818  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8046A81C  28 00 00 00 */	cmplwi r0, 0
/* 8046A820  40 82 00 0C */	bne lbl_8046A82C
/* 8046A824  38 60 00 00 */	li r3, 0
/* 8046A828  48 00 00 18 */	b lbl_8046A840
lbl_8046A82C:
/* 8046A82C  3B 7B 00 01 */	addi r27, r27, 1
/* 8046A830  2C 1B 00 06 */	cmpwi r27, 6
/* 8046A834  3B DE 00 A8 */	addi r30, r30, 0xa8
/* 8046A838  41 80 FF C8 */	blt lbl_8046A800
/* 8046A83C  38 60 00 01 */	li r3, 1
lbl_8046A840:
/* 8046A840  39 61 00 20 */	addi r11, r1, 0x20
/* 8046A844  4B EF 79 DC */	b _restgpr_27
/* 8046A848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046A84C  7C 08 03 A6 */	mtlr r0
/* 8046A850  38 21 00 20 */	addi r1, r1, 0x20
/* 8046A854  4E 80 00 20 */	blr 
