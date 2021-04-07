lbl_80BC3DB0:
/* 80BC3DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC3DB4  7C 08 02 A6 */	mflr r0
/* 80BC3DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC3DC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC3DC4  7C 7F 1B 78 */	mr r31, r3
/* 80BC3DC8  88 03 07 2B */	lbz r0, 0x72b(r3)
/* 80BC3DCC  28 00 00 00 */	cmplwi r0, 0
/* 80BC3DD0  40 82 00 A0 */	bne lbl_80BC3E70
/* 80BC3DD4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC3DD8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC3DDC  38 80 00 10 */	li r4, 0x10
/* 80BC3DE0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BC3DE4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BC3DE8  4B 5D F9 DD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BC3DEC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BC3DF0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BC3DF4  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC3DF8  54 00 10 3A */	slwi r0, r0, 2
/* 80BC3DFC  7C 9F 02 14 */	add r4, r31, r0
/* 80BC3E00  80 84 05 A8 */	lwz r4, 0x5a8(r4)
/* 80BC3E04  80 84 00 04 */	lwz r4, 4(r4)
/* 80BC3E08  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BC3E0C  4B 5E 0F 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BC3E10  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC3E14  54 00 10 3A */	slwi r0, r0, 2
/* 80BC3E18  7C 7F 02 14 */	add r3, r31, r0
/* 80BC3E1C  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC3E20  4B 5E 8F 05 */	bl dKy_bg_MAxx_proc__FPv
/* 80BC3E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3E28  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3E2C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BC3E30  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BC3E34  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BC3E38  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80BC3E3C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BC3E40  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BC3E44  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC3E48  54 00 10 3A */	slwi r0, r0, 2
/* 80BC3E4C  7C 7F 02 14 */	add r3, r31, r0
/* 80BC3E50  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC3E54  4B 44 9E 71 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BC3E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3E60  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BC3E64  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80BC3E68  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BC3E6C  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_80BC3E70:
/* 80BC3E70  38 60 00 01 */	li r3, 1
/* 80BC3E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3E78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC3E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3E80  7C 08 03 A6 */	mtlr r0
/* 80BC3E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3E88  4E 80 00 20 */	blr 
