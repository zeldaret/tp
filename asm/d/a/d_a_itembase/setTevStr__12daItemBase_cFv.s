lbl_80144D18:
/* 80144D18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80144D1C  7C 08 02 A6 */	mflr r0
/* 80144D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80144D24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80144D28  7C 7F 1B 78 */	mr r31, r3
/* 80144D2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80144D30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80144D34  38 80 00 00 */	li r4, 0
/* 80144D38  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80144D3C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80144D40  48 05 EA 85 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80144D44  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80144D48  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80144D4C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80144D50  80 84 00 04 */	lwz r4, 4(r4)
/* 80144D54  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80144D58  48 06 00 49 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80144D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80144D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80144D64  7C 08 03 A6 */	mtlr r0
/* 80144D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80144D6C  4E 80 00 20 */	blr 
