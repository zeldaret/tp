lbl_80A2CD80:
/* 80A2CD80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2CD84  7C 08 02 A6 */	mflr r0
/* 80A2CD88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2CD8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2CD90  4B 93 54 4D */	bl _savegpr_29
/* 80A2CD94  7C 7F 1B 78 */	mr r31, r3
/* 80A2CD98  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A2CD9C  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A2CDA0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A2CDA4  83 A3 00 04 */	lwz r29, 4(r3)
/* 80A2CDA8  38 00 00 00 */	li r0, 0
/* 80A2CDAC  B0 1F 11 A8 */	sth r0, 0x11a8(r31)
/* 80A2CDB0  B0 1F 11 AA */	sth r0, 0x11aa(r31)
/* 80A2CDB4  B0 1F 11 AC */	sth r0, 0x11ac(r31)
/* 80A2CDB8  B0 1F 11 AE */	sth r0, 0x11ae(r31)
/* 80A2CDBC  80 9F 0D E0 */	lwz r4, 0xde0(r31)
/* 80A2CDC0  2C 04 00 00 */	cmpwi r4, 0
/* 80A2CDC4  41 82 00 7C */	beq lbl_80A2CE40
/* 80A2CDC8  80 1F 0D E4 */	lwz r0, 0xde4(r31)
/* 80A2CDCC  2C 00 00 00 */	cmpwi r0, 0
/* 80A2CDD0  41 82 00 70 */	beq lbl_80A2CE40
/* 80A2CDD4  C8 5E 00 30 */	lfd f2, 0x30(r30)
/* 80A2CDD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A2CDDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2CDE0  3C 60 43 30 */	lis r3, 0x4330
/* 80A2CDE4  90 61 00 08 */	stw r3, 8(r1)
/* 80A2CDE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A2CDEC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A2CDF0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A2CDF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2CDF8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A2CDFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80A2CE00  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A2CE04  EC 41 00 24 */	fdivs f2, f1, f0
/* 80A2CE08  FC 00 12 10 */	fabs f0, f2
/* 80A2CE0C  FC 20 00 18 */	frsp f1, f0
/* 80A2CE10  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80A2CE14  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80A2CE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A2CE1C  7C 00 00 26 */	mfcr r0
/* 80A2CE20  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80A2CE24  40 82 00 1C */	bne lbl_80A2CE40
/* 80A2CE28  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A2CE2C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80A2CE30  FC 00 00 1E */	fctiwz f0, f0
/* 80A2CE34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A2CE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2CE3C  B0 1F 11 A8 */	sth r0, 0x11a8(r31)
lbl_80A2CE40:
/* 80A2CE40  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A2CE44  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A2CE48  38 80 00 00 */	li r4, 0
/* 80A2CE4C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A2CE50  38 DF 0E 50 */	addi r6, r31, 0xe50
/* 80A2CE54  4B 77 69 71 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A2CE58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A2CE5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A2CE60  80 9D 00 04 */	lwz r4, 4(r29)
/* 80A2CE64  38 BF 0E 50 */	addi r5, r31, 0xe50
/* 80A2CE68  4B 77 7F 39 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A2CE6C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80A2CE70  4B 5E 43 51 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80A2CE74  80 7F 0D C8 */	lwz r3, 0xdc8(r31)
/* 80A2CE78  38 80 00 01 */	li r4, 1
/* 80A2CE7C  7F A5 EB 78 */	mr r5, r29
/* 80A2CE80  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80A2CE84  38 FE 00 A8 */	addi r7, r30, 0xa8
/* 80A2CE88  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80A2CE8C  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80A2CE90  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 80A2CE94  C0 9F 0E 14 */	lfs f4, 0xe14(r31)
/* 80A2CE98  38 FF 09 78 */	addi r7, r31, 0x978
/* 80A2CE9C  39 1F 0E 50 */	addi r8, r31, 0xe50
/* 80A2CEA0  39 20 00 00 */	li r9, 0
/* 80A2CEA4  C0 BE 00 44 */	lfs f5, 0x44(r30)
/* 80A2CEA8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80A2CEAC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80A2CEB0  4B 60 1A 61 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80A2CEB4  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 80A2CEB8  88 1F 15 CD */	lbz r0, 0x15cd(r31)
/* 80A2CEBC  28 00 00 00 */	cmplwi r0, 0
/* 80A2CEC0  41 82 00 C4 */	beq lbl_80A2CF84
/* 80A2CEC4  80 1F 0E 44 */	lwz r0, 0xe44(r31)
/* 80A2CEC8  28 00 00 00 */	cmplwi r0, 0
/* 80A2CECC  41 82 00 B8 */	beq lbl_80A2CF84
/* 80A2CED0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A2CED4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2CED8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2CEDC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2CEE0  38 63 04 20 */	addi r3, r3, 0x420
/* 80A2CEE4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2CEE8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2CEEC  4B 91 95 C5 */	bl PSMTXCopy
/* 80A2CEF0  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80A2CEF4  4B 5D FF 7D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80A2CEF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2CEFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2CF00  80 9F 0E 44 */	lwz r4, 0xe44(r31)
/* 80A2CF04  38 84 00 24 */	addi r4, r4, 0x24
/* 80A2CF08  4B 91 95 A9 */	bl PSMTXCopy
/* 80A2CF0C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A2CF10  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A2CF14  80 9F 0E 44 */	lwz r4, 0xe44(r31)
/* 80A2CF18  80 84 00 04 */	lwz r4, 4(r4)
/* 80A2CF1C  38 BF 0E 50 */	addi r5, r31, 0xe50
/* 80A2CF20  4B 77 7E 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A2CF24  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 80A2CF28  83 A3 00 04 */	lwz r29, 4(r3)
/* 80A2CF2C  80 1F 15 A4 */	lwz r0, 0x15a4(r31)
/* 80A2CF30  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80A2CF34  41 82 00 14 */	beq lbl_80A2CF48
/* 80A2CF38  38 7F 15 88 */	addi r3, r31, 0x1588
/* 80A2CF3C  7F A4 EB 78 */	mr r4, r29
/* 80A2CF40  C0 3F 15 98 */	lfs f1, 0x1598(r31)
/* 80A2CF44  4B 5E 0A 89 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80A2CF48:
/* 80A2CF48  80 7F 0E 44 */	lwz r3, 0xe44(r31)
/* 80A2CF4C  4B 5E 0D 79 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80A2CF50  80 1F 15 A4 */	lwz r0, 0x15a4(r31)
/* 80A2CF54  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80A2CF58  41 82 00 14 */	beq lbl_80A2CF6C
/* 80A2CF5C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A2CF60  80 63 00 00 */	lwz r3, 0(r3)
/* 80A2CF64  38 00 00 00 */	li r0, 0
/* 80A2CF68  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80A2CF6C:
/* 80A2CF6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2CF70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2CF74  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80A2CF78  80 9F 0D C8 */	lwz r4, 0xdc8(r31)
/* 80A2CF7C  80 BF 0E 44 */	lwz r5, 0xe44(r31)
/* 80A2CF80  4B 62 8F 9D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A2CF84:
/* 80A2CF84  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2CF88  4B 93 52 A1 */	bl _restgpr_29
/* 80A2CF8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2CF90  7C 08 03 A6 */	mtlr r0
/* 80A2CF94  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2CF98  4E 80 00 20 */	blr 
