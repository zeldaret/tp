lbl_807EE4D4:
/* 807EE4D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807EE4D8  7C 08 02 A6 */	mflr r0
/* 807EE4DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807EE4E0  39 61 00 30 */	addi r11, r1, 0x30
/* 807EE4E4  4B B7 3C F5 */	bl _savegpr_28
/* 807EE4E8  7C 7F 1B 78 */	mr r31, r3
/* 807EE4EC  3C 60 80 7F */	lis r3, d_a_e_ww__stringBase0@ha /* 0x807EF8B8@ha */
/* 807EE4F0  38 63 F8 B8 */	addi r3, r3, d_a_e_ww__stringBase0@l /* 0x807EF8B8@l */
/* 807EE4F4  38 80 00 13 */	li r4, 0x13
/* 807EE4F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EE4FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EE500  3F A5 00 02 */	addis r29, r5, 2
/* 807EE504  3B BD C2 F8 */	addi r29, r29, -15624
/* 807EE508  7F A5 EB 78 */	mr r5, r29
/* 807EE50C  38 C0 00 80 */	li r6, 0x80
/* 807EE510  4B 84 DD DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807EE514  7C 7C 1B 78 */	mr r28, r3
/* 807EE518  38 60 00 58 */	li r3, 0x58
/* 807EE51C  4B AE 07 31 */	bl __nw__FUl
/* 807EE520  7C 7E 1B 79 */	or. r30, r3, r3
/* 807EE524  41 82 00 68 */	beq lbl_807EE58C
/* 807EE528  3C 60 80 7F */	lis r3, d_a_e_ww__stringBase0@ha /* 0x807EF8B8@ha */
/* 807EE52C  38 63 F8 B8 */	addi r3, r3, d_a_e_ww__stringBase0@l /* 0x807EF8B8@l */
/* 807EE530  38 80 00 04 */	li r4, 4
/* 807EE534  7F A5 EB 78 */	mr r5, r29
/* 807EE538  38 C0 00 80 */	li r6, 0x80
/* 807EE53C  4B 84 DD B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807EE540  7C 67 1B 78 */	mr r7, r3
/* 807EE544  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 807EE548  90 01 00 08 */	stw r0, 8(r1)
/* 807EE54C  3C 00 00 08 */	lis r0, 8
/* 807EE550  90 01 00 0C */	stw r0, 0xc(r1)
/* 807EE554  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807EE558  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807EE55C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807EE560  7F C3 F3 78 */	mr r3, r30
/* 807EE564  7F 84 E3 78 */	mr r4, r28
/* 807EE568  38 A0 00 00 */	li r5, 0
/* 807EE56C  38 C0 00 00 */	li r6, 0
/* 807EE570  39 00 00 00 */	li r8, 0
/* 807EE574  3D 20 80 7F */	lis r9, lit_3907@ha /* 0x807EF778@ha */
/* 807EE578  C0 29 F7 78 */	lfs f1, lit_3907@l(r9)  /* 0x807EF778@l */
/* 807EE57C  39 20 00 00 */	li r9, 0
/* 807EE580  39 40 FF FF */	li r10, -1
/* 807EE584  4B 82 22 4D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807EE588  7C 7E 1B 78 */	mr r30, r3
lbl_807EE58C:
/* 807EE58C  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 807EE590  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807EE594  28 03 00 00 */	cmplwi r3, 0
/* 807EE598  41 82 00 10 */	beq lbl_807EE5A8
/* 807EE59C  80 A3 00 04 */	lwz r5, 4(r3)
/* 807EE5A0  28 05 00 00 */	cmplwi r5, 0
/* 807EE5A4  40 82 00 0C */	bne lbl_807EE5B0
lbl_807EE5A8:
/* 807EE5A8  38 60 00 00 */	li r3, 0
/* 807EE5AC  48 00 00 58 */	b lbl_807EE604
lbl_807EE5B0:
/* 807EE5B0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 807EE5B4  38 E0 00 01 */	li r7, 1
/* 807EE5B8  3C 60 80 7E */	lis r3, JointCallBack__8daE_WW_cFP8J3DJointi@ha /* 0x807E7800@ha */
/* 807EE5BC  38 83 78 00 */	addi r4, r3, JointCallBack__8daE_WW_cFP8J3DJointi@l /* 0x807E7800@l */
/* 807EE5C0  48 00 00 2C */	b lbl_807EE5EC
lbl_807EE5C4:
/* 807EE5C4  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807EE5C8  28 00 00 03 */	cmplwi r0, 3
/* 807EE5CC  41 82 00 0C */	beq lbl_807EE5D8
/* 807EE5D0  28 00 00 04 */	cmplwi r0, 4
/* 807EE5D4  40 82 00 14 */	bne lbl_807EE5E8
lbl_807EE5D8:
/* 807EE5D8  80 66 00 28 */	lwz r3, 0x28(r6)
/* 807EE5DC  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 807EE5E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 807EE5E4  90 83 00 04 */	stw r4, 4(r3)
lbl_807EE5E8:
/* 807EE5E8  38 E7 00 01 */	addi r7, r7, 1
lbl_807EE5EC:
/* 807EE5EC  80 C5 00 04 */	lwz r6, 4(r5)
/* 807EE5F0  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 807EE5F4  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807EE5F8  7C 00 18 40 */	cmplw r0, r3
/* 807EE5FC  41 80 FF C8 */	blt lbl_807EE5C4
/* 807EE600  38 60 00 01 */	li r3, 1
lbl_807EE604:
/* 807EE604  39 61 00 30 */	addi r11, r1, 0x30
/* 807EE608  4B B7 3C 1D */	bl _restgpr_28
/* 807EE60C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807EE610  7C 08 03 A6 */	mtlr r0
/* 807EE614  38 21 00 30 */	addi r1, r1, 0x30
/* 807EE618  4E 80 00 20 */	blr 
