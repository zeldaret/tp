lbl_804D4BB4:
/* 804D4BB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D4BB8  7C 08 02 A6 */	mflr r0
/* 804D4BBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D4BC0  39 61 00 30 */	addi r11, r1, 0x30
/* 804D4BC4  4B E8 D6 14 */	b _savegpr_28
/* 804D4BC8  7C 7F 1B 78 */	mr r31, r3
/* 804D4BCC  3C 60 80 4D */	lis r3, lit_3768@ha
/* 804D4BD0  3B A3 4D 90 */	addi r29, r3, lit_3768@l
/* 804D4BD4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804D4BD8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804D4BDC  38 80 00 00 */	li r4, 0
/* 804D4BE0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804D4BE4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804D4BE8  4B CC EB DC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804D4BEC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804D4BF0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804D4BF4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 804D4BF8  80 84 00 04 */	lwz r4, 4(r4)
/* 804D4BFC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804D4C00  4B CD 01 A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804D4C04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D4C08  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 804D4C0C  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 804D4C10  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 804D4C14  28 00 00 A4 */	cmplwi r0, 0xa4
/* 804D4C18  40 82 00 18 */	bne lbl_804D4C30
/* 804D4C1C  C0 23 05 30 */	lfs f1, 0x530(r3)
/* 804D4C20  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 804D4C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D4C28  4C 41 13 82 */	cror 2, 1, 2
/* 804D4C2C  41 82 00 10 */	beq lbl_804D4C3C
lbl_804D4C30:
/* 804D4C30  88 1F 0A 71 */	lbz r0, 0xa71(r31)
/* 804D4C34  28 00 00 00 */	cmplwi r0, 0
/* 804D4C38  41 82 00 0C */	beq lbl_804D4C44
lbl_804D4C3C:
/* 804D4C3C  38 60 00 01 */	li r3, 1
/* 804D4C40  48 00 00 B0 */	b lbl_804D4CF0
lbl_804D4C44:
/* 804D4C44  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804D4C48  4B B3 91 1C */	b mDoExt_modelEntryDL__FP8J3DModel
/* 804D4C4C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804D4C50  4B B5 CC FC */	b entry__10daMirror_cFP8J3DModel
/* 804D4C54  83 9E 5D B4 */	lwz r28, 0x5db4(r30)
/* 804D4C58  3B C0 00 00 */	li r30, 0
/* 804D4C5C  7F 83 E3 78 */	mr r3, r28
/* 804D4C60  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804D4C64  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 804D4C68  7D 89 03 A6 */	mtctr r12
/* 804D4C6C  4E 80 04 21 */	bctrl 
/* 804D4C70  28 03 00 00 */	cmplwi r3, 0
/* 804D4C74  41 82 00 14 */	beq lbl_804D4C88
/* 804D4C78  80 1C 28 18 */	lwz r0, 0x2818(r28)
/* 804D4C7C  7C 00 F8 40 */	cmplw r0, r31
/* 804D4C80  40 82 00 08 */	bne lbl_804D4C88
/* 804D4C84  3B C0 00 01 */	li r30, 1
lbl_804D4C88:
/* 804D4C88  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804D4C8C  40 82 00 60 */	bne lbl_804D4CEC
/* 804D4C90  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804D4C94  C0 3D 01 08 */	lfs f1, 0x108(r29)
/* 804D4C98  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D4C9C  EC 61 00 2A */	fadds f3, f1, f0
/* 804D4CA0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D4CA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D4CA8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 804D4CAC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804D4CB0  80 7F 0A 94 */	lwz r3, 0xa94(r31)
/* 804D4CB4  38 80 00 01 */	li r4, 1
/* 804D4CB8  80 BF 05 68 */	lwz r5, 0x568(r31)
/* 804D4CBC  38 C1 00 08 */	addi r6, r1, 8
/* 804D4CC0  C0 3D 01 0C */	lfs f1, 0x10c(r29)
/* 804D4CC4  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 804D4CC8  C0 9F 06 E4 */	lfs f4, 0x6e4(r31)
/* 804D4CCC  38 FF 07 3C */	addi r7, r31, 0x73c
/* 804D4CD0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 804D4CD4  39 20 00 00 */	li r9, 0
/* 804D4CD8  C0 BD 00 0C */	lfs f5, 0xc(r29)
/* 804D4CDC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804D4CE0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804D4CE4  4B B5 9C 2C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804D4CE8  90 7F 0A 94 */	stw r3, 0xa94(r31)
lbl_804D4CEC:
/* 804D4CEC  38 60 00 01 */	li r3, 1
lbl_804D4CF0:
/* 804D4CF0  39 61 00 30 */	addi r11, r1, 0x30
/* 804D4CF4  4B E8 D5 30 */	b _restgpr_28
/* 804D4CF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D4CFC  7C 08 03 A6 */	mtlr r0
/* 804D4D00  38 21 00 30 */	addi r1, r1, 0x30
/* 804D4D04  4E 80 00 20 */	blr 
