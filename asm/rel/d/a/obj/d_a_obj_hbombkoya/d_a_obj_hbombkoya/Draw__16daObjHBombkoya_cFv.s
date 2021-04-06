lbl_80C1C098:
/* 80C1C098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C09C  7C 08 02 A6 */	mflr r0
/* 80C1C0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1C0A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1C0AC  7C 7F 1B 78 */	mr r31, r3
/* 80C1C0B0  88 03 06 20 */	lbz r0, 0x620(r3)
/* 80C1C0B4  28 00 00 00 */	cmplwi r0, 0
/* 80C1C0B8  41 82 00 98 */	beq lbl_80C1C150
/* 80C1C0BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C1C0C0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C1C0C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1C0C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1C0CC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1C0D0  7C 05 07 74 */	extsb r5, r0
/* 80C1C0D4  4B 41 92 8D */	bl isSwitch__10dSv_info_cCFii
/* 80C1C0D8  2C 03 00 00 */	cmpwi r3, 0
/* 80C1C0DC  40 82 00 74 */	bne lbl_80C1C150
/* 80C1C0E0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1C0E4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C1C0E8  38 80 00 10 */	li r4, 0x10
/* 80C1C0EC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C1C0F0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C1C0F4  4B 58 76 D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C1C0F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C1C0FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C1C100  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 80C1C104  80 84 00 04 */	lwz r4, 4(r4)
/* 80C1C108  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C1C10C  4B 58 8C 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C1C110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1C114  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1C118  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C1C11C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C1C120  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C1C124  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C1C128  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C1C12C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C1C130  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 80C1C134  4B 3F 1B 91 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C1C138  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1C13C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1C140  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C1C144  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C1C148  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C1C14C  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_80C1C150:
/* 80C1C150  38 60 00 01 */	li r3, 1
/* 80C1C154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1C158  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1C15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C160  7C 08 03 A6 */	mtlr r0
/* 80C1C164  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C168  4E 80 00 20 */	blr 
