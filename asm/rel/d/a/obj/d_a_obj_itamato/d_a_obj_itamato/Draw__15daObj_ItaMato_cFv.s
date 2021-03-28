lbl_80C2A44C:
/* 80C2A44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2A450  7C 08 02 A6 */	mflr r0
/* 80C2A454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2A458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2A45C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2A460  7C 7E 1B 78 */	mr r30, r3
/* 80C2A464  3C 60 80 C3 */	lis r3, m__21daObj_ItaMato_Param_c@ha
/* 80C2A468  3B E3 AB 70 */	addi r31, r3, m__21daObj_ItaMato_Param_c@l
/* 80C2A46C  88 1E 0A 16 */	lbz r0, 0xa16(r30)
/* 80C2A470  28 00 00 00 */	cmplwi r0, 0
/* 80C2A474  40 82 01 40 */	bne lbl_80C2A5B4
/* 80C2A478  88 1E 0A 18 */	lbz r0, 0xa18(r30)
/* 80C2A47C  28 00 00 00 */	cmplwi r0, 0
/* 80C2A480  41 82 00 10 */	beq lbl_80C2A490
/* 80C2A484  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80C2A488  2C 00 00 00 */	cmpwi r0, 0
/* 80C2A48C  41 82 01 28 */	beq lbl_80C2A5B4
lbl_80C2A490:
/* 80C2A490  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C2A494  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C2A498  38 80 00 00 */	li r4, 0
/* 80C2A49C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C2A4A0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80C2A4A4  4B 57 93 20 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C2A4A8  88 1E 0A 18 */	lbz r0, 0xa18(r30)
/* 80C2A4AC  28 00 00 00 */	cmplwi r0, 0
/* 80C2A4B0  41 82 00 68 */	beq lbl_80C2A518
/* 80C2A4B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C2A4B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C2A4BC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80C2A4C0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C2A4C4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C2A4C8  4B 57 A8 D8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C2A4CC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C2A4D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80C2A4D4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C2A4D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2A4DC  80 63 00 08 */	lwz r3, 8(r3)
/* 80C2A4E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C2A4E4  60 00 00 01 */	ori r0, r0, 1
/* 80C2A4E8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80C2A4EC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C2A4F0  4B 3E 37 D4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80C2A4F4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C2A4F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80C2A4FC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C2A500  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2A504  80 63 00 08 */	lwz r3, 8(r3)
/* 80C2A508  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C2A50C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C2A510  90 03 00 0C */	stw r0, 0xc(r3)
/* 80C2A514  48 00 00 3C */	b lbl_80C2A550
lbl_80C2A518:
/* 80C2A518  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80C2A51C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80C2A520  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80C2A524  54 00 10 3A */	slwi r0, r0, 2
/* 80C2A528  7C 9E 02 14 */	add r4, r30, r0
/* 80C2A52C  80 84 05 74 */	lwz r4, 0x574(r4)
/* 80C2A530  80 84 00 04 */	lwz r4, 4(r4)
/* 80C2A534  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80C2A538  4B 57 A8 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C2A53C  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80C2A540  54 00 10 3A */	slwi r0, r0, 2
/* 80C2A544  7C 7E 02 14 */	add r3, r30, r0
/* 80C2A548  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80C2A54C  4B 3E 37 78 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80C2A550:
/* 80C2A550  88 1E 0A 18 */	lbz r0, 0xa18(r30)
/* 80C2A554  28 00 00 00 */	cmplwi r0, 0
/* 80C2A558  40 82 00 5C */	bne lbl_80C2A5B4
/* 80C2A55C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80C2A560  C0 9E 09 EC */	lfs f4, 0x9ec(r30)
/* 80C2A564  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80C2A568  41 82 00 4C */	beq lbl_80C2A5B4
/* 80C2A56C  80 7E 0A 04 */	lwz r3, 0xa04(r30)
/* 80C2A570  38 80 00 01 */	li r4, 1
/* 80C2A574  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 80C2A578  54 00 10 3A */	slwi r0, r0, 2
/* 80C2A57C  7C BE 02 14 */	add r5, r30, r0
/* 80C2A580  80 A5 05 74 */	lwz r5, 0x574(r5)
/* 80C2A584  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C2A588  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C2A58C  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80C2A590  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80C2A594  38 FE 07 E4 */	addi r7, r30, 0x7e4
/* 80C2A598  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80C2A59C  39 20 00 00 */	li r9, 0
/* 80C2A5A0  C0 BF 00 54 */	lfs f5, 0x54(r31)
/* 80C2A5A4  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80C2A5A8  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80C2A5AC  4B 40 43 64 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80C2A5B0  90 7E 0A 04 */	stw r3, 0xa04(r30)
lbl_80C2A5B4:
/* 80C2A5B4  38 60 00 01 */	li r3, 1
/* 80C2A5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2A5BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2A5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2A5C4  7C 08 03 A6 */	mtlr r0
/* 80C2A5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2A5CC  4E 80 00 20 */	blr 
