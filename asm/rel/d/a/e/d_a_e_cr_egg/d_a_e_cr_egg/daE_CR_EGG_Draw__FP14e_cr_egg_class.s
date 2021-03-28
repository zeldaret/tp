lbl_80699F38:
/* 80699F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80699F3C  7C 08 02 A6 */	mflr r0
/* 80699F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80699F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80699F48  7C 7F 1B 78 */	mr r31, r3
/* 80699F4C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80699F50  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80699F54  38 80 00 00 */	li r4, 0
/* 80699F58  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80699F5C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80699F60  4B B0 98 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80699F64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80699F68  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80699F6C  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80699F70  80 84 00 04 */	lwz r4, 4(r4)
/* 80699F74  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80699F78  4B B0 AE 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80699F7C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80699F80  4B 97 3D 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80699F84  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80699F88  C0 3F 07 34 */	lfs f1, 0x734(r31)
/* 80699F8C  3C 80 80 6A */	lis r4, lit_3657@ha
/* 80699F90  C0 44 A8 CC */	lfs f2, lit_3657@l(r4)
/* 80699F94  38 9F 07 8C */	addi r4, r31, 0x78c
/* 80699F98  38 A0 00 00 */	li r5, 0
/* 80699F9C  3C C0 80 6A */	lis r6, lit_3658@ha
/* 80699FA0  C0 66 A8 D0 */	lfs f3, lit_3658@l(r6)
/* 80699FA4  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80699FA8  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80699FAC  4B 99 31 08 */	b dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80699FB0  38 60 00 01 */	li r3, 1
/* 80699FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80699FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80699FBC  7C 08 03 A6 */	mtlr r0
/* 80699FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80699FC4  4E 80 00 20 */	blr 
