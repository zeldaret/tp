lbl_806772C4:
/* 806772C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806772C8  7C 08 02 A6 */	mflr r0
/* 806772CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806772D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806772D4  93 C1 00 08 */	stw r30, 8(r1)
/* 806772D8  7C 7F 1B 78 */	mr r31, r3
/* 806772DC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806772E0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806772E4  38 80 00 14 */	li r4, 0x14
/* 806772E8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806772EC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806772F0  4B B2 C4 D5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806772F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806772F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806772FC  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80677300  80 84 00 04 */	lwz r4, 4(r4)
/* 80677304  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80677308  4B B2 DA 99 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8067730C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80677310  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80677314  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80677318  80 84 00 04 */	lwz r4, 4(r4)
/* 8067731C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80677320  4B B2 DA 81 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80677324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80677328  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067732C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80677330  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80677334  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80677338  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8067733C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80677340  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80677344  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80677348  80 83 00 04 */	lwz r4, 4(r3)
/* 8067734C  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80677350  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80677354  4B 99 66 79 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80677358  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 8067735C  4B 99 69 69 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80677360  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80677364  80 83 00 04 */	lwz r4, 4(r3)
/* 80677368  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8067736C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80677370  4B 99 66 5D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80677374  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80677378  4B 99 69 4D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8067737C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80677380  80 63 00 04 */	lwz r3, 4(r3)
/* 80677384  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80677388  80 63 00 00 */	lwz r3, 0(r3)
/* 8067738C  38 00 00 00 */	li r0, 0
/* 80677390  90 03 00 54 */	stw r0, 0x54(r3)
/* 80677394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80677398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067739C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 806773A0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 806773A4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 806773A8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 806773AC  88 1F 06 00 */	lbz r0, 0x600(r31)
/* 806773B0  28 00 00 00 */	cmplwi r0, 0
/* 806773B4  41 82 00 10 */	beq lbl_806773C4
/* 806773B8  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806773BC  7F E4 FB 78 */	mr r4, r31
/* 806773C0  4B FF BA 0D */	bl draw__13dDoor_stop2_cFP10fopAc_ac_c
lbl_806773C4:
/* 806773C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806773C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806773CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806773D0  7C 08 03 A6 */	mtlr r0
/* 806773D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806773D8  4E 80 00 20 */	blr 
