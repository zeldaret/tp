lbl_80834778:
/* 80834778  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083477C  7C 08 02 A6 */	mflr r0
/* 80834780  90 01 00 34 */	stw r0, 0x34(r1)
/* 80834784  39 61 00 30 */	addi r11, r1, 0x30
/* 80834788  4B B2 DA 50 */	b _savegpr_28
/* 8083478C  7C 7F 1B 78 */	mr r31, r3
/* 80834790  3C 60 80 83 */	lis r3, stringBase0@ha
/* 80834794  38 63 53 44 */	addi r3, r3, stringBase0@l
/* 80834798  38 80 00 0C */	li r4, 0xc
/* 8083479C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 808347A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 808347A4  3F A5 00 02 */	addis r29, r5, 2
/* 808347A8  3B BD C2 F8 */	addi r29, r29, -15624
/* 808347AC  7F A5 EB 78 */	mr r5, r29
/* 808347B0  38 C0 00 80 */	li r6, 0x80
/* 808347B4  4B 80 7B 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808347B8  7C 7C 1B 78 */	mr r28, r3
/* 808347BC  38 60 00 58 */	li r3, 0x58
/* 808347C0  4B A9 A4 8C */	b __nw__FUl
/* 808347C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 808347C8  41 82 00 68 */	beq lbl_80834830
/* 808347CC  3C 60 80 83 */	lis r3, stringBase0@ha
/* 808347D0  38 63 53 44 */	addi r3, r3, stringBase0@l
/* 808347D4  38 80 00 04 */	li r4, 4
/* 808347D8  7F A5 EB 78 */	mr r5, r29
/* 808347DC  38 C0 00 80 */	li r6, 0x80
/* 808347E0  4B 80 7B 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808347E4  7C 67 1B 78 */	mr r7, r3
/* 808347E8  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 808347EC  90 01 00 08 */	stw r0, 8(r1)
/* 808347F0  38 00 00 00 */	li r0, 0
/* 808347F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 808347F8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 808347FC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80834800  90 01 00 10 */	stw r0, 0x10(r1)
/* 80834804  7F C3 F3 78 */	mr r3, r30
/* 80834808  7F 84 E3 78 */	mr r4, r28
/* 8083480C  38 A0 00 00 */	li r5, 0
/* 80834810  38 C0 00 00 */	li r6, 0
/* 80834814  39 00 00 01 */	li r8, 1
/* 80834818  3D 20 80 83 */	lis r9, lit_3911@ha
/* 8083481C  C0 29 52 D8 */	lfs f1, lit_3911@l(r9)
/* 80834820  39 20 00 00 */	li r9, 0
/* 80834824  39 40 FF FF */	li r10, -1
/* 80834828  4B 7D BF A8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8083482C  7C 7E 1B 78 */	mr r30, r3
lbl_80834830:
/* 80834830  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 80834834  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80834838  28 00 00 00 */	cmplwi r0, 0
/* 8083483C  40 82 00 0C */	bne lbl_80834848
/* 80834840  38 60 00 00 */	li r3, 0
/* 80834844  48 00 00 08 */	b lbl_8083484C
lbl_80834848:
/* 80834848  38 60 00 01 */	li r3, 1
lbl_8083484C:
/* 8083484C  39 61 00 30 */	addi r11, r1, 0x30
/* 80834850  4B B2 D9 D4 */	b _restgpr_28
/* 80834854  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80834858  7C 08 03 A6 */	mtlr r0
/* 8083485C  38 21 00 30 */	addi r1, r1, 0x30
/* 80834860  4E 80 00 20 */	blr 
