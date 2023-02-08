lbl_80BADDF4:
/* 80BADDF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADDF8  7C 08 02 A6 */	mflr r0
/* 80BADDFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADE04  93 C1 00 08 */	stw r30, 8(r1)
/* 80BADE08  7C 7E 1B 78 */	mr r30, r3
/* 80BADE0C  3C 60 80 BB */	lis r3, m__17daObj_Bed_Param_c@ha /* 0x80BAE168@ha */
/* 80BADE10  3B E3 E1 68 */	addi r31, r3, m__17daObj_Bed_Param_c@l /* 0x80BAE168@l */
/* 80BADE14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BADE18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BADE1C  38 80 00 00 */	li r4, 0
/* 80BADE20  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BADE24  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BADE28  4B 5F 59 9D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BADE2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BADE30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BADE34  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BADE38  80 84 00 04 */	lwz r4, 4(r4)
/* 80BADE3C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BADE40  4B 5F 6F 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BADE44  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BADE48  4B 45 FE 7D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BADE4C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BADE50  C0 9E 08 34 */	lfs f4, 0x834(r30)
/* 80BADE54  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80BADE58  41 82 00 44 */	beq lbl_80BADE9C
/* 80BADE5C  80 7E 08 38 */	lwz r3, 0x838(r30)
/* 80BADE60  38 80 00 01 */	li r4, 1
/* 80BADE64  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80BADE68  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BADE6C  38 FF 00 00 */	addi r7, r31, 0
/* 80BADE70  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80BADE74  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BADE78  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80BADE7C  38 FE 07 A4 */	addi r7, r30, 0x7a4
/* 80BADE80  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80BADE84  39 20 00 00 */	li r9, 0
/* 80BADE88  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 80BADE8C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80BADE90  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80BADE94  4B 48 0A 7D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80BADE98  90 7E 08 38 */	stw r3, 0x838(r30)
lbl_80BADE9C:
/* 80BADE9C  38 60 00 01 */	li r3, 1
/* 80BADEA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADEA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BADEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADEAC  7C 08 03 A6 */	mtlr r0
/* 80BADEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADEB4  4E 80 00 20 */	blr 
