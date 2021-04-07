lbl_8086C214:
/* 8086C214  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8086C218  7C 08 02 A6 */	mflr r0
/* 8086C21C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8086C220  39 61 00 20 */	addi r11, r1, 0x20
/* 8086C224  4B AF 5F B1 */	bl _savegpr_27
/* 8086C228  7C 7F 1B 78 */	mr r31, r3
/* 8086C22C  C0 23 04 EC */	lfs f1, 0x4ec(r3)
/* 8086C230  3C 60 80 87 */	lis r3, lit_3871@ha /* 0x808700A0@ha */
/* 8086C234  C0 03 00 A0 */	lfs f0, lit_3871@l(r3)  /* 0x808700A0@l */
/* 8086C238  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086C23C  40 81 00 24 */	ble lbl_8086C260
/* 8086C240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086C244  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086C248  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8086C24C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8086C250  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8086C254  90 03 00 48 */	stw r0, 0x48(r3)
/* 8086C258  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8086C25C  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_8086C260:
/* 8086C260  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8086C264  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8086C268  3C 80 80 87 */	lis r4, ArcIX_A_crwaku_model@ha /* 0x808709C8@ha */
/* 8086C26C  38 84 09 C8 */	addi r4, r4, ArcIX_A_crwaku_model@l /* 0x808709C8@l */
/* 8086C270  80 84 00 00 */	lwz r4, 0(r4)
/* 8086C274  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C278  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8086C27C  4B 93 8B 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C280  3C 60 80 87 */	lis r3, ArcIX_A_crwaku_model@ha /* 0x808709C8@ha */
/* 8086C284  38 63 09 C8 */	addi r3, r3, ArcIX_A_crwaku_model@l /* 0x808709C8@l */
/* 8086C288  80 63 00 00 */	lwz r3, 0(r3)
/* 8086C28C  4B 7A 1A 39 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8086C290  3B 60 00 00 */	li r27, 0
/* 8086C294  3B C0 00 00 */	li r30, 0
/* 8086C298  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8086C29C  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
lbl_8086C2A0:
/* 8086C2A0  3B 9E 42 90 */	addi r28, r30, 0x4290
/* 8086C2A4  7C 9F E0 2E */	lwzx r4, r31, r28
/* 8086C2A8  28 04 00 00 */	cmplwi r4, 0
/* 8086C2AC  41 82 00 1C */	beq lbl_8086C2C8
/* 8086C2B0  7F A3 EB 78 */	mr r3, r29
/* 8086C2B4  80 84 00 04 */	lwz r4, 4(r4)
/* 8086C2B8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8086C2BC  4B 93 8A E5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8086C2C0  7C 7F E0 2E */	lwzx r3, r31, r28
/* 8086C2C4  4B 7A 1A 01 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_8086C2C8:
/* 8086C2C8  3B 7B 00 01 */	addi r27, r27, 1
/* 8086C2CC  2C 1B 00 64 */	cmpwi r27, 0x64
/* 8086C2D0  3B DE 00 68 */	addi r30, r30, 0x68
/* 8086C2D4  41 80 FF CC */	blt lbl_8086C2A0
/* 8086C2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086C2DC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086C2E0  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 8086C2E4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8086C2E8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8086C2EC  90 03 00 48 */	stw r0, 0x48(r3)
/* 8086C2F0  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 8086C2F4  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8086C2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8086C2FC  4B AF 5F 25 */	bl _restgpr_27
/* 8086C300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8086C304  7C 08 03 A6 */	mtlr r0
/* 8086C308  38 21 00 20 */	addi r1, r1, 0x20
/* 8086C30C  4E 80 00 20 */	blr 
