lbl_80BF219C:
/* 80BF219C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF21A0  7C 08 02 A6 */	mflr r0
/* 80BF21A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF21A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF21AC  7C 7F 1B 78 */	mr r31, r3
/* 80BF21B0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF21B4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF21B8  38 80 00 10 */	li r4, 0x10
/* 80BF21BC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BF21C0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BF21C4  4B 5B 16 01 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BF21C8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BF21CC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BF21D0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BF21D4  80 84 00 04 */	lwz r4, 4(r4)
/* 80BF21D8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BF21DC  4B 5B 2B C5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BF21E0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BF21E4  4B 41 BA E1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BF21E8  38 60 00 01 */	li r3, 1
/* 80BF21EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF21F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF21F4  7C 08 03 A6 */	mtlr r0
/* 80BF21F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF21FC  4E 80 00 20 */	blr 
