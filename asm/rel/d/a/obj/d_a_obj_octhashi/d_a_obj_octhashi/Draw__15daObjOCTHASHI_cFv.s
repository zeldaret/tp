lbl_80CA636C:
/* 80CA636C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA6370  7C 08 02 A6 */	mflr r0
/* 80CA6374  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA6378  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA637C  4B 6B BE 5D */	bl _savegpr_28
/* 80CA6380  7C 7F 1B 78 */	mr r31, r3
/* 80CA6384  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA6388  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA638C  38 80 00 10 */	li r4, 0x10
/* 80CA6390  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CA6394  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CA6398  4B 4F D4 2D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CA639C  3B 80 00 00 */	li r28, 0
/* 80CA63A0  3B C0 00 00 */	li r30, 0
/* 80CA63A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CA63A8  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CA63AC  48 00 00 24 */	b lbl_80CA63D0
lbl_80CA63B0:
/* 80CA63B0  7F A3 EB 78 */	mr r3, r29
/* 80CA63B4  38 1E 07 80 */	addi r0, r30, 0x780
/* 80CA63B8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80CA63BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CA63C0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CA63C4  4B 4F E9 DD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CA63C8  3B 9C 00 01 */	addi r28, r28, 1
/* 80CA63CC  3B DE 00 04 */	addi r30, r30, 4
lbl_80CA63D0:
/* 80CA63D0  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA63D4  7C 1C 00 00 */	cmpw r28, r0
/* 80CA63D8  41 80 FF D8 */	blt lbl_80CA63B0
/* 80CA63DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA63E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA63E4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CA63E8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CA63EC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CA63F0  90 03 00 48 */	stw r0, 0x48(r3)
/* 80CA63F4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CA63F8  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80CA63FC  3B 80 00 00 */	li r28, 0
/* 80CA6400  3B C0 00 00 */	li r30, 0
/* 80CA6404  48 00 00 18 */	b lbl_80CA641C
lbl_80CA6408:
/* 80CA6408  38 1E 07 80 */	addi r0, r30, 0x780
/* 80CA640C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80CA6410  4B 36 78 B5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CA6414  3B 9C 00 01 */	addi r28, r28, 1
/* 80CA6418  3B DE 00 04 */	addi r30, r30, 4
lbl_80CA641C:
/* 80CA641C  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80CA6420  7C 1C 00 00 */	cmpw r28, r0
/* 80CA6424  41 80 FF E4 */	blt lbl_80CA6408
/* 80CA6428  38 60 00 01 */	li r3, 1
/* 80CA642C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6430  4B 6B BD F5 */	bl _restgpr_28
/* 80CA6434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA6438  7C 08 03 A6 */	mtlr r0
/* 80CA643C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA6440  4E 80 00 20 */	blr 
