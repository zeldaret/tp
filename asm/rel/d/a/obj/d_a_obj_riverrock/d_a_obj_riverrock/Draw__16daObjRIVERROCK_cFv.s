lbl_80CBD8E0:
/* 80CBD8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD8E4  7C 08 02 A6 */	mflr r0
/* 80CBD8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD8F0  7C 7F 1B 78 */	mr r31, r3
/* 80CBD8F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBD8F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBD8FC  38 80 00 10 */	li r4, 0x10
/* 80CBD900  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CBD904  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CBD908  4B 4E 5E BD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CBD90C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CBD910  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CBD914  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 80CBD918  80 84 00 04 */	lwz r4, 4(r4)
/* 80CBD91C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CBD920  4B 4E 74 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CBD924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBD928  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBD92C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CBD930  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CBD934  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CBD938  90 03 00 48 */	stw r0, 0x48(r3)
/* 80CBD93C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CBD940  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80CBD944  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80CBD948  4B 35 03 7D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CBD94C  38 60 00 01 */	li r3, 1
/* 80CBD950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD958  7C 08 03 A6 */	mtlr r0
/* 80CBD95C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD960  4E 80 00 20 */	blr 
