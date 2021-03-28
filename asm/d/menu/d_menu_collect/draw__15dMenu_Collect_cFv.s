lbl_801B7AC0:
/* 801B7AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7AC4  7C 08 02 A6 */	mflr r0
/* 801B7AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B7AD0  7C 7F 1B 78 */	mr r31, r3
/* 801B7AD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B7AD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B7ADC  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 801B7AE0  38 83 01 B4 */	addi r4, r3, 0x1b4
/* 801B7AE4  38 A3 01 B8 */	addi r5, r3, 0x1b8
/* 801B7AE8  80 DF 00 04 */	lwz r6, 4(r31)
/* 801B7AEC  4B E9 EC A9 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 801B7AF0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801B7AF4  4B FF EE 79 */	bl draw__17dMenu_Collect3D_cFv
/* 801B7AF8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801B7AFC  4B FF E4 4D */	bl drawTop__17dMenu_Collect2D_cFv
/* 801B7B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B7B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7B08  7C 08 03 A6 */	mtlr r0
/* 801B7B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7B10  4E 80 00 20 */	blr 
