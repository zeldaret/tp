lbl_80CA6EDC:
/* 80CA6EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6EE0  7C 08 02 A6 */	mflr r0
/* 80CA6EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6EE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6EEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA6EF0  7C 7E 1B 78 */	mr r30, r3
/* 80CA6EF4  3C 60 80 CA */	lis r3, mCcDObjInfo__15daObj_Oiltubo_c@ha /* 0x80CA78F4@ha */
/* 80CA6EF8  3B E3 78 F4 */	addi r31, r3, mCcDObjInfo__15daObj_Oiltubo_c@l /* 0x80CA78F4@l */
/* 80CA6EFC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA6F00  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA6F04  38 80 00 08 */	li r4, 8
/* 80CA6F08  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CA6F0C  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CA6F10  4B 4F C8 B5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA6F14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA6F18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA6F1C  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80CA6F20  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA6F24  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA6F28  4B 4F DE 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA6F2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA6F30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA6F34  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80CA6F38  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA6F3C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA6F40  4B 4F DE 61 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA6F44  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80CA6F48  4B 36 6D 7D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA6F4C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CA6F50  80 83 00 04 */	lwz r4, 4(r3)
/* 80CA6F54  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80CA6F58  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CA6F5C  38 84 00 58 */	addi r4, r4, 0x58
/* 80CA6F60  4B 36 67 79 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CA6F64  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80CA6F68  4B 36 6D 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA6F6C  80 7E 0A C8 */	lwz r3, 0xac8(r30)
/* 80CA6F70  38 80 00 01 */	li r4, 1
/* 80CA6F74  80 BE 05 70 */	lwz r5, 0x570(r30)
/* 80CA6F78  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA6F7C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80CA6F80  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80CA6F84  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80CA6F88  C0 9E 0A C4 */	lfs f4, 0xac4(r30)
/* 80CA6F8C  38 FE 0A 70 */	addi r7, r30, 0xa70
/* 80CA6F90  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80CA6F94  39 20 00 00 */	li r9, 0
/* 80CA6F98  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 80CA6F9C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80CA6FA0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80CA6FA4  4B 38 79 6D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80CA6FA8  90 7E 0A C8 */	stw r3, 0xac8(r30)
/* 80CA6FAC  38 60 00 01 */	li r3, 1
/* 80CA6FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6FB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA6FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6FBC  7C 08 03 A6 */	mtlr r0
/* 80CA6FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6FC4  4E 80 00 20 */	blr 
