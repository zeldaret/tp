lbl_800BB324:
/* 800BB324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB328  7C 08 02 A6 */	mflr r0
/* 800BB32C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB330  39 61 00 20 */	addi r11, r1, 0x20
/* 800BB334  48 2A 6E A1 */	bl _savegpr_27
/* 800BB338  7C 7B 1B 78 */	mr r27, r3
/* 800BB33C  7C 9C 23 78 */	mr r28, r4
/* 800BB340  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800BB344  83 E3 00 04 */	lwz r31, 4(r3)
/* 800BB348  38 62 92 70 */	la r3, l_mArcName(r2) /* 80452C70-_SDA2_BASE_ */
/* 800BB34C  54 9D 10 3A */	slwi r29, r4, 2
/* 800BB350  3C 80 80 3B */	lis r4, bodyBrkName@ha /* 0x803B2D94@ha */
/* 800BB354  38 84 2D 94 */	addi r4, r4, bodyBrkName@l /* 0x803B2D94@l */
/* 800BB358  7C 84 E8 2E */	lwzx r4, r4, r29
/* 800BB35C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BB360  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BB364  3F C5 00 02 */	addis r30, r5, 2
/* 800BB368  3B DE C2 F8 */	addi r30, r30, -15624
/* 800BB36C  7F C5 F3 78 */	mr r5, r30
/* 800BB370  38 C0 00 80 */	li r6, 0x80
/* 800BB374  4B F8 10 09 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800BB378  90 7B 06 7C */	stw r3, 0x67c(r27)
/* 800BB37C  80 7B 06 7C */	lwz r3, 0x67c(r27)
/* 800BB380  7F E4 FB 78 */	mr r4, r31
/* 800BB384  48 27 04 F9 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 800BB388  38 7F 00 58 */	addi r3, r31, 0x58
/* 800BB38C  80 9B 06 7C */	lwz r4, 0x67c(r27)
/* 800BB390  48 27 4A E1 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800BB394  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BB398  80 7B 06 7C */	lwz r3, 0x67c(r27)
/* 800BB39C  D0 03 00 08 */	stfs f0, 8(r3)
/* 800BB3A0  80 7B 06 58 */	lwz r3, 0x658(r27)
/* 800BB3A4  83 E3 00 04 */	lwz r31, 4(r3)
/* 800BB3A8  38 62 92 70 */	la r3, l_mArcName(r2) /* 80452C70-_SDA2_BASE_ */
/* 800BB3AC  3C 80 80 3B */	lis r4, headBrkName@ha /* 0x803B2DA0@ha */
/* 800BB3B0  38 84 2D A0 */	addi r4, r4, headBrkName@l /* 0x803B2DA0@l */
/* 800BB3B4  7C 84 E8 2E */	lwzx r4, r4, r29
/* 800BB3B8  7F C5 F3 78 */	mr r5, r30
/* 800BB3BC  38 C0 00 80 */	li r6, 0x80
/* 800BB3C0  4B F8 0F BD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800BB3C4  90 7B 06 80 */	stw r3, 0x680(r27)
/* 800BB3C8  80 7B 06 80 */	lwz r3, 0x680(r27)
/* 800BB3CC  7F E4 FB 78 */	mr r4, r31
/* 800BB3D0  48 27 04 AD */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 800BB3D4  38 7F 00 58 */	addi r3, r31, 0x58
/* 800BB3D8  80 9B 06 80 */	lwz r4, 0x680(r27)
/* 800BB3DC  48 27 4A 95 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800BB3E0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BB3E4  80 7B 06 80 */	lwz r3, 0x680(r27)
/* 800BB3E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 800BB3EC  9B 9B 2F D7 */	stb r28, 0x2fd7(r27)
/* 800BB3F0  39 61 00 20 */	addi r11, r1, 0x20
/* 800BB3F4  48 2A 6E 2D */	bl _restgpr_27
/* 800BB3F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB3FC  7C 08 03 A6 */	mtlr r0
/* 800BB400  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB404  4E 80 00 20 */	blr 
