lbl_8047B324:
/* 8047B324  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047B328  7C 08 02 A6 */	mflr r0
/* 8047B32C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047B330  39 61 00 20 */	addi r11, r1, 0x20
/* 8047B334  4B EE 6E A9 */	bl _savegpr_29
/* 8047B338  7C 7E 1B 78 */	mr r30, r3
/* 8047B33C  3C 60 80 48 */	lis r3, lit_3770@ha /* 0x8047D810@ha */
/* 8047B340  3B E3 D8 10 */	addi r31, r3, lit_3770@l /* 0x8047D810@l */
/* 8047B344  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 8047B348  7C 00 07 75 */	extsb. r0, r0
/* 8047B34C  40 82 00 0C */	bne lbl_8047B358
/* 8047B350  38 60 00 01 */	li r3, 1
/* 8047B354  48 00 01 98 */	b lbl_8047B4EC
lbl_8047B358:
/* 8047B358  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8047B35C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8047B360  38 80 00 10 */	li r4, 0x10
/* 8047B364  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8047B368  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8047B36C  4B D2 84 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8047B370  3C 60 80 48 */	lis r3, l_HIO@ha /* 0x8047D9D8@ha */
/* 8047B374  3B A3 D9 D8 */	addi r29, r3, l_HIO@l /* 0x8047D9D8@l */
/* 8047B378  A8 7D 00 10 */	lha r3, 0x10(r29)
/* 8047B37C  7C 60 07 35 */	extsh. r0, r3
/* 8047B380  41 82 00 18 */	beq lbl_8047B398
/* 8047B384  88 1E 10 38 */	lbz r0, 0x1038(r30)
/* 8047B388  7C 00 07 75 */	extsb. r0, r0
/* 8047B38C  40 82 00 4C */	bne lbl_8047B3D8
/* 8047B390  2C 03 00 01 */	cmpwi r3, 1
/* 8047B394  40 82 00 44 */	bne lbl_8047B3D8
lbl_8047B398:
/* 8047B398  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8047B39C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8047B3A0  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 8047B3A4  80 84 00 04 */	lwz r4, 4(r4)
/* 8047B3A8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8047B3AC  4B D2 99 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8047B3B0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8047B3B4  4B B9 29 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8047B3B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8047B3BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8047B3C0  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8047B3C4  80 84 00 04 */	lwz r4, 4(r4)
/* 8047B3C8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8047B3CC  4B D2 99 D5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8047B3D0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8047B3D4  4B B9 28 F1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_8047B3D8:
/* 8047B3D8  A8 7D 00 10 */	lha r3, 0x10(r29)
/* 8047B3DC  7C 60 07 35 */	extsh. r0, r3
/* 8047B3E0  41 82 01 08 */	beq lbl_8047B4E8
/* 8047B3E4  88 1E 10 38 */	lbz r0, 0x1038(r30)
/* 8047B3E8  7C 00 07 75 */	extsb. r0, r0
/* 8047B3EC  40 82 00 0C */	bne lbl_8047B3F8
/* 8047B3F0  2C 03 00 02 */	cmpwi r3, 2
/* 8047B3F4  40 82 00 F4 */	bne lbl_8047B4E8
lbl_8047B3F8:
/* 8047B3F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8047B3FC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8047B400  38 80 00 00 */	li r4, 0
/* 8047B404  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8047B408  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8047B40C  4B D2 83 B9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8047B410  80 1F 00 08 */	lwz r0, 8(r31)
/* 8047B414  90 01 00 0C */	stw r0, 0xc(r1)
/* 8047B418  38 00 00 B4 */	li r0, 0xb4
/* 8047B41C  98 01 00 0C */	stb r0, 0xc(r1)
/* 8047B420  98 01 00 0D */	stb r0, 0xd(r1)
/* 8047B424  98 01 00 0E */	stb r0, 0xe(r1)
/* 8047B428  38 7E 10 3C */	addi r3, r30, 0x103c
/* 8047B42C  38 80 00 14 */	li r4, 0x14
/* 8047B430  38 A1 00 0C */	addi r5, r1, 0xc
/* 8047B434  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8047B438  4B B9 7A 05 */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8047B43C  38 7E 10 3C */	addi r3, r30, 0x103c
/* 8047B440  81 9E 10 3C */	lwz r12, 0x103c(r30)
/* 8047B444  81 8C 00 08 */	lwz r12, 8(r12)
/* 8047B448  7D 89 03 A6 */	mtctr r12
/* 8047B44C  4E 80 04 21 */	bctrl 
/* 8047B450  1C 83 00 14 */	mulli r4, r3, 0x14
/* 8047B454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047B458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047B45C  3B A3 5F 64 */	addi r29, r3, 0x5f64
/* 8047B460  3C 64 00 01 */	addis r3, r4, 1
/* 8047B464  38 63 61 54 */	addi r3, r3, 0x6154
/* 8047B468  7C 7D 1A 14 */	add r3, r29, r3
/* 8047B46C  38 9E 10 3C */	addi r4, r30, 0x103c
/* 8047B470  4B B9 92 C9 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 8047B474  88 1E 10 38 */	lbz r0, 0x1038(r30)
/* 8047B478  7C 00 07 75 */	extsb. r0, r0
/* 8047B47C  41 82 00 6C */	beq lbl_8047B4E8
/* 8047B480  C0 3E 14 E8 */	lfs f1, 0x14e8(r30)
/* 8047B484  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8047B488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047B48C  40 81 00 5C */	ble lbl_8047B4E8
/* 8047B490  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8047B494  90 01 00 08 */	stw r0, 8(r1)
/* 8047B498  38 00 00 B4 */	li r0, 0xb4
/* 8047B49C  98 01 00 08 */	stb r0, 8(r1)
/* 8047B4A0  98 01 00 09 */	stb r0, 9(r1)
/* 8047B4A4  98 01 00 0A */	stb r0, 0xa(r1)
/* 8047B4A8  38 7E 12 98 */	addi r3, r30, 0x1298
/* 8047B4AC  38 80 00 14 */	li r4, 0x14
/* 8047B4B0  38 A1 00 08 */	addi r5, r1, 8
/* 8047B4B4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8047B4B8  4B B9 79 85 */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8047B4BC  38 7E 12 98 */	addi r3, r30, 0x1298
/* 8047B4C0  81 9E 12 98 */	lwz r12, 0x1298(r30)
/* 8047B4C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8047B4C8  7D 89 03 A6 */	mtctr r12
/* 8047B4CC  4E 80 04 21 */	bctrl 
/* 8047B4D0  1C 63 00 14 */	mulli r3, r3, 0x14
/* 8047B4D4  3C 63 00 01 */	addis r3, r3, 1
/* 8047B4D8  38 63 61 54 */	addi r3, r3, 0x6154
/* 8047B4DC  7C 7D 1A 14 */	add r3, r29, r3
/* 8047B4E0  38 9E 12 98 */	addi r4, r30, 0x1298
/* 8047B4E4  4B B9 92 55 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_8047B4E8:
/* 8047B4E8  38 60 00 01 */	li r3, 1
lbl_8047B4EC:
/* 8047B4EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8047B4F0  4B EE 6D 39 */	bl _restgpr_29
/* 8047B4F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047B4F8  7C 08 03 A6 */	mtlr r0
/* 8047B4FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8047B500  4E 80 00 20 */	blr 
