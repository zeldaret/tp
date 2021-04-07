lbl_806A94E0:
/* 806A94E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A94E4  7C 08 02 A6 */	mflr r0
/* 806A94E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A94EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A94F0  93 C1 00 08 */	stw r30, 8(r1)
/* 806A94F4  7C 7E 1B 78 */	mr r30, r3
/* 806A94F8  80 63 05 C8 */	lwz r3, 0x5c8(r3)
/* 806A94FC  83 E3 00 04 */	lwz r31, 4(r3)
/* 806A9500  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806A9504  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806A9508  38 80 00 00 */	li r4, 0
/* 806A950C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806A9510  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806A9514  4B AF A2 B1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806A9518  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806A951C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806A9520  80 9F 00 04 */	lwz r4, 4(r31)
/* 806A9524  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806A9528  4B AF B8 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806A952C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806A9530  4B 96 7C 91 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806A9534  38 60 00 01 */	li r3, 1
/* 806A9538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A953C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A9540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9544  7C 08 03 A6 */	mtlr r0
/* 806A9548  38 21 00 10 */	addi r1, r1, 0x10
/* 806A954C  4E 80 00 20 */	blr 
