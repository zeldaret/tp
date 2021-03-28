lbl_808608E8:
/* 808608E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 808608EC  7C 08 02 A6 */	mflr r0
/* 808608F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 808608F4  39 61 00 20 */	addi r11, r1, 0x20
/* 808608F8  4B B0 18 E4 */	b _savegpr_29
/* 808608FC  7C 7D 1B 78 */	mr r29, r3
/* 80860900  3C 60 80 86 */	lis r3, stringBase0@ha
/* 80860904  38 63 0B 68 */	addi r3, r3, stringBase0@l
/* 80860908  38 80 00 04 */	li r4, 4
/* 8086090C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80860910  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80860914  3F C5 00 02 */	addis r30, r5, 2
/* 80860918  3B DE C2 F8 */	addi r30, r30, -15624
/* 8086091C  7F C5 F3 78 */	mr r5, r30
/* 80860920  38 C0 00 80 */	li r6, 0x80
/* 80860924  4B 7D B9 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80860928  7C 7F 1B 78 */	mr r31, r3
/* 8086092C  3C 80 00 08 */	lis r4, 8
/* 80860930  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80860934  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80860938  4B 7B 43 1C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086093C  90 7D 05 68 */	stw r3, 0x568(r29)
/* 80860940  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 80860944  28 00 00 00 */	cmplwi r0, 0
/* 80860948  40 82 00 0C */	bne lbl_80860954
/* 8086094C  38 60 00 00 */	li r3, 0
/* 80860950  48 00 00 4C */	b lbl_8086099C
lbl_80860954:
/* 80860954  3C 60 80 86 */	lis r3, stringBase0@ha
/* 80860958  38 63 0B 68 */	addi r3, r3, stringBase0@l
/* 8086095C  38 80 00 07 */	li r4, 7
/* 80860960  7F C5 F3 78 */	mr r5, r30
/* 80860964  38 C0 00 80 */	li r6, 0x80
/* 80860968  4B 7D B9 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086096C  7C 65 1B 78 */	mr r5, r3
/* 80860970  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80860974  38 9F 00 58 */	addi r4, r31, 0x58
/* 80860978  38 C0 00 01 */	li r6, 1
/* 8086097C  38 E0 00 02 */	li r7, 2
/* 80860980  3D 00 80 86 */	lis r8, lit_3845@ha
/* 80860984  C0 28 0B 58 */	lfs f1, lit_3845@l(r8)
/* 80860988  39 00 00 00 */	li r8, 0
/* 8086098C  39 20 FF FF */	li r9, -1
/* 80860990  4B 7A CC AC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80860994  30 03 FF FF */	addic r0, r3, -1
/* 80860998  7C 60 19 10 */	subfe r3, r0, r3
lbl_8086099C:
/* 8086099C  39 61 00 20 */	addi r11, r1, 0x20
/* 808609A0  4B B0 18 88 */	b _restgpr_29
/* 808609A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808609A8  7C 08 03 A6 */	mtlr r0
/* 808609AC  38 21 00 20 */	addi r1, r1, 0x20
/* 808609B0  4E 80 00 20 */	blr 
