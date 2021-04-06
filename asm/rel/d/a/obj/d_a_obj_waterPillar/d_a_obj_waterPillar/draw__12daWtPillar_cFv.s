lbl_80D2DDB8:
/* 80D2DDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2DDBC  7C 08 02 A6 */	mflr r0
/* 80D2DDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2DDC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2DDC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2DDCC  7C 7E 1B 78 */	mr r30, r3
/* 80D2DDD0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D2DDD4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D2DDD8  38 80 00 10 */	li r4, 0x10
/* 80D2DDDC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D2DDE0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D2DDE4  4B 47 59 E1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D2DDE8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D2DDEC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D2DDF0  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 80D2DDF4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D2DDF8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D2DDFC  4B 47 6F A5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D2DE00  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80D2DE04  83 E3 00 04 */	lwz r31, 4(r3)
/* 80D2DE08  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80D2DE0C  7F E4 FB 78 */	mr r4, r31
/* 80D2DE10  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 80D2DE14  4B 2D FB B9 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80D2DE18  C0 3E 05 A0 */	lfs f1, 0x5a0(r30)
/* 80D2DE1C  38 7E 05 90 */	addi r3, r30, 0x590
/* 80D2DE20  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D2DE24  4B 2D F8 B5 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D2DE28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2DE2C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2DE30  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D2DE34  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D2DE38  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D2DE3C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D2DE40  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D2DE44  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2DE48  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80D2DE4C  4B 2D FE 79 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D2DE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2DE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2DE58  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D2DE5C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80D2DE60  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D2DE64  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80D2DE68  38 60 00 01 */	li r3, 1
/* 80D2DE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2DE70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2DE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2DE78  7C 08 03 A6 */	mtlr r0
/* 80D2DE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2DE80  4E 80 00 20 */	blr 
