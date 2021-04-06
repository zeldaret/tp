lbl_80D17230:
/* 80D17230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D17234  7C 08 02 A6 */	mflr r0
/* 80D17238  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1723C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D17240  93 C1 00 08 */	stw r30, 8(r1)
/* 80D17244  7C 7F 1B 78 */	mr r31, r3
/* 80D17248  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D1724C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D17250  38 80 00 10 */	li r4, 0x10
/* 80D17254  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D17258  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D1725C  4B 48 C5 69 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D17260  7F E3 FB 78 */	mr r3, r31
/* 80D17264  48 00 01 11 */	bl checkLODModel__16daObjTobyHouse_cFv
/* 80D17268  2C 03 00 00 */	cmpwi r3, 0
/* 80D1726C  41 82 00 60 */	beq lbl_80D172CC
/* 80D17270  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D17274  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D17278  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80D1727C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D17280  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D17284  4B 48 DB 1D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D17288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1728C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D17290  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D17294  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D17298  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D1729C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D172A0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D172A4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D172A8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D172AC  4B 2F 6A 19 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D172B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D172B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D172B8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D172BC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D172C0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D172C4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D172C8  48 00 00 90 */	b lbl_80D17358
lbl_80D172CC:
/* 80D172CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D172D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D172D4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D172D8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D172DC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D172E0  4B 48 DA C1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D172E4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D172E8  28 03 00 00 */	cmplwi r3, 0
/* 80D172EC  41 82 00 14 */	beq lbl_80D17300
/* 80D172F0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D172F4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D172F8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D172FC  4B 2F 66 D1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80D17300:
/* 80D17300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D17304  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D17308  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D1730C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80D17310  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80D17314  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D17318  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D1731C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D17320  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D17324  4B 2F 69 A1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D17328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1732C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D17330  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D17334  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D17338  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D1733C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D17340  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D17344  80 63 00 04 */	lwz r3, 4(r3)
/* 80D17348  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D1734C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D17350  38 00 00 00 */	li r0, 0
/* 80D17354  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80D17358:
/* 80D17358  38 60 00 01 */	li r3, 1
/* 80D1735C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D17360  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D17364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D17368  7C 08 03 A6 */	mtlr r0
/* 80D1736C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D17370  4E 80 00 20 */	blr 
