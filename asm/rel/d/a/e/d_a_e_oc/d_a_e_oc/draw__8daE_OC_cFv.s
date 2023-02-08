lbl_8072C734:
/* 8072C734  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8072C738  7C 08 02 A6 */	mflr r0
/* 8072C73C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8072C740  39 61 00 50 */	addi r11, r1, 0x50
/* 8072C744  4B C3 5A 8D */	bl _savegpr_26
/* 8072C748  7C 7F 1B 78 */	mr r31, r3
/* 8072C74C  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 8072C750  3B C3 5B 28 */	addi r30, r3, lit_3911@l /* 0x80735B28@l */
/* 8072C754  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072C758  83 A3 00 04 */	lwz r29, 4(r3)
/* 8072C75C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8072C760  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8072C764  38 80 00 00 */	li r4, 0
/* 8072C768  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8072C76C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8072C770  4B A7 70 55 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8072C774  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8072C778  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8072C77C  80 9D 00 04 */	lwz r4, 4(r29)
/* 8072C780  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8072C784  4B A7 86 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8072C788  88 1F 06 EB */	lbz r0, 0x6eb(r31)
/* 8072C78C  28 00 00 00 */	cmplwi r0, 0
/* 8072C790  41 82 00 0C */	beq lbl_8072C79C
/* 8072C794  38 60 00 01 */	li r3, 1
/* 8072C798  48 00 01 68 */	b lbl_8072C900
lbl_8072C79C:
/* 8072C79C  88 1F 06 E8 */	lbz r0, 0x6e8(r31)
/* 8072C7A0  28 00 00 00 */	cmplwi r0, 0
/* 8072C7A4  41 82 00 B4 */	beq lbl_8072C858
/* 8072C7A8  83 9D 00 04 */	lwz r28, 4(r29)
/* 8072C7AC  3B 40 00 00 */	li r26, 0
/* 8072C7B0  48 00 00 98 */	b lbl_8072C848
lbl_8072C7B4:
/* 8072C7B4  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8072C7B8  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8072C7BC  7F 63 00 2E */	lwzx r27, r3, r0
/* 8072C7C0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8072C7C4  38 80 00 00 */	li r4, 0
/* 8072C7C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8072C7CC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8072C7D0  7D 89 03 A6 */	mtctr r12
/* 8072C7D4  4E 80 04 21 */	bctrl 
/* 8072C7D8  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 8072C7DC  FC 00 00 1E */	fctiwz f0, f0
/* 8072C7E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8072C7E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8072C7E8  B0 03 00 00 */	sth r0, 0(r3)
/* 8072C7EC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8072C7F0  38 80 00 00 */	li r4, 0
/* 8072C7F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8072C7F8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8072C7FC  7D 89 03 A6 */	mtctr r12
/* 8072C800  4E 80 04 21 */	bctrl 
/* 8072C804  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 8072C808  FC 00 00 1E */	fctiwz f0, f0
/* 8072C80C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8072C810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072C814  B0 03 00 02 */	sth r0, 2(r3)
/* 8072C818  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8072C81C  38 80 00 00 */	li r4, 0
/* 8072C820  81 83 00 00 */	lwz r12, 0(r3)
/* 8072C824  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8072C828  7D 89 03 A6 */	mtctr r12
/* 8072C82C  4E 80 04 21 */	bctrl 
/* 8072C830  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 8072C834  FC 00 00 1E */	fctiwz f0, f0
/* 8072C838  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8072C83C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8072C840  B0 03 00 04 */	sth r0, 4(r3)
/* 8072C844  3B 5A 00 01 */	addi r26, r26, 1
lbl_8072C848:
/* 8072C848  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8072C84C  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 8072C850  7C 03 00 40 */	cmplw r3, r0
/* 8072C854  41 80 FF 60 */	blt lbl_8072C7B4
lbl_8072C858:
/* 8072C858  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072C85C  4B 8E 49 65 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8072C860  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8072C864  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8072C868  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8072C86C  EC 20 18 2A */	fadds f1, f0, f3
/* 8072C870  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8072C874  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072C878  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8072C87C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8072C880  80 7F 06 B8 */	lwz r3, 0x6b8(r31)
/* 8072C884  38 80 00 01 */	li r4, 1
/* 8072C888  7F A5 EB 78 */	mr r5, r29
/* 8072C88C  38 C1 00 08 */	addi r6, r1, 8
/* 8072C890  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 8072C894  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8072C898  C0 9F 07 E0 */	lfs f4, 0x7e0(r31)
/* 8072C89C  38 FF 08 38 */	addi r7, r31, 0x838
/* 8072C8A0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8072C8A4  39 20 00 00 */	li r9, 0
/* 8072C8A8  C0 BE 00 08 */	lfs f5, 8(r30)
/* 8072C8AC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8072C8B0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8072C8B4  4B 90 20 5D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8072C8B8  90 7F 06 B8 */	stw r3, 0x6b8(r31)
/* 8072C8BC  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8072C8C0  28 04 00 00 */	cmplwi r4, 0
/* 8072C8C4  41 82 00 38 */	beq lbl_8072C8FC
/* 8072C8C8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8072C8CC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8072C8D0  80 84 00 04 */	lwz r4, 4(r4)
/* 8072C8D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8072C8D8  4B A7 84 C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8072C8DC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8072C8E0  4B 8E 13 E5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8072C8E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072C8E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072C8EC  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 8072C8F0  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 8072C8F4  80 BF 05 C0 */	lwz r5, 0x5c0(r31)
/* 8072C8F8  4B 92 96 25 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8072C8FC:
/* 8072C8FC  38 60 00 01 */	li r3, 1
lbl_8072C900:
/* 8072C900  39 61 00 50 */	addi r11, r1, 0x50
/* 8072C904  4B C3 59 19 */	bl _restgpr_26
/* 8072C908  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8072C90C  7C 08 03 A6 */	mtlr r0
/* 8072C910  38 21 00 50 */	addi r1, r1, 0x50
/* 8072C914  4E 80 00 20 */	blr 
