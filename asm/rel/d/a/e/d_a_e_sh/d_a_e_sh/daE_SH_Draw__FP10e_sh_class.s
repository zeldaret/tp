lbl_8078E6B8:
/* 8078E6B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8078E6BC  7C 08 02 A6 */	mflr r0
/* 8078E6C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8078E6C4  39 61 00 40 */	addi r11, r1, 0x40
/* 8078E6C8  4B BD 3B 01 */	bl _savegpr_24
/* 8078E6CC  7C 7F 1B 78 */	mr r31, r3
/* 8078E6D0  3C 60 80 79 */	lis r3, lit_3902@ha /* 0x80791D70@ha */
/* 8078E6D4  3B A3 1D 70 */	addi r29, r3, lit_3902@l /* 0x80791D70@l */
/* 8078E6D8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8078E6DC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8078E6E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8078E6E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8078E6E8  38 80 00 00 */	li r4, 0
/* 8078E6EC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8078E6F0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8078E6F4  4B A1 50 D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8078E6F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8078E6FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8078E700  80 9E 00 04 */	lwz r4, 4(r30)
/* 8078E704  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8078E708  4B A1 66 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8078E70C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8078E710  4B 88 2A B1 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8078E714  A8 1F 06 76 */	lha r0, 0x676(r31)
/* 8078E718  2C 00 00 00 */	cmpwi r0, 0
/* 8078E71C  41 82 01 30 */	beq lbl_8078E84C
/* 8078E720  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8078E724  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8078E728  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8078E72C  EC 20 18 2A */	fadds f1, f0, f3
/* 8078E730  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8078E734  D0 01 00 08 */	stfs f0, 8(r1)
/* 8078E738  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8078E73C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8078E740  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 8078E744  38 80 00 01 */	li r4, 1
/* 8078E748  7F C5 F3 78 */	mr r5, r30
/* 8078E74C  38 C1 00 08 */	addi r6, r1, 8
/* 8078E750  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 8078E754  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8078E758  C0 9F 07 A0 */	lfs f4, 0x7a0(r31)
/* 8078E75C  38 FF 07 F8 */	addi r7, r31, 0x7f8
/* 8078E760  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8078E764  39 20 00 00 */	li r9, 0
/* 8078E768  C0 BD 00 08 */	lfs f5, 8(r29)
/* 8078E76C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8078E770  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8078E774  4B 8A 01 9D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8078E778  90 7F 06 C4 */	stw r3, 0x6c4(r31)
/* 8078E77C  3B 20 00 00 */	li r25, 0
/* 8078E780  3B C0 00 00 */	li r30, 0
/* 8078E784  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8078E788  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_8078E78C:
/* 8078E78C  7F A3 EB 78 */	mr r3, r29
/* 8078E790  3B 5E 06 64 */	addi r26, r30, 0x664
/* 8078E794  7C 9F D0 2E */	lwzx r4, r31, r26
/* 8078E798  80 84 00 04 */	lwz r4, 4(r4)
/* 8078E79C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8078E7A0  4B A1 66 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8078E7A4  7C 7F D0 2E */	lwzx r3, r31, r26
/* 8078E7A8  83 83 00 04 */	lwz r28, 4(r3)
/* 8078E7AC  3B 00 00 00 */	li r24, 0
/* 8078E7B0  48 00 00 74 */	b lbl_8078E824
lbl_8078E7B4:
/* 8078E7B4  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8078E7B8  57 00 13 BA */	rlwinm r0, r24, 2, 0xe, 0x1d
/* 8078E7BC  7F 63 00 2E */	lwzx r27, r3, r0
/* 8078E7C0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8078E7C4  38 80 00 01 */	li r4, 1
/* 8078E7C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8078E7CC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8078E7D0  7D 89 03 A6 */	mtctr r12
/* 8078E7D4  4E 80 04 21 */	bctrl 
/* 8078E7D8  38 00 00 64 */	li r0, 0x64
/* 8078E7DC  B0 03 00 00 */	sth r0, 0(r3)
/* 8078E7E0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8078E7E4  38 80 00 01 */	li r4, 1
/* 8078E7E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8078E7EC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8078E7F0  7D 89 03 A6 */	mtctr r12
/* 8078E7F4  4E 80 04 21 */	bctrl 
/* 8078E7F8  38 00 00 FF */	li r0, 0xff
/* 8078E7FC  B0 03 00 02 */	sth r0, 2(r3)
/* 8078E800  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8078E804  38 80 00 01 */	li r4, 1
/* 8078E808  81 83 00 00 */	lwz r12, 0(r3)
/* 8078E80C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8078E810  7D 89 03 A6 */	mtctr r12
/* 8078E814  4E 80 04 21 */	bctrl 
/* 8078E818  38 00 00 FF */	li r0, 0xff
/* 8078E81C  B0 03 00 04 */	sth r0, 4(r3)
/* 8078E820  3B 18 00 01 */	addi r24, r24, 1
lbl_8078E824:
/* 8078E824  57 03 04 3E */	clrlwi r3, r24, 0x10
/* 8078E828  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 8078E82C  7C 03 00 40 */	cmplw r3, r0
/* 8078E830  41 80 FF 84 */	blt lbl_8078E7B4
/* 8078E834  7C 7F D0 2E */	lwzx r3, r31, r26
/* 8078E838  4B 87 F4 8D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8078E83C  3B 39 00 01 */	addi r25, r25, 1
/* 8078E840  2C 19 00 02 */	cmpwi r25, 2
/* 8078E844  3B DE 00 04 */	addi r30, r30, 4
/* 8078E848  41 80 FF 44 */	blt lbl_8078E78C
lbl_8078E84C:
/* 8078E84C  38 60 00 01 */	li r3, 1
/* 8078E850  39 61 00 40 */	addi r11, r1, 0x40
/* 8078E854  4B BD 39 C1 */	bl _restgpr_24
/* 8078E858  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078E85C  7C 08 03 A6 */	mtlr r0
/* 8078E860  38 21 00 40 */	addi r1, r1, 0x40
/* 8078E864  4E 80 00 20 */	blr 
