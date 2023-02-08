lbl_805932F0:
/* 805932F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805932F4  7C 08 02 A6 */	mflr r0
/* 805932F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805932FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593300  93 C1 00 08 */	stw r30, 8(r1)
/* 80593304  7C 7E 1B 78 */	mr r30, r3
/* 80593308  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8059330C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80593310  38 80 00 10 */	li r4, 0x10
/* 80593314  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80593318  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8059331C  4B C1 04 A9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80593320  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80593324  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80593328  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 8059332C  80 84 00 04 */	lwz r4, 4(r4)
/* 80593330  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80593334  4B C1 1A 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80593338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059333C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80593340  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80593344  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80593348  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 8059334C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80593350  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80593354  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80593358  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8059335C  4B A7 A9 69 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80593360  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80593364  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80593368  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8059336C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80593370  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80593374  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80593378  38 60 00 01 */	li r3, 1
/* 8059337C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593380  83 C1 00 08 */	lwz r30, 8(r1)
/* 80593384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593388  7C 08 03 A6 */	mtlr r0
/* 8059338C  38 21 00 10 */	addi r1, r1, 0x10
/* 80593390  4E 80 00 20 */	blr 
