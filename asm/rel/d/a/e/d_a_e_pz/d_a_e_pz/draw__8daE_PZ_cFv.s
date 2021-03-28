lbl_807585BC:
/* 807585BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807585C0  7C 08 02 A6 */	mflr r0
/* 807585C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807585C8  39 61 00 30 */	addi r11, r1, 0x30
/* 807585CC  4B C0 9C 10 */	b _savegpr_29
/* 807585D0  7C 7F 1B 78 */	mr r31, r3
/* 807585D4  3C 60 80 76 */	lis r3, lit_3906@ha
/* 807585D8  3B C3 14 FC */	addi r30, r3, lit_3906@l
/* 807585DC  88 1F 08 40 */	lbz r0, 0x840(r31)
/* 807585E0  28 00 00 00 */	cmplwi r0, 0
/* 807585E4  41 82 00 0C */	beq lbl_807585F0
/* 807585E8  38 60 00 01 */	li r3, 1
/* 807585EC  48 00 01 DC */	b lbl_807587C8
lbl_807585F0:
/* 807585F0  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807585F4  28 00 00 0A */	cmplwi r0, 0xa
/* 807585F8  40 82 00 0C */	bne lbl_80758604
/* 807585FC  38 60 00 01 */	li r3, 1
/* 80758600  48 00 01 C8 */	b lbl_807587C8
lbl_80758604:
/* 80758604  28 00 00 1E */	cmplwi r0, 0x1e
/* 80758608  41 82 00 0C */	beq lbl_80758614
/* 8075860C  28 00 00 28 */	cmplwi r0, 0x28
/* 80758610  40 82 00 0C */	bne lbl_8075861C
lbl_80758614:
/* 80758614  38 60 00 01 */	li r3, 1
/* 80758618  48 00 01 B0 */	b lbl_807587C8
lbl_8075861C:
/* 8075861C  28 00 00 14 */	cmplwi r0, 0x14
/* 80758620  41 80 00 C4 */	blt lbl_807586E4
/* 80758624  28 00 00 17 */	cmplwi r0, 0x17
/* 80758628  41 81 00 BC */	bgt lbl_807586E4
/* 8075862C  88 1F 08 42 */	lbz r0, 0x842(r31)
/* 80758630  28 00 00 00 */	cmplwi r0, 0
/* 80758634  41 82 00 84 */	beq lbl_807586B8
/* 80758638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8075863C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80758640  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 80758644  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80758648  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 8075864C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80758650  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 80758654  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80758658  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8075865C  80 83 00 04 */	lwz r4, 4(r3)
/* 80758660  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80758664  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80758668  38 84 00 58 */	addi r4, r4, 0x58
/* 8075866C  4B 8B 50 6C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80758670  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80758674  80 83 00 04 */	lwz r4, 4(r3)
/* 80758678  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 8075867C  54 00 10 3A */	slwi r0, r0, 2
/* 80758680  7C 7F 02 14 */	add r3, r31, r0
/* 80758684  80 63 05 C4 */	lwz r3, 0x5c4(r3)
/* 80758688  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8075868C  38 84 00 58 */	addi r4, r4, 0x58
/* 80758690  4B 8B 51 18 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80758694  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80758698  4B 8B 56 2C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8075869C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807586A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807586A4  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 807586A8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 807586AC  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 807586B0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 807586B4  48 00 00 28 */	b lbl_807586DC
lbl_807586B8:
/* 807586B8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807586BC  80 63 00 04 */	lwz r3, 4(r3)
/* 807586C0  80 83 00 04 */	lwz r4, 4(r3)
/* 807586C4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807586C8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807586CC  38 84 00 58 */	addi r4, r4, 0x58
/* 807586D0  4B 8B 50 D8 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 807586D4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807586D8  4B 8B 8A E8 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_807586DC:
/* 807586DC  38 60 00 01 */	li r3, 1
/* 807586E0  48 00 00 E8 */	b lbl_807587C8
lbl_807586E4:
/* 807586E4  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 807586E8  28 00 00 00 */	cmplwi r0, 0
/* 807586EC  40 82 00 0C */	bne lbl_807586F8
/* 807586F0  38 60 00 01 */	li r3, 1
/* 807586F4  48 00 00 D4 */	b lbl_807587C8
lbl_807586F8:
/* 807586F8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807586FC  83 A3 00 04 */	lwz r29, 4(r3)
/* 80758700  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80758704  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80758708  38 80 00 00 */	li r4, 0
/* 8075870C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80758710  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80758714  4B A4 B0 B0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80758718  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8075871C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80758720  80 9D 00 04 */	lwz r4, 4(r29)
/* 80758724  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80758728  4B A4 C6 78 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8075872C  7F E3 FB 78 */	mr r3, r31
/* 80758730  80 9D 00 04 */	lwz r4, 4(r29)
/* 80758734  4B 8C 4C F8 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80758738  80 9D 00 04 */	lwz r4, 4(r29)
/* 8075873C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80758740  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80758744  38 84 00 58 */	addi r4, r4, 0x58
/* 80758748  4B 8B 50 60 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8075874C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80758750  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80758754  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80758758  38 84 00 58 */	addi r4, r4, 0x58
/* 8075875C  4B 8B 4F 7C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80758760  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80758764  4B 8B 8A 5C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80758768  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8075876C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80758770  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80758774  EC 20 18 2A */	fadds f1, f0, f3
/* 80758778  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8075877C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80758780  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80758784  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80758788  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 8075878C  38 80 00 01 */	li r4, 1
/* 80758790  7F A5 EB 78 */	mr r5, r29
/* 80758794  38 C1 00 08 */	addi r6, r1, 8
/* 80758798  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8075879C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807587A0  C0 9F 09 28 */	lfs f4, 0x928(r31)
/* 807587A4  38 FF 09 80 */	addi r7, r31, 0x980
/* 807587A8  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807587AC  39 20 00 00 */	li r9, 0
/* 807587B0  C0 BE 00 08 */	lfs f5, 8(r30)
/* 807587B4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807587B8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807587BC  4B 8D 61 54 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807587C0  90 7F 06 88 */	stw r3, 0x688(r31)
/* 807587C4  38 60 00 01 */	li r3, 1
lbl_807587C8:
/* 807587C8  39 61 00 30 */	addi r11, r1, 0x30
/* 807587CC  4B C0 9A 5C */	b _restgpr_29
/* 807587D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807587D4  7C 08 03 A6 */	mtlr r0
/* 807587D8  38 21 00 30 */	addi r1, r1, 0x30
/* 807587DC  4E 80 00 20 */	blr 
