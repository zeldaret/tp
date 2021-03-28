lbl_8058742C:
/* 8058742C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80587430  7C 08 02 A6 */	mflr r0
/* 80587434  90 01 00 34 */	stw r0, 0x34(r1)
/* 80587438  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8058743C  7C 7F 1B 78 */	mr r31, r3
/* 80587440  88 03 0A 48 */	lbz r0, 0xa48(r3)
/* 80587444  28 00 00 00 */	cmplwi r0, 0
/* 80587448  40 82 00 F8 */	bne lbl_80587540
/* 8058744C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80587450  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80587454  38 80 00 00 */	li r4, 0
/* 80587458  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8058745C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80587460  4B C1 C3 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80587464  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80587468  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8058746C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80587470  80 84 00 04 */	lwz r4, 4(r4)
/* 80587474  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80587478  4B C1 D9 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058747C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80587480  4B A8 68 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80587484  38 00 00 00 */	li r0, 0
/* 80587488  90 01 00 08 */	stw r0, 8(r1)
/* 8058748C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80587490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80587494  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80587498  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8058749C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 805874A0  7D 89 03 A6 */	mtctr r12
/* 805874A4  4E 80 04 21 */	bctrl 
/* 805874A8  38 81 00 08 */	addi r4, r1, 8
/* 805874AC  4B A9 25 10 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805874B0  80 01 00 08 */	lwz r0, 8(r1)
/* 805874B4  7C 00 F8 40 */	cmplw r0, r31
/* 805874B8  40 82 00 10 */	bne lbl_805874C8
/* 805874BC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 805874C0  90 1F 05 24 */	stw r0, 0x524(r31)
/* 805874C4  48 00 00 74 */	b lbl_80587538
lbl_805874C8:
/* 805874C8  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 805874CC  38 03 7F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805874D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805874D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805874D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805874DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805874E0  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 805874E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 805874E8  4B AE D2 5C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 805874EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805874F0  41 82 00 3C */	beq lbl_8058752C
/* 805874F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805874F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805874FC  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80587500  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80587504  C0 3F 0A 00 */	lfs f1, 0xa00(r31)
/* 80587508  3C A0 80 58 */	lis r5, lit_3966@ha
/* 8058750C  C0 45 7D E4 */	lfs f2, lit_3966@l(r5)
/* 80587510  38 A1 00 0C */	addi r5, r1, 0xc
/* 80587514  38 C0 00 00 */	li r6, 0
/* 80587518  3C E0 80 58 */	lis r7, lit_4469@ha
/* 8058751C  C0 67 7E 0C */	lfs f3, lit_4469@l(r7)
/* 80587520  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80587524  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80587528  4B AC EA 5C */	b setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_8058752C:
/* 8058752C  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 80587530  38 03 7F 48 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80587534  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_80587538:
/* 80587538  38 00 00 01 */	li r0, 1
/* 8058753C  98 1F 0A 4B */	stb r0, 0xa4b(r31)
lbl_80587540:
/* 80587540  38 60 00 01 */	li r3, 1
/* 80587544  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80587548  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058754C  7C 08 03 A6 */	mtlr r0
/* 80587550  38 21 00 30 */	addi r1, r1, 0x30
/* 80587554  4E 80 00 20 */	blr 
