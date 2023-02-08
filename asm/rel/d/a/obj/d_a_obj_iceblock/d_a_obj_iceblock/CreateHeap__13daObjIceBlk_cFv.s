lbl_80C22618:
/* 80C22618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C2261C  7C 08 02 A6 */	mflr r0
/* 80C22620  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C22624  39 61 00 20 */	addi r11, r1, 0x20
/* 80C22628  4B 73 FB B5 */	bl _savegpr_29
/* 80C2262C  7C 7F 1B 78 */	mr r31, r3
/* 80C22630  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C22634  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C22638  28 04 00 FF */	cmplwi r4, 0xff
/* 80C2263C  41 82 01 00 */	beq lbl_80C2273C
/* 80C22640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22648  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C2264C  7C 05 07 74 */	extsb r5, r0
/* 80C22650  4B 41 2D 11 */	bl isSwitch__10dSv_info_cCFii
/* 80C22654  2C 03 00 00 */	cmpwi r3, 0
/* 80C22658  40 82 00 E4 */	bne lbl_80C2273C
/* 80C2265C  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C244F0@ha */
/* 80C22660  38 63 44 F0 */	addi r3, r3, l_arcName@l /* 0x80C244F0@l */
/* 80C22664  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22668  3C 80 80 C2 */	lis r4, l_bmd@ha /* 0x80C243A0@ha */
/* 80C2266C  38 84 43 A0 */	addi r4, r4, l_bmd@l /* 0x80C243A0@l */
/* 80C22670  80 84 00 00 */	lwz r4, 0(r4)
/* 80C22674  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22678  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2267C  3F C5 00 02 */	addis r30, r5, 2
/* 80C22680  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C22684  7F C5 F3 78 */	mr r5, r30
/* 80C22688  38 C0 00 80 */	li r6, 0x80
/* 80C2268C  4B 41 9C 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C22690  38 80 00 00 */	li r4, 0
/* 80C22694  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C22698  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C2269C  4B 3F 25 B9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C226A0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C226A4  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80C226A8  28 00 00 00 */	cmplwi r0, 0
/* 80C226AC  40 82 00 0C */	bne lbl_80C226B8
/* 80C226B0  38 60 00 00 */	li r3, 0
/* 80C226B4  48 00 01 28 */	b lbl_80C227DC
lbl_80C226B8:
/* 80C226B8  38 60 00 C0 */	li r3, 0xc0
/* 80C226BC  4B 6A C5 91 */	bl __nw__FUl
/* 80C226C0  7C 60 1B 79 */	or. r0, r3, r3
/* 80C226C4  41 82 00 0C */	beq lbl_80C226D0
/* 80C226C8  4B 45 92 A9 */	bl __ct__4dBgWFv
/* 80C226CC  7C 60 1B 78 */	mr r0, r3
lbl_80C226D0:
/* 80C226D0  90 1F 09 44 */	stw r0, 0x944(r31)
/* 80C226D4  80 1F 09 44 */	lwz r0, 0x944(r31)
/* 80C226D8  28 00 00 00 */	cmplwi r0, 0
/* 80C226DC  41 82 00 50 */	beq lbl_80C2272C
/* 80C226E0  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C244F0@ha */
/* 80C226E4  38 63 44 F0 */	addi r3, r3, l_arcName@l /* 0x80C244F0@l */
/* 80C226E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C226EC  38 80 00 0B */	li r4, 0xb
/* 80C226F0  7F C5 F3 78 */	mr r5, r30
/* 80C226F4  38 C0 00 80 */	li r6, 0x80
/* 80C226F8  4B 41 9B F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C226FC  7C 64 1B 78 */	mr r4, r3
/* 80C22700  80 7F 09 44 */	lwz r3, 0x944(r31)
/* 80C22704  38 A0 00 01 */	li r5, 1
/* 80C22708  38 DF 05 6C */	addi r6, r31, 0x56c
/* 80C2270C  4B 45 78 2D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C22710  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C22714  40 82 00 18 */	bne lbl_80C2272C
/* 80C22718  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 80C2271C  38 03 5B 44 */	addi r0, r3, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 80C22720  80 7F 09 44 */	lwz r3, 0x944(r31)
/* 80C22724  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80C22728  48 00 00 1C */	b lbl_80C22744
lbl_80C2272C:
/* 80C2272C  38 00 00 00 */	li r0, 0
/* 80C22730  90 1F 09 44 */	stw r0, 0x944(r31)
/* 80C22734  38 60 00 00 */	li r3, 0
/* 80C22738  48 00 00 A4 */	b lbl_80C227DC
lbl_80C2273C:
/* 80C2273C  38 00 00 00 */	li r0, 0
/* 80C22740  90 1F 05 A8 */	stw r0, 0x5a8(r31)
lbl_80C22744:
/* 80C22744  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C244F0@ha */
/* 80C22748  38 63 44 F0 */	addi r3, r3, l_arcName@l /* 0x80C244F0@l */
/* 80C2274C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22750  3C 80 80 C2 */	lis r4, l_bmd@ha /* 0x80C243A0@ha */
/* 80C22754  38 84 43 A0 */	addi r4, r4, l_bmd@l /* 0x80C243A0@l */
/* 80C22758  80 84 00 04 */	lwz r4, 4(r4)
/* 80C2275C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C22760  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C22764  3F C5 00 02 */	addis r30, r5, 2
/* 80C22768  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C2276C  7F C5 F3 78 */	mr r5, r30
/* 80C22770  38 C0 00 80 */	li r6, 0x80
/* 80C22774  4B 41 9B 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C22778  7C 7D 1B 78 */	mr r29, r3
/* 80C2277C  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C244F0@ha */
/* 80C22780  38 63 44 F0 */	addi r3, r3, l_arcName@l /* 0x80C244F0@l */
/* 80C22784  80 63 00 00 */	lwz r3, 0(r3)
/* 80C22788  3C 80 80 C2 */	lis r4, l_bmd@ha /* 0x80C243A0@ha */
/* 80C2278C  38 84 43 A0 */	addi r4, r4, l_bmd@l /* 0x80C243A0@l */
/* 80C22790  80 84 00 00 */	lwz r4, 0(r4)
/* 80C22794  7F C5 F3 78 */	mr r5, r30
/* 80C22798  38 C0 00 80 */	li r6, 0x80
/* 80C2279C  4B 41 9B 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C227A0  7C 64 1B 78 */	mr r4, r3
/* 80C227A4  7F A3 EB 78 */	mr r3, r29
/* 80C227A8  4B 3E C0 8D */	bl mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80C227AC  7F A3 EB 78 */	mr r3, r29
/* 80C227B0  3C 80 00 08 */	lis r4, 8
/* 80C227B4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C227B8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C227BC  4B 3F 24 99 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C227C0  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80C227C4  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80C227C8  28 00 00 00 */	cmplwi r0, 0
/* 80C227CC  40 82 00 0C */	bne lbl_80C227D8
/* 80C227D0  38 60 00 00 */	li r3, 0
/* 80C227D4  48 00 00 08 */	b lbl_80C227DC
lbl_80C227D8:
/* 80C227D8  38 60 00 01 */	li r3, 1
lbl_80C227DC:
/* 80C227DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C227E0  4B 73 FA 49 */	bl _restgpr_29
/* 80C227E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C227E8  7C 08 03 A6 */	mtlr r0
/* 80C227EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C227F0  4E 80 00 20 */	blr 
