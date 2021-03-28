lbl_80119134:
/* 80119134  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80119138  7C 08 02 A6 */	mflr r0
/* 8011913C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80119140  39 61 00 20 */	addi r11, r1, 0x20
/* 80119144  48 24 90 99 */	bl _savegpr_29
/* 80119148  7C 9D 23 78 */	mr r29, r4
/* 8011914C  7C BE 2B 78 */	mr r30, r5
/* 80119150  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 80119154  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 80119158  7C C4 33 78 */	mr r4, r6
/* 8011915C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80119160  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80119164  3C A5 00 02 */	addis r5, r5, 2
/* 80119168  38 C0 00 80 */	li r6, 0x80
/* 8011916C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80119170  4B F2 32 91 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 80119174  7C 7F 1B 79 */	or. r31, r3, r3
/* 80119178  41 82 00 34 */	beq lbl_801191AC
/* 8011917C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80119180  7C 00 F8 40 */	cmplw r0, r31
/* 80119184  41 82 00 28 */	beq lbl_801191AC
/* 80119188  80 9E 00 04 */	lwz r4, 4(r30)
/* 8011918C  48 21 26 F1 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 80119190  80 7E 00 04 */	lwz r3, 4(r30)
/* 80119194  38 63 00 58 */	addi r3, r3, 0x58
/* 80119198  7F E4 FB 78 */	mr r4, r31
/* 8011919C  48 21 6C D5 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 801191A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801191A4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801191A8  93 FD 00 00 */	stw r31, 0(r29)
lbl_801191AC:
/* 801191AC  39 61 00 20 */	addi r11, r1, 0x20
/* 801191B0  48 24 90 79 */	bl _restgpr_29
/* 801191B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801191B8  7C 08 03 A6 */	mtlr r0
/* 801191BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801191C0  4E 80 00 20 */	blr 
