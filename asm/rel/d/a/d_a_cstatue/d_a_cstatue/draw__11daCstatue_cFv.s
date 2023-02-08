lbl_80667438:
/* 80667438  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8066743C  7C 08 02 A6 */	mflr r0
/* 80667440  90 01 00 34 */	stw r0, 0x34(r1)
/* 80667444  39 61 00 30 */	addi r11, r1, 0x30
/* 80667448  4B CF AD 95 */	bl _savegpr_29
/* 8066744C  7C 7E 1B 78 */	mr r30, r3
/* 80667450  3C 60 80 66 */	lis r3, lit_3768@ha /* 0x80667698@ha */
/* 80667454  3B E3 76 98 */	addi r31, r3, lit_3768@l /* 0x80667698@l */
/* 80667458  38 00 00 00 */	li r0, 0
/* 8066745C  88 7E 0A DD */	lbz r3, 0xadd(r30)
/* 80667460  28 03 00 04 */	cmplwi r3, 4
/* 80667464  41 82 00 0C */	beq lbl_80667470
/* 80667468  28 03 00 03 */	cmplwi r3, 3
/* 8066746C  40 82 00 08 */	bne lbl_80667474
lbl_80667470:
/* 80667470  38 00 00 01 */	li r0, 1
lbl_80667474:
/* 80667474  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80667478  38 80 00 08 */	li r4, 8
/* 8066747C  41 82 00 08 */	beq lbl_80667484
/* 80667480  38 80 00 10 */	li r4, 0x10
lbl_80667484:
/* 80667484  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80667488  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8066748C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80667490  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80667494  4B B3 C3 31 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80667498  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8066749C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806674A0  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 806674A4  80 84 00 04 */	lwz r4, 4(r4)
/* 806674A8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806674AC  4B B3 D8 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806674B0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 806674B4  80 83 00 04 */	lwz r4, 4(r3)
/* 806674B8  C0 3E 05 A4 */	lfs f1, 0x5a4(r30)
/* 806674BC  38 7E 05 94 */	addi r3, r30, 0x594
/* 806674C0  38 84 00 58 */	addi r4, r4, 0x58
/* 806674C4  4B 9A 62 E5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806674C8  88 1E 0A DD */	lbz r0, 0xadd(r30)
/* 806674CC  28 00 00 01 */	cmplwi r0, 1
/* 806674D0  41 82 00 1C */	beq lbl_806674EC
/* 806674D4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 806674D8  80 83 00 04 */	lwz r4, 4(r3)
/* 806674DC  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 806674E0  38 7E 05 7C */	addi r3, r30, 0x57c
/* 806674E4  38 84 00 58 */	addi r4, r4, 0x58
/* 806674E8  4B 9A 61 F1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_806674EC:
/* 806674EC  88 1E 0A DD */	lbz r0, 0xadd(r30)
/* 806674F0  28 00 00 02 */	cmplwi r0, 2
/* 806674F4  40 82 00 84 */	bne lbl_80667578
/* 806674F8  4B 9C 85 5D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 806674FC  2C 03 00 00 */	cmpwi r3, 0
/* 80667500  41 82 00 F4 */	beq lbl_806675F4
/* 80667504  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80667508  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8066750C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80667510  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80667514  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80667518  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8066751C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80667520  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80667524  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80667528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066752C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80667530  80 7D 61 B0 */	lwz r3, 0x61b0(r29)
/* 80667534  38 63 01 40 */	addi r3, r3, 0x140
/* 80667538  38 81 00 14 */	addi r4, r1, 0x14
/* 8066753C  7C 85 23 78 */	mr r5, r4
/* 80667540  4B CD F8 2D */	bl PSMTXMultVec
/* 80667544  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80667548  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8066754C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80667550  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80667554  80 7D 61 B0 */	lwz r3, 0x61b0(r29)
/* 80667558  38 63 01 70 */	addi r3, r3, 0x170
/* 8066755C  38 81 00 14 */	addi r4, r1, 0x14
/* 80667560  7C 85 23 78 */	mr r5, r4
/* 80667564  4B CD F8 09 */	bl PSMTXMultVec
/* 80667568  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 8066756C  38 81 00 14 */	addi r4, r1, 0x14
/* 80667570  4B 9A 72 51 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 80667574  48 00 00 80 */	b lbl_806675F4
lbl_80667578:
/* 80667578  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8066757C  4B 9A 67 E9 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 80667580  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80667584  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80667588  40 82 00 6C */	bne lbl_806675F4
/* 8066758C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80667590  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80667594  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80667598  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8066759C  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 806675A0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806675A4  EC 21 00 2A */	fadds f1, f1, f0
/* 806675A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806675AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 806675B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806675B4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806675B8  80 7E 0A F0 */	lwz r3, 0xaf0(r30)
/* 806675BC  38 80 00 01 */	li r4, 1
/* 806675C0  38 C1 00 08 */	addi r6, r1, 8
/* 806675C4  C0 3E 0A F4 */	lfs f1, 0xaf4(r30)
/* 806675C8  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806675CC  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 806675D0  C0 9E 07 44 */	lfs f4, 0x744(r30)
/* 806675D4  38 FE 07 9C */	addi r7, r30, 0x79c
/* 806675D8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806675DC  39 20 00 00 */	li r9, 0
/* 806675E0  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 806675E4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806675E8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806675EC  4B 9C 73 25 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806675F0  90 7E 0A F0 */	stw r3, 0xaf0(r30)
lbl_806675F4:
/* 806675F4  38 60 00 01 */	li r3, 1
/* 806675F8  39 61 00 30 */	addi r11, r1, 0x30
/* 806675FC  4B CF AC 2D */	bl _restgpr_29
/* 80667600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80667604  7C 08 03 A6 */	mtlr r0
/* 80667608  38 21 00 30 */	addi r1, r1, 0x30
/* 8066760C  4E 80 00 20 */	blr 
