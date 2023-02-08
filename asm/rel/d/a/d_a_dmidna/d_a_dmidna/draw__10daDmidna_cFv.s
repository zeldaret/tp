lbl_8045D204:
/* 8045D204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D208  7C 08 02 A6 */	mflr r0
/* 8045D20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D214  7C 7F 1B 78 */	mr r31, r3
/* 8045D218  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8045D21C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8045D220  38 80 00 00 */	li r4, 0
/* 8045D224  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8045D228  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8045D22C  4B D4 65 99 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8045D230  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8045D234  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8045D238  80 9F 05 24 */	lwz r4, 0x524(r31)
/* 8045D23C  80 84 00 04 */	lwz r4, 4(r4)
/* 8045D240  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8045D244  4B D4 7B 5D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8045D248  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 8045D24C  4B BB 0B 19 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 8045D250  38 60 00 01 */	li r3, 1
/* 8045D254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D25C  7C 08 03 A6 */	mtlr r0
/* 8045D260  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D264  4E 80 00 20 */	blr 
