lbl_80C314D8:
/* 80C314D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C314DC  7C 08 02 A6 */	mflr r0
/* 80C314E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C314E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C314E8  7C 7F 1B 78 */	mr r31, r3
/* 80C314EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C314F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C314F4  38 80 00 10 */	li r4, 0x10
/* 80C314F8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C314FC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C31500  4B 57 22 C5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C31504  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C31508  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C3150C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C31510  80 84 00 04 */	lwz r4, 4(r4)
/* 80C31514  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C31518  4B 57 38 89 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C3151C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C31520  4B 3D C7 A5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C31524  38 60 00 01 */	li r3, 1
/* 80C31528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3152C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C31530  7C 08 03 A6 */	mtlr r0
/* 80C31534  38 21 00 10 */	addi r1, r1, 0x10
/* 80C31538  4E 80 00 20 */	blr 
