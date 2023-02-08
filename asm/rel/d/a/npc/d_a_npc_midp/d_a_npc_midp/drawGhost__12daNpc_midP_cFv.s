lbl_80A72174:
/* 80A72174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72178  7C 08 02 A6 */	mflr r0
/* 80A7217C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72184  93 C1 00 08 */	stw r30, 8(r1)
/* 80A72188  7C 7E 1B 78 */	mr r30, r3
/* 80A7218C  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80A72190  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A72194  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A72198  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A7219C  38 80 00 03 */	li r4, 3
/* 80A721A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A721A4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80A721A8  4B 73 16 1D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A721AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A721B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A721B4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80A721B8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80A721BC  4B 73 2B E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A721C0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A721C4  4B 59 EF FD */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80A721C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A721CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A721D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A721D4  7C 08 03 A6 */	mtlr r0
/* 80A721D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A721DC  4E 80 00 20 */	blr 
