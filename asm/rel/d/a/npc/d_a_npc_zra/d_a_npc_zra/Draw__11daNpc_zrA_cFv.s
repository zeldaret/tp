lbl_80B7A570:
/* 80B7A570  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7A574  7C 08 02 A6 */	mflr r0
/* 80B7A578  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B7A57C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7A580  4B 7E 7C 51 */	bl _savegpr_26
/* 80B7A584  7C 7B 1B 78 */	mr r27, r3
/* 80B7A588  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B7A58C  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B7A590  3B 80 00 00 */	li r28, 0
/* 80B7A594  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B7A598  83 C3 00 04 */	lwz r30, 4(r3)
/* 80B7A59C  83 BE 00 04 */	lwz r29, 4(r30)
/* 80B7A5A0  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80B7A5A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7A5A8  80 1B 0B E4 */	lwz r0, 0xbe4(r27)
/* 80B7A5AC  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80B7A5B0  88 7B 09 F2 */	lbz r3, 0x9f2(r27)
/* 80B7A5B4  28 03 00 00 */	cmplwi r3, 0
/* 80B7A5B8  40 82 00 1C */	bne lbl_80B7A5D4
/* 80B7A5BC  88 1B 09 F4 */	lbz r0, 0x9f4(r27)
/* 80B7A5C0  28 00 00 00 */	cmplwi r0, 0
/* 80B7A5C4  41 82 00 0C */	beq lbl_80B7A5D0
/* 80B7A5C8  3B 80 00 00 */	li r28, 0
/* 80B7A5CC  48 00 00 08 */	b lbl_80B7A5D4
lbl_80B7A5D0:
/* 80B7A5D0  3B 80 00 01 */	li r28, 1
lbl_80B7A5D4:
/* 80B7A5D4  3B 40 00 00 */	li r26, 0
/* 80B7A5D8  28 03 00 00 */	cmplwi r3, 0
/* 80B7A5DC  40 82 00 1C */	bne lbl_80B7A5F8
/* 80B7A5E0  88 1B 09 F4 */	lbz r0, 0x9f4(r27)
/* 80B7A5E4  28 00 00 00 */	cmplwi r0, 0
/* 80B7A5E8  41 82 00 14 */	beq lbl_80B7A5FC
/* 80B7A5EC  4B 4B 54 69 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B7A5F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B7A5F4  40 82 00 08 */	bne lbl_80B7A5FC
lbl_80B7A5F8:
/* 80B7A5F8  3B 40 00 01 */	li r26, 1
lbl_80B7A5FC:
/* 80B7A5FC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B7A600  40 82 02 48 */	bne lbl_80B7A848
/* 80B7A604  88 1B 09 F4 */	lbz r0, 0x9f4(r27)
/* 80B7A608  28 00 00 00 */	cmplwi r0, 0
/* 80B7A60C  41 82 00 20 */	beq lbl_80B7A62C
/* 80B7A610  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B7A614  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B7A618  38 80 00 04 */	li r4, 4
/* 80B7A61C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B7A620  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80B7A624  4B 62 91 A1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B7A628  48 00 00 1C */	b lbl_80B7A644
lbl_80B7A62C:
/* 80B7A62C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B7A630  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B7A634  38 80 00 00 */	li r4, 0
/* 80B7A638  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B7A63C  38 DB 01 0C */	addi r6, r27, 0x10c
/* 80B7A640  4B 62 91 85 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80B7A644:
/* 80B7A644  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B7A648  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B7A64C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80B7A650  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80B7A654  4B 62 A7 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B7A658  7F 63 DB 78 */	mr r3, r27
/* 80B7A65C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B7A660  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80B7A664  7D 89 03 A6 */	mtctr r12
/* 80B7A668  4E 80 04 21 */	bctrl 
/* 80B7A66C  2C 03 00 00 */	cmpwi r3, 0
/* 80B7A670  40 82 01 D8 */	bne lbl_80B7A848
/* 80B7A674  80 1B 14 F8 */	lwz r0, 0x14f8(r27)
/* 80B7A678  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B7A67C  41 82 00 14 */	beq lbl_80B7A690
/* 80B7A680  C0 3B 0B F8 */	lfs f1, 0xbf8(r27)
/* 80B7A684  38 7B 0B E8 */	addi r3, r27, 0xbe8
/* 80B7A688  38 9D 00 58 */	addi r4, r29, 0x58
/* 80B7A68C  4B 49 30 4D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80B7A690:
/* 80B7A690  80 1B 14 F8 */	lwz r0, 0x14f8(r27)
/* 80B7A694  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80B7A698  41 82 00 14 */	beq lbl_80B7A6AC
/* 80B7A69C  C0 3B 0C 10 */	lfs f1, 0xc10(r27)
/* 80B7A6A0  38 7B 0C 00 */	addi r3, r27, 0xc00
/* 80B7A6A4  38 9D 00 58 */	addi r4, r29, 0x58
/* 80B7A6A8  4B 49 2E 71 */	bl entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
lbl_80B7A6AC:
/* 80B7A6AC  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B7A6B0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80B7A6B4  41 82 00 20 */	beq lbl_80B7A6D4
/* 80B7A6B8  38 7B 05 88 */	addi r3, r27, 0x588
/* 80B7A6BC  38 9D 00 58 */	addi r4, r29, 0x58
/* 80B7A6C0  C0 1B 05 98 */	lfs f0, 0x598(r27)
/* 80B7A6C4  FC 00 00 1E */	fctiwz f0, f0
/* 80B7A6C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B7A6CC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80B7A6D0  4B 49 2F 19 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_80B7A6D4:
/* 80B7A6D4  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B7A6D8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B7A6DC  41 82 00 14 */	beq lbl_80B7A6F0
/* 80B7A6E0  C0 3B 05 B0 */	lfs f1, 0x5b0(r27)
/* 80B7A6E4  38 7B 05 A0 */	addi r3, r27, 0x5a0
/* 80B7A6E8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80B7A6EC  4B 49 2F ED */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80B7A6F0:
/* 80B7A6F0  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B7A6F4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B7A6F8  41 82 00 14 */	beq lbl_80B7A70C
/* 80B7A6FC  C0 3B 05 C8 */	lfs f1, 0x5c8(r27)
/* 80B7A700  38 7B 05 B8 */	addi r3, r27, 0x5b8
/* 80B7A704  38 9D 00 58 */	addi r4, r29, 0x58
/* 80B7A708  4B 49 30 A1 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_80B7A70C:
/* 80B7A70C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B7A710  41 82 00 10 */	beq lbl_80B7A720
/* 80B7A714  7F 63 DB 78 */	mr r3, r27
/* 80B7A718  7F A4 EB 78 */	mr r4, r29
/* 80B7A71C  4B 4A 2D 11 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80B7A720:
/* 80B7A720  88 1B 09 F4 */	lbz r0, 0x9f4(r27)
/* 80B7A724  28 00 00 00 */	cmplwi r0, 0
/* 80B7A728  41 82 00 48 */	beq lbl_80B7A770
/* 80B7A72C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7A730  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7A734  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80B7A738  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B7A73C  3B 83 4A C8 */	addi r28, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B7A740  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80B7A744  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80B7A748  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80B7A74C  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B7A750  4B 49 6A 71 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80B7A754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7A758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7A75C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80B7A760  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80B7A764  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80B7A768  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80B7A76C  48 00 00 0C */	b lbl_80B7A778
lbl_80B7A770:
/* 80B7A770  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B7A774  4B 49 6A 4D */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80B7A778:
/* 80B7A778  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B7A77C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80B7A780  41 82 00 10 */	beq lbl_80B7A790
/* 80B7A784  38 7D 00 58 */	addi r3, r29, 0x58
/* 80B7A788  80 9B 05 9C */	lwz r4, 0x59c(r27)
/* 80B7A78C  4B 7B 4F 6D */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
lbl_80B7A790:
/* 80B7A790  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B7A794  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B7A798  41 82 00 10 */	beq lbl_80B7A7A8
/* 80B7A79C  38 7D 00 58 */	addi r3, r29, 0x58
/* 80B7A7A0  80 9B 05 B4 */	lwz r4, 0x5b4(r27)
/* 80B7A7A4  4B 7B 50 11 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80B7A7A8:
/* 80B7A7A8  80 1B 09 9C */	lwz r0, 0x99c(r27)
/* 80B7A7AC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B7A7B0  41 82 00 10 */	beq lbl_80B7A7C0
/* 80B7A7B4  38 7D 00 58 */	addi r3, r29, 0x58
/* 80B7A7B8  80 9B 05 CC */	lwz r4, 0x5cc(r27)
/* 80B7A7BC  4B 7B 50 C5 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_80B7A7C0:
/* 80B7A7C0  80 1B 14 F8 */	lwz r0, 0x14f8(r27)
/* 80B7A7C4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80B7A7C8  41 82 00 10 */	beq lbl_80B7A7D8
/* 80B7A7CC  38 7D 00 58 */	addi r3, r29, 0x58
/* 80B7A7D0  80 9B 0C 14 */	lwz r4, 0xc14(r27)
/* 80B7A7D4  4B 7B 4E 79 */	bl removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor
lbl_80B7A7D8:
/* 80B7A7D8  80 1B 14 F8 */	lwz r0, 0x14f8(r27)
/* 80B7A7DC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80B7A7E0  41 82 00 10 */	beq lbl_80B7A7F0
/* 80B7A7E4  38 7D 00 58 */	addi r3, r29, 0x58
/* 80B7A7E8  80 9B 0B FC */	lwz r4, 0xbfc(r27)
/* 80B7A7EC  4B 7B 4F C9 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80B7A7F0:
/* 80B7A7F0  80 7B 09 A0 */	lwz r3, 0x9a0(r27)
/* 80B7A7F4  38 80 00 01 */	li r4, 1
/* 80B7A7F8  7F C5 F3 78 */	mr r5, r30
/* 80B7A7FC  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 80B7A800  38 FF 00 00 */	addi r7, r31, 0
/* 80B7A804  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80B7A808  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 80B7A80C  C0 7B 04 D4 */	lfs f3, 0x4d4(r27)
/* 80B7A810  C0 9B 09 80 */	lfs f4, 0x980(r27)
/* 80B7A814  38 FB 0A 58 */	addi r7, r27, 0xa58
/* 80B7A818  39 1B 01 0C */	addi r8, r27, 0x10c
/* 80B7A81C  39 20 00 00 */	li r9, 0
/* 80B7A820  C0 BF 00 F0 */	lfs f5, 0xf0(r31)
/* 80B7A824  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80B7A828  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80B7A82C  4B 4B 40 E5 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80B7A830  90 7B 09 A0 */	stw r3, 0x9a0(r27)
/* 80B7A834  7F 63 DB 78 */	mr r3, r27
/* 80B7A838  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B7A83C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B7A840  7D 89 03 A6 */	mtctr r12
/* 80B7A844  4E 80 04 21 */	bctrl 
lbl_80B7A848:
/* 80B7A848  38 60 00 01 */	li r3, 1
/* 80B7A84C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7A850  4B 7E 79 CD */	bl _restgpr_26
/* 80B7A854  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7A858  7C 08 03 A6 */	mtlr r0
/* 80B7A85C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B7A860  4E 80 00 20 */	blr 
