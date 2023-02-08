lbl_80C16C44:
/* 80C16C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16C48  7C 08 02 A6 */	mflr r0
/* 80C16C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16C54  7C 7F 1B 78 */	mr r31, r3
/* 80C16C58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C16C5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C16C60  38 80 00 08 */	li r4, 8
/* 80C16C64  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C16C68  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C16C6C  4B 58 CB 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C16C70  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C16C74  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C16C78  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C16C7C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C16C80  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C16C84  4B 58 E1 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C16C88  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C16C8C  4B 3F 6F A1 */	bl mDoExt_modelUpdate__FP8J3DModel
/* 80C16C90  38 60 00 01 */	li r3, 1
/* 80C16C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16C9C  7C 08 03 A6 */	mtlr r0
/* 80C16CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16CA4  4E 80 00 20 */	blr 
