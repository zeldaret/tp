lbl_806A1E38:
/* 806A1E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A1E3C  7C 08 02 A6 */	mflr r0
/* 806A1E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A1E48  7C 7F 1B 78 */	mr r31, r3
/* 806A1E4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806A1E50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806A1E54  38 80 00 00 */	li r4, 0
/* 806A1E58  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806A1E5C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806A1E60  4B B0 19 65 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806A1E64  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806A1E68  80 83 00 04 */	lwz r4, 4(r3)
/* 806A1E6C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806A1E70  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806A1E74  80 84 00 04 */	lwz r4, 4(r4)
/* 806A1E78  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806A1E7C  4B B0 2F 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806A1E80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806A1E84  4B 96 E7 FD */	bl entryDL__14mDoExt_McaMorfFv
/* 806A1E88  38 60 00 01 */	li r3, 1
/* 806A1E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A1E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1E94  7C 08 03 A6 */	mtlr r0
/* 806A1E98  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1E9C  4E 80 00 20 */	blr 
