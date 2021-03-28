lbl_80CCA8CC:
/* 80CCA8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CCA8D0  7C 08 02 A6 */	mflr r0
/* 80CCA8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CCA8D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCA8DC  4B 69 79 00 */	b _savegpr_29
/* 80CCA8E0  7C 7E 1B 78 */	mr r30, r3
/* 80CCA8E4  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCA8E8  38 63 B1 7C */	addi r3, r3, l_arcName@l
/* 80CCA8EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCA8F0  38 80 00 0A */	li r4, 0xa
/* 80CCA8F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CCA8F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CCA8FC  3F E5 00 02 */	addis r31, r5, 2
/* 80CCA900  3B FF C2 F8 */	addi r31, r31, -15624
/* 80CCA904  7F E5 FB 78 */	mr r5, r31
/* 80CCA908  38 C0 00 80 */	li r6, 0x80
/* 80CCA90C  4B 37 19 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCA910  7C 7D 1B 78 */	mr r29, r3
/* 80CCA914  3C 80 00 08 */	lis r4, 8
/* 80CCA918  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CCA91C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CCA920  4B 34 A3 34 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CCA924  90 7E 06 00 */	stw r3, 0x600(r30)
/* 80CCA928  80 1E 06 00 */	lwz r0, 0x600(r30)
/* 80CCA92C  28 00 00 00 */	cmplwi r0, 0
/* 80CCA930  40 82 00 0C */	bne lbl_80CCA93C
/* 80CCA934  38 60 00 00 */	li r3, 0
/* 80CCA938  48 00 01 74 */	b lbl_80CCAAAC
lbl_80CCA93C:
/* 80CCA93C  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCA940  38 63 B1 7C */	addi r3, r3, l_arcName@l
/* 80CCA944  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCA948  38 80 00 07 */	li r4, 7
/* 80CCA94C  7F E5 FB 78 */	mr r5, r31
/* 80CCA950  38 C0 00 80 */	li r6, 0x80
/* 80CCA954  4B 37 19 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCA958  7C 64 1B 78 */	mr r4, r3
/* 80CCA95C  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80CCA960  38 A0 00 01 */	li r5, 1
/* 80CCA964  38 C0 00 00 */	li r6, 0
/* 80CCA968  3C E0 80 CD */	lis r7, lit_4033@ha
/* 80CCA96C  C0 27 B0 B4 */	lfs f1, lit_4033@l(r7)
/* 80CCA970  38 E0 00 00 */	li r7, 0
/* 80CCA974  39 00 FF FF */	li r8, -1
/* 80CCA978  39 20 00 00 */	li r9, 0
/* 80CCA97C  4B 34 2E 60 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80CCA980  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA984  40 82 00 0C */	bne lbl_80CCA990
/* 80CCA988  38 60 00 00 */	li r3, 0
/* 80CCA98C  48 00 01 20 */	b lbl_80CCAAAC
lbl_80CCA990:
/* 80CCA990  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCA994  38 63 B1 7C */	addi r3, r3, l_arcName@l
/* 80CCA998  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCA99C  38 80 00 0D */	li r4, 0xd
/* 80CCA9A0  7F E5 FB 78 */	mr r5, r31
/* 80CCA9A4  38 C0 00 80 */	li r6, 0x80
/* 80CCA9A8  4B 37 19 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCA9AC  7C 65 1B 78 */	mr r5, r3
/* 80CCA9B0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80CCA9B4  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CCA9B8  38 C0 00 01 */	li r6, 1
/* 80CCA9BC  38 E0 00 00 */	li r7, 0
/* 80CCA9C0  3D 00 80 CD */	lis r8, lit_4033@ha
/* 80CCA9C4  C0 28 B0 B4 */	lfs f1, lit_4033@l(r8)
/* 80CCA9C8  39 00 00 00 */	li r8, 0
/* 80CCA9CC  39 20 FF FF */	li r9, -1
/* 80CCA9D0  4B 34 2C 6C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CCA9D4  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA9D8  40 82 00 0C */	bne lbl_80CCA9E4
/* 80CCA9DC  38 60 00 00 */	li r3, 0
/* 80CCA9E0  48 00 00 CC */	b lbl_80CCAAAC
lbl_80CCA9E4:
/* 80CCA9E4  38 60 00 C0 */	li r3, 0xc0
/* 80CCA9E8  4B 60 42 64 */	b __nw__FUl
/* 80CCA9EC  7C 60 1B 79 */	or. r0, r3, r3
/* 80CCA9F0  41 82 00 0C */	beq lbl_80CCA9FC
/* 80CCA9F4  4B 3B 0F 7C */	b __ct__4dBgWFv
/* 80CCA9F8  7C 60 1B 78 */	mr r0, r3
lbl_80CCA9FC:
/* 80CCA9FC  90 1E 06 04 */	stw r0, 0x604(r30)
/* 80CCAA00  80 1E 06 04 */	lwz r0, 0x604(r30)
/* 80CCAA04  28 00 00 00 */	cmplwi r0, 0
/* 80CCAA08  40 82 00 0C */	bne lbl_80CCAA14
/* 80CCAA0C  38 60 00 00 */	li r3, 0
/* 80CCAA10  48 00 00 9C */	b lbl_80CCAAAC
lbl_80CCAA14:
/* 80CCAA14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCAA18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCAA1C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80CCAA20  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80CCAA24  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80CCAA28  4B 67 BE C0 */	b PSMTXTrans
/* 80CCAA2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCAA30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCAA34  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80CCAA38  4B 34 19 FC */	b mDoMtx_YrotM__FPA4_fs
/* 80CCAA3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCAA40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCAA44  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80CCAA48  4B 34 19 54 */	b mDoMtx_XrotM__FPA4_fs
/* 80CCAA4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCAA50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCAA54  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80CCAA58  4B 34 1A 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 80CCAA5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCAA60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCAA64  38 9E 06 08 */	addi r4, r30, 0x608
/* 80CCAA68  4B 67 BA 48 */	b PSMTXCopy
/* 80CCAA6C  3C 60 80 CD */	lis r3, l_arcName@ha
/* 80CCAA70  38 63 B1 7C */	addi r3, r3, l_arcName@l
/* 80CCAA74  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCAA78  38 80 00 10 */	li r4, 0x10
/* 80CCAA7C  7F E5 FB 78 */	mr r5, r31
/* 80CCAA80  38 C0 00 80 */	li r6, 0x80
/* 80CCAA84  4B 37 18 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CCAA88  7C 64 1B 78 */	mr r4, r3
/* 80CCAA8C  80 7E 06 04 */	lwz r3, 0x604(r30)
/* 80CCAA90  38 A0 00 01 */	li r5, 1
/* 80CCAA94  38 DE 06 08 */	addi r6, r30, 0x608
/* 80CCAA98  4B 3A F4 A0 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CCAA9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CCAAA0  20 60 00 01 */	subfic r3, r0, 1
/* 80CCAAA4  30 03 FF FF */	addic r0, r3, -1
/* 80CCAAA8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CCAAAC:
/* 80CCAAAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CCAAB0  4B 69 77 78 */	b _restgpr_29
/* 80CCAAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CCAAB8  7C 08 03 A6 */	mtlr r0
/* 80CCAABC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CCAAC0  4E 80 00 20 */	blr 
