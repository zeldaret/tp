lbl_80A49660:
/* 80A49660  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A49664  7C 08 02 A6 */	mflr r0
/* 80A49668  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A4966C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A49670  4B 91 8B 6D */	bl _savegpr_29
/* 80A49674  7C 7D 1B 78 */	mr r29, r3
/* 80A49678  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A4967C  3B E3 DE FC */	addi r31, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A49680  88 1D 0B D7 */	lbz r0, 0xbd7(r29)
/* 80A49684  7C 00 07 75 */	extsb. r0, r0
/* 80A49688  41 82 00 14 */	beq lbl_80A4969C
/* 80A4968C  38 00 00 00 */	li r0, 0
/* 80A49690  98 1D 0B D7 */	stb r0, 0xbd7(r29)
/* 80A49694  38 60 00 01 */	li r3, 1
/* 80A49698  48 00 01 98 */	b lbl_80A49830
lbl_80A4969C:
/* 80A4969C  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A496A0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80A496A4  80 9D 05 C0 */	lwz r4, 0x5c0(r29)
/* 80A496A8  3C 60 80 A6 */	lis r3, d_a_npc_ks__stringBase0@ha /* 0x80A5E438@ha */
/* 80A496AC  38 03 E4 38 */	addi r0, r3, d_a_npc_ks__stringBase0@l /* 0x80A5E438@l */
/* 80A496B0  7C 04 00 40 */	cmplw r4, r0
/* 80A496B4  40 82 00 20 */	bne lbl_80A496D4
/* 80A496B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A496BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A496C0  38 80 00 04 */	li r4, 4
/* 80A496C4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A496C8  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80A496CC  4B 75 A0 F9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A496D0  48 00 00 1C */	b lbl_80A496EC
lbl_80A496D4:
/* 80A496D4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A496D8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A496DC  38 80 00 00 */	li r4, 0
/* 80A496E0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A496E4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 80A496E8  4B 75 A0 DD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80A496EC:
/* 80A496EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A496F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A496F4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80A496F8  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80A496FC  4B 75 B6 A5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A49700  88 1D 05 E4 */	lbz r0, 0x5e4(r29)
/* 80A49704  7C 00 07 75 */	extsb. r0, r0
/* 80A49708  41 82 00 28 */	beq lbl_80A49730
/* 80A4970C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80A49710  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80A49714  38 84 00 58 */	addi r4, r4, 0x58
/* 80A49718  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A4971C  FC 00 00 1E */	fctiwz f0, f0
/* 80A49720  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A49724  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80A49728  4B 5C 3E C1 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80A4972C  48 00 00 24 */	b lbl_80A49750
lbl_80A49730:
/* 80A49730  80 9E 00 04 */	lwz r4, 4(r30)
/* 80A49734  80 7D 05 D8 */	lwz r3, 0x5d8(r29)
/* 80A49738  38 84 00 58 */	addi r4, r4, 0x58
/* 80A4973C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80A49740  FC 00 00 1E */	fctiwz f0, f0
/* 80A49744  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A49748  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80A4974C  4B 5C 3E 9D */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
lbl_80A49750:
/* 80A49750  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80A49754  4B 5C 7A 6D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80A49758  88 1D 0C 17 */	lbz r0, 0xc17(r29)
/* 80A4975C  7C 00 07 75 */	extsb. r0, r0
/* 80A49760  41 82 00 24 */	beq lbl_80A49784
/* 80A49764  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A49768  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A4976C  80 9D 0C 00 */	lwz r4, 0xc00(r29)
/* 80A49770  80 84 00 04 */	lwz r4, 4(r4)
/* 80A49774  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80A49778  4B 75 B6 29 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A4977C  80 7D 0C 00 */	lwz r3, 0xc00(r29)
/* 80A49780  4B 5C 45 45 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80A49784:
/* 80A49784  80 9D 0B FC */	lwz r4, 0xbfc(r29)
/* 80A49788  28 04 00 00 */	cmplwi r4, 0
/* 80A4978C  41 82 00 20 */	beq lbl_80A497AC
/* 80A49790  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A49794  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A49798  80 84 00 04 */	lwz r4, 4(r4)
/* 80A4979C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80A497A0  4B 75 B6 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A497A4  80 7D 0B FC */	lwz r3, 0xbfc(r29)
/* 80A497A8  4B 5C 45 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80A497AC:
/* 80A497AC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80A497B0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A497B4  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 80A497B8  EC 20 18 2A */	fadds f1, f0, f3
/* 80A497BC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A497C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A497C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A497C8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A497CC  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 80A497D0  38 80 00 01 */	li r4, 1
/* 80A497D4  7F C5 F3 78 */	mr r5, r30
/* 80A497D8  38 C1 00 08 */	addi r6, r1, 8
/* 80A497DC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A497E0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80A497E4  C0 9D 07 18 */	lfs f4, 0x718(r29)
/* 80A497E8  38 FD 07 70 */	addi r7, r29, 0x770
/* 80A497EC  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80A497F0  39 20 00 00 */	li r9, 0
/* 80A497F4  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 80A497F8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80A497FC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80A49800  4B 5E 51 11 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80A49804  90 7D 05 EC */	stw r3, 0x5ec(r29)
/* 80A49808  88 1D 0C 17 */	lbz r0, 0xc17(r29)
/* 80A4980C  7C 00 07 75 */	extsb. r0, r0
/* 80A49810  41 82 00 1C */	beq lbl_80A4982C
/* 80A49814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A49818  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A4981C  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80A49820  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 80A49824  80 BD 0C 00 */	lwz r5, 0xc00(r29)
/* 80A49828  4B 60 C6 F5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A4982C:
/* 80A4982C  38 60 00 01 */	li r3, 1
lbl_80A49830:
/* 80A49830  39 61 00 30 */	addi r11, r1, 0x30
/* 80A49834  4B 91 89 F5 */	bl _restgpr_29
/* 80A49838  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A4983C  7C 08 03 A6 */	mtlr r0
/* 80A49840  38 21 00 30 */	addi r1, r1, 0x30
/* 80A49844  4E 80 00 20 */	blr 
