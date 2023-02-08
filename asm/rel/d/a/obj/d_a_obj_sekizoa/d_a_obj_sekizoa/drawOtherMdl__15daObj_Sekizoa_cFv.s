lbl_80CD03C8:
/* 80CD03C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD03CC  7C 08 02 A6 */	mflr r0
/* 80CD03D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD03D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD03D8  4B 69 1E 05 */	bl _savegpr_29
/* 80CD03DC  7C 7F 1B 78 */	mr r31, r3
/* 80CD03E0  88 03 10 C8 */	lbz r0, 0x10c8(r3)
/* 80CD03E4  28 00 00 06 */	cmplwi r0, 6
/* 80CD03E8  40 82 00 40 */	bne lbl_80CD0428
/* 80CD03EC  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80CD03F0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80CD03F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CD03F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CD03FC  38 80 00 00 */	li r4, 0
/* 80CD0400  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CD0404  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CD0408  4B 4D 33 BD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CD040C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CD0410  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CD0414  80 9E 00 04 */	lwz r4, 4(r30)
/* 80CD0418  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CD041C  4B 4D 49 85 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CD0420  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80CD0424  4B 34 0D 9D */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80CD0428:
/* 80CD0428  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80CD042C  28 03 00 00 */	cmplwi r3, 0
/* 80CD0430  41 82 00 B4 */	beq lbl_80CD04E4
/* 80CD0434  88 1F 11 79 */	lbz r0, 0x1179(r31)
/* 80CD0438  28 00 00 00 */	cmplwi r0, 0
/* 80CD043C  41 82 00 A8 */	beq lbl_80CD04E4
/* 80CD0440  83 C3 00 04 */	lwz r30, 4(r3)
/* 80CD0444  83 BE 00 04 */	lwz r29, 4(r30)
/* 80CD0448  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CD044C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CD0450  7F A4 EB 78 */	mr r4, r29
/* 80CD0454  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CD0458  4B 4D 49 49 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CD045C  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80CD0460  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80CD0464  41 82 00 14 */	beq lbl_80CD0478
/* 80CD0468  C0 3F 06 54 */	lfs f1, 0x654(r31)
/* 80CD046C  38 7F 06 44 */	addi r3, r31, 0x644
/* 80CD0470  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CD0474  4B 33 D2 65 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80CD0478:
/* 80CD0478  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80CD047C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80CD0480  41 82 00 14 */	beq lbl_80CD0494
/* 80CD0484  C0 3F 06 6C */	lfs f1, 0x66c(r31)
/* 80CD0488  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80CD048C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CD0490  4B 33 D3 19 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80CD0494:
/* 80CD0494  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80CD0498  4B 34 0D 29 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80CD049C  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80CD04A0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80CD04A4  41 82 00 10 */	beq lbl_80CD04B4
/* 80CD04A8  38 7D 00 58 */	addi r3, r29, 0x58
/* 80CD04AC  80 9F 06 70 */	lwz r4, 0x670(r31)
/* 80CD04B0  4B 65 F3 D1 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80CD04B4:
/* 80CD04B4  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80CD04B8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80CD04BC  41 82 00 10 */	beq lbl_80CD04CC
/* 80CD04C0  38 7D 00 58 */	addi r3, r29, 0x58
/* 80CD04C4  80 9F 06 58 */	lwz r4, 0x658(r31)
/* 80CD04C8  4B 65 F2 ED */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80CD04CC:
/* 80CD04CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD04D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD04D4  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80CD04D8  80 9F 0D 94 */	lwz r4, 0xd94(r31)
/* 80CD04DC  7F C5 F3 78 */	mr r5, r30
/* 80CD04E0  4B 38 5A 3D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80CD04E4:
/* 80CD04E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD04E8  4B 69 1D 41 */	bl _restgpr_29
/* 80CD04EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD04F0  7C 08 03 A6 */	mtlr r0
/* 80CD04F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD04F8  4E 80 00 20 */	blr 
