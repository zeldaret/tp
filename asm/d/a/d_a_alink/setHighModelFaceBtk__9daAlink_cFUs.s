lbl_801190A4:
/* 801190A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801190A8  7C 08 02 A6 */	mflr r0
/* 801190AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801190B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801190B4  93 C1 00 08 */	stw r30, 8(r1)
/* 801190B8  7C 7E 1B 78 */	mr r30, r3
/* 801190BC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 801190C0  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 801190C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 801190C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 801190CC  3C A5 00 02 */	addis r5, r5, 2
/* 801190D0  38 C0 00 80 */	li r6, 0x80
/* 801190D4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801190D8  4B F2 33 29 */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 801190DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 801190E0  41 82 00 3C */	beq lbl_8011911C
/* 801190E4  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 801190E8  7C 00 F8 40 */	cmplw r0, r31
/* 801190EC  41 82 00 30 */	beq lbl_8011911C
/* 801190F0  80 9E 06 88 */	lwz r4, 0x688(r30)
/* 801190F4  80 84 00 04 */	lwz r4, 4(r4)
/* 801190F8  48 21 20 DD */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 801190FC  80 7E 06 88 */	lwz r3, 0x688(r30)
/* 80119100  80 63 00 04 */	lwz r3, 4(r3)
/* 80119104  38 63 00 58 */	addi r3, r3, 0x58
/* 80119108  7F E4 FB 78 */	mr r4, r31
/* 8011910C  48 21 6B B9 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80119110  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80119114  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80119118  93 FE 06 8C */	stw r31, 0x68c(r30)
lbl_8011911C:
/* 8011911C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119120  83 C1 00 08 */	lwz r30, 8(r1)
/* 80119124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119128  7C 08 03 A6 */	mtlr r0
/* 8011912C  38 21 00 10 */	addi r1, r1, 0x10
/* 80119130  4E 80 00 20 */	blr 
