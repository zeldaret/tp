lbl_8077ACA4:
/* 8077ACA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077ACA8  7C 08 02 A6 */	mflr r0
/* 8077ACAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077ACB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8077ACB4  4B BE 75 25 */	bl _savegpr_28
/* 8077ACB8  7C 7E 1B 78 */	mr r30, r3
/* 8077ACBC  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077ACC0  3B A3 0D C4 */	addi r29, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077ACC4  88 1E 30 6C */	lbz r0, 0x306c(r30)
/* 8077ACC8  7C 00 07 75 */	extsb. r0, r0
/* 8077ACCC  41 82 00 0C */	beq lbl_8077ACD8
/* 8077ACD0  38 60 00 01 */	li r3, 1
/* 8077ACD4  48 00 01 4C */	b lbl_8077AE20
lbl_8077ACD8:
/* 8077ACD8  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077ACDC  83 83 00 04 */	lwz r28, 4(r3)
/* 8077ACE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8077ACE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8077ACE8  38 80 00 02 */	li r4, 2
/* 8077ACEC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8077ACF0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8077ACF4  4B A2 8A D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8077ACF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8077ACFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8077AD00  80 9C 00 04 */	lwz r4, 4(r28)
/* 8077AD04  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8077AD08  4B A2 A0 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8077AD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077AD10  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077AD14  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 8077AD18  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8077AD1C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 8077AD20  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8077AD24  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 8077AD28  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8077AD2C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077AD30  4B 89 64 91 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8077AD34  88 1E 06 9A */	lbz r0, 0x69a(r30)
/* 8077AD38  7C 00 07 75 */	extsb. r0, r0
/* 8077AD3C  41 82 00 60 */	beq lbl_8077AD9C
/* 8077AD40  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8077AD44  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8077AD48  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 8077AD4C  EC 20 18 2A */	fadds f1, f0, f3
/* 8077AD50  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8077AD54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8077AD58  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8077AD5C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8077AD60  80 7E 06 9C */	lwz r3, 0x69c(r30)
/* 8077AD64  38 80 00 01 */	li r4, 1
/* 8077AD68  7F 85 E3 78 */	mr r5, r28
/* 8077AD6C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8077AD70  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8077AD74  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8077AD78  C0 9E 07 94 */	lfs f4, 0x794(r30)
/* 8077AD7C  38 FE 07 EC */	addi r7, r30, 0x7ec
/* 8077AD80  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8077AD84  39 20 00 00 */	li r9, 0
/* 8077AD88  C0 BD 00 08 */	lfs f5, 8(r29)
/* 8077AD8C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8077AD90  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8077AD94  4B 8B 3B 7D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8077AD98  90 7E 06 9C */	stw r3, 0x69c(r30)
lbl_8077AD9C:
/* 8077AD9C  38 00 00 05 */	li r0, 5
/* 8077ADA0  98 01 00 08 */	stb r0, 8(r1)
/* 8077ADA4  38 00 00 0A */	li r0, 0xa
/* 8077ADA8  98 01 00 09 */	stb r0, 9(r1)
/* 8077ADAC  98 01 00 0A */	stb r0, 0xa(r1)
/* 8077ADB0  38 00 00 FF */	li r0, 0xff
/* 8077ADB4  98 01 00 0B */	stb r0, 0xb(r1)
/* 8077ADB8  38 7E 30 1C */	addi r3, r30, 0x301c
/* 8077ADBC  38 80 00 10 */	li r4, 0x10
/* 8077ADC0  38 A1 00 08 */	addi r5, r1, 8
/* 8077ADC4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8077ADC8  4B 89 80 75 */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8077ADCC  38 7E 30 1C */	addi r3, r30, 0x301c
/* 8077ADD0  81 9E 30 1C */	lwz r12, 0x301c(r30)
/* 8077ADD4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8077ADD8  7D 89 03 A6 */	mtctr r12
/* 8077ADDC  4E 80 04 21 */	bctrl 
/* 8077ADE0  1C 83 00 14 */	mulli r4, r3, 0x14
/* 8077ADE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077ADE8  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077ADEC  7C 60 22 14 */	add r3, r0, r4
/* 8077ADF0  3C 63 00 01 */	addis r3, r3, 1
/* 8077ADF4  38 63 61 54 */	addi r3, r3, 0x6154
/* 8077ADF8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8077ADFC  38 9E 30 1C */	addi r4, r30, 0x301c
/* 8077AE00  4B 89 99 39 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 8077AE04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077AE08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077AE0C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8077AE10  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8077AE14  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8077AE18  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8077AE1C  38 60 00 01 */	li r3, 1
lbl_8077AE20:
/* 8077AE20  39 61 00 30 */	addi r11, r1, 0x30
/* 8077AE24  4B BE 74 01 */	bl _restgpr_28
/* 8077AE28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077AE2C  7C 08 03 A6 */	mtlr r0
/* 8077AE30  38 21 00 30 */	addi r1, r1, 0x30
/* 8077AE34  4E 80 00 20 */	blr 
