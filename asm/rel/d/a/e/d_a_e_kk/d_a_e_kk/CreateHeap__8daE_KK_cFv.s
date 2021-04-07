lbl_806FE480:
/* 806FE480  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806FE484  7C 08 02 A6 */	mflr r0
/* 806FE488  90 01 00 34 */	stw r0, 0x34(r1)
/* 806FE48C  39 61 00 30 */	addi r11, r1, 0x30
/* 806FE490  4B C6 3D 49 */	bl _savegpr_28
/* 806FE494  7C 7F 1B 78 */	mr r31, r3
/* 806FE498  88 03 06 79 */	lbz r0, 0x679(r3)
/* 806FE49C  28 00 00 01 */	cmplwi r0, 1
/* 806FE4A0  41 82 01 18 */	beq lbl_806FE5B8
/* 806FE4A4  3C 60 80 70 */	lis r3, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FE4A8  38 63 F6 B8 */	addi r3, r3, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FE4AC  38 80 00 22 */	li r4, 0x22
/* 806FE4B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FE4B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FE4B8  3F A5 00 02 */	addis r29, r5, 2
/* 806FE4BC  3B BD C2 F8 */	addi r29, r29, -15624
/* 806FE4C0  7F A5 EB 78 */	mr r5, r29
/* 806FE4C4  38 C0 00 80 */	li r6, 0x80
/* 806FE4C8  4B 93 DE 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FE4CC  7C 7C 1B 78 */	mr r28, r3
/* 806FE4D0  38 60 00 58 */	li r3, 0x58
/* 806FE4D4  4B BD 07 79 */	bl __nw__FUl
/* 806FE4D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 806FE4DC  41 82 00 68 */	beq lbl_806FE544
/* 806FE4E0  3C 60 80 70 */	lis r3, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FE4E4  38 63 F6 B8 */	addi r3, r3, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FE4E8  38 80 00 19 */	li r4, 0x19
/* 806FE4EC  7F A5 EB 78 */	mr r5, r29
/* 806FE4F0  38 C0 00 80 */	li r6, 0x80
/* 806FE4F4  4B 93 DD F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FE4F8  7C 67 1B 78 */	mr r7, r3
/* 806FE4FC  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806FE500  90 01 00 08 */	stw r0, 8(r1)
/* 806FE504  38 00 00 00 */	li r0, 0
/* 806FE508  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FE50C  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000084@ha */
/* 806FE510  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x31000084@l */
/* 806FE514  90 01 00 10 */	stw r0, 0x10(r1)
/* 806FE518  7F C3 F3 78 */	mr r3, r30
/* 806FE51C  7F 84 E3 78 */	mr r4, r28
/* 806FE520  38 A0 00 00 */	li r5, 0
/* 806FE524  38 C0 00 00 */	li r6, 0
/* 806FE528  39 00 00 00 */	li r8, 0
/* 806FE52C  3D 20 80 70 */	lis r9, lit_3794@ha /* 0x806FF5F0@ha */
/* 806FE530  C0 29 F5 F0 */	lfs f1, lit_3794@l(r9)  /* 0x806FF5F0@l */
/* 806FE534  39 20 00 00 */	li r9, 0
/* 806FE538  39 40 FF FF */	li r10, -1
/* 806FE53C  4B 91 22 95 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806FE540  7C 7E 1B 78 */	mr r30, r3
lbl_806FE544:
/* 806FE544  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 806FE548  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806FE54C  28 03 00 00 */	cmplwi r3, 0
/* 806FE550  41 82 00 10 */	beq lbl_806FE560
/* 806FE554  80 03 00 04 */	lwz r0, 4(r3)
/* 806FE558  28 00 00 00 */	cmplwi r0, 0
/* 806FE55C  40 82 00 0C */	bne lbl_806FE568
lbl_806FE560:
/* 806FE560  38 60 00 00 */	li r3, 0
/* 806FE564  48 00 01 1C */	b lbl_806FE680
lbl_806FE568:
/* 806FE568  90 1F 05 24 */	stw r0, 0x524(r31)
/* 806FE56C  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 806FE570  93 E3 00 14 */	stw r31, 0x14(r3)
/* 806FE574  38 C0 00 00 */	li r6, 0
/* 806FE578  3C 60 80 70 */	lis r3, JointCallBack__8daE_KK_cFP8J3DJointi@ha /* 0x806FA7FC@ha */
/* 806FE57C  38 83 A7 FC */	addi r4, r3, JointCallBack__8daE_KK_cFP8J3DJointi@l /* 0x806FA7FC@l */
/* 806FE580  48 00 00 20 */	b lbl_806FE5A0
lbl_806FE584:
/* 806FE584  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 806FE588  41 82 00 14 */	beq lbl_806FE59C
/* 806FE58C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 806FE590  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 806FE594  7C 63 00 2E */	lwzx r3, r3, r0
/* 806FE598  90 83 00 04 */	stw r4, 4(r3)
lbl_806FE59C:
/* 806FE59C  38 C6 00 01 */	addi r6, r6, 1
lbl_806FE5A0:
/* 806FE5A0  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 806FE5A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 806FE5A8  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 806FE5AC  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 806FE5B0  7C 00 18 40 */	cmplw r0, r3
/* 806FE5B4  41 80 FF D0 */	blt lbl_806FE584
lbl_806FE5B8:
/* 806FE5B8  3C 60 80 70 */	lis r3, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FE5BC  38 63 F6 B8 */	addi r3, r3, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FE5C0  38 80 00 23 */	li r4, 0x23
/* 806FE5C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FE5C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FE5CC  3F A5 00 02 */	addis r29, r5, 2
/* 806FE5D0  3B BD C2 F8 */	addi r29, r29, -15624
/* 806FE5D4  7F A5 EB 78 */	mr r5, r29
/* 806FE5D8  38 C0 00 80 */	li r6, 0x80
/* 806FE5DC  4B 93 DD 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FE5E0  7C 7C 1B 78 */	mr r28, r3
/* 806FE5E4  38 60 00 58 */	li r3, 0x58
/* 806FE5E8  4B BD 06 65 */	bl __nw__FUl
/* 806FE5EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 806FE5F0  41 82 00 68 */	beq lbl_806FE658
/* 806FE5F4  3C 60 80 70 */	lis r3, d_a_e_kk__stringBase0@ha /* 0x806FF6B8@ha */
/* 806FE5F8  38 63 F6 B8 */	addi r3, r3, d_a_e_kk__stringBase0@l /* 0x806FF6B8@l */
/* 806FE5FC  38 80 00 1D */	li r4, 0x1d
/* 806FE600  7F A5 EB 78 */	mr r5, r29
/* 806FE604  38 C0 00 80 */	li r6, 0x80
/* 806FE608  4B 93 DC E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806FE60C  7C 67 1B 78 */	mr r7, r3
/* 806FE610  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806FE614  90 01 00 08 */	stw r0, 8(r1)
/* 806FE618  38 00 00 00 */	li r0, 0
/* 806FE61C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FE620  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000084@ha */
/* 806FE624  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x31000084@l */
/* 806FE628  90 01 00 10 */	stw r0, 0x10(r1)
/* 806FE62C  7F C3 F3 78 */	mr r3, r30
/* 806FE630  7F 84 E3 78 */	mr r4, r28
/* 806FE634  38 A0 00 00 */	li r5, 0
/* 806FE638  38 C0 00 00 */	li r6, 0
/* 806FE63C  39 00 00 00 */	li r8, 0
/* 806FE640  3D 20 80 70 */	lis r9, lit_3794@ha /* 0x806FF5F0@ha */
/* 806FE644  C0 29 F5 F0 */	lfs f1, lit_3794@l(r9)  /* 0x806FF5F0@l */
/* 806FE648  39 20 00 00 */	li r9, 0
/* 806FE64C  39 40 FF FF */	li r10, -1
/* 806FE650  4B 91 21 81 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806FE654  7C 7E 1B 78 */	mr r30, r3
lbl_806FE658:
/* 806FE658  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 806FE65C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806FE660  28 03 00 00 */	cmplwi r3, 0
/* 806FE664  41 82 00 10 */	beq lbl_806FE674
/* 806FE668  80 03 00 04 */	lwz r0, 4(r3)
/* 806FE66C  28 00 00 00 */	cmplwi r0, 0
/* 806FE670  40 82 00 0C */	bne lbl_806FE67C
lbl_806FE674:
/* 806FE674  38 60 00 00 */	li r3, 0
/* 806FE678  48 00 00 08 */	b lbl_806FE680
lbl_806FE67C:
/* 806FE67C  38 60 00 01 */	li r3, 1
lbl_806FE680:
/* 806FE680  39 61 00 30 */	addi r11, r1, 0x30
/* 806FE684  4B C6 3B A1 */	bl _restgpr_28
/* 806FE688  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806FE68C  7C 08 03 A6 */	mtlr r0
/* 806FE690  38 21 00 30 */	addi r1, r1, 0x30
/* 806FE694  4E 80 00 20 */	blr 
