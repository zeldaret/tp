lbl_8073A314:
/* 8073A314  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073A318  7C 08 02 A6 */	mflr r0
/* 8073A31C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073A320  39 61 00 30 */	addi r11, r1, 0x30
/* 8073A324  4B C2 7E B8 */	b _savegpr_29
/* 8073A328  7C 7D 1B 78 */	mr r29, r3
/* 8073A32C  3C 60 80 74 */	lis r3, lit_3910@ha
/* 8073A330  3B E3 CE A8 */	addi r31, r3, lit_3910@l
/* 8073A334  88 1D 06 93 */	lbz r0, 0x693(r29)
/* 8073A338  28 00 00 00 */	cmplwi r0, 0
/* 8073A33C  41 82 00 10 */	beq lbl_8073A34C
/* 8073A340  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8073A344  83 C3 00 04 */	lwz r30, 4(r3)
/* 8073A348  48 00 00 08 */	b lbl_8073A350
lbl_8073A34C:
/* 8073A34C  83 DD 05 B8 */	lwz r30, 0x5b8(r29)
lbl_8073A350:
/* 8073A350  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8073A354  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8073A358  38 80 00 00 */	li r4, 0
/* 8073A35C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8073A360  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8073A364  4B A6 94 60 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8073A368  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8073A36C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8073A370  80 9E 00 04 */	lwz r4, 4(r30)
/* 8073A374  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8073A378  4B A6 AA 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8073A37C  88 1D 06 93 */	lbz r0, 0x693(r29)
/* 8073A380  28 00 00 00 */	cmplwi r0, 0
/* 8073A384  41 82 00 10 */	beq lbl_8073A394
/* 8073A388  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8073A38C  4B 8D 6E 34 */	b entryDL__16mDoExt_McaMorfSOFv
/* 8073A390  48 00 00 2C */	b lbl_8073A3BC
lbl_8073A394:
/* 8073A394  80 9E 00 04 */	lwz r4, 4(r30)
/* 8073A398  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8073A39C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8073A3A0  38 84 00 58 */	addi r4, r4, 0x58
/* 8073A3A4  4B 8D 33 34 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8073A3A8  7F A3 EB 78 */	mr r3, r29
/* 8073A3AC  80 9E 00 04 */	lwz r4, 4(r30)
/* 8073A3B0  4B 8E 30 7C */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 8073A3B4  7F C3 F3 78 */	mr r3, r30
/* 8073A3B8  4B 8D 39 0C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8073A3BC:
/* 8073A3BC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8073A3C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073A3C4  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8073A3C8  EC 20 18 2A */	fadds f1, f0, f3
/* 8073A3CC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8073A3D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073A3D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073A3D8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8073A3DC  80 7D 06 7C */	lwz r3, 0x67c(r29)
/* 8073A3E0  38 80 00 01 */	li r4, 1
/* 8073A3E4  7F C5 F3 78 */	mr r5, r30
/* 8073A3E8  38 C1 00 08 */	addi r6, r1, 8
/* 8073A3EC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8073A3F0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8073A3F4  C0 9D 07 70 */	lfs f4, 0x770(r29)
/* 8073A3F8  38 FD 07 C8 */	addi r7, r29, 0x7c8
/* 8073A3FC  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8073A400  39 20 00 00 */	li r9, 0
/* 8073A404  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8073A408  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8073A40C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8073A410  4B 8F 45 00 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8073A414  90 7D 06 7C */	stw r3, 0x67c(r29)
/* 8073A418  38 60 00 01 */	li r3, 1
/* 8073A41C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073A420  4B C2 7E 08 */	b _restgpr_29
/* 8073A424  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073A428  7C 08 03 A6 */	mtlr r0
/* 8073A42C  38 21 00 30 */	addi r1, r1, 0x30
/* 8073A430  4E 80 00 20 */	blr 
