lbl_8049F39C:
/* 8049F39C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049F3A0  7C 08 02 A6 */	mflr r0
/* 8049F3A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F3A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F3AC  4B EC 2E 31 */	bl _savegpr_29
/* 8049F3B0  7C 7F 1B 78 */	mr r31, r3
/* 8049F3B4  80 03 09 64 */	lwz r0, 0x964(r3)
/* 8049F3B8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8049F3BC  40 82 01 50 */	bne lbl_8049F50C
/* 8049F3C0  3B A0 00 00 */	li r29, 0
/* 8049F3C4  48 00 00 B4 */	b lbl_8049F478
lbl_8049F3C8:
/* 8049F3C8  7C 7F EA 14 */	add r3, r31, r29
/* 8049F3CC  88 03 05 FA */	lbz r0, 0x5fa(r3)
/* 8049F3D0  28 00 00 00 */	cmplwi r0, 0
/* 8049F3D4  41 82 00 A0 */	beq lbl_8049F474
/* 8049F3D8  57 A0 10 3A */	slwi r0, r29, 2
/* 8049F3DC  7F DF 02 14 */	add r30, r31, r0
/* 8049F3E0  80 1E 06 C0 */	lwz r0, 0x6c0(r30)
/* 8049F3E4  28 00 00 00 */	cmplwi r0, 0
/* 8049F3E8  41 82 00 54 */	beq lbl_8049F43C
/* 8049F3EC  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 8049F3F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049F3F4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8049F3F8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8049F3FC  38 81 00 0C */	addi r4, r1, 0xc
/* 8049F400  4B B7 A3 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8049F404  90 7E 06 C0 */	stw r3, 0x6c0(r30)
/* 8049F408  80 9E 06 C0 */	lwz r4, 0x6c0(r30)
/* 8049F40C  28 04 00 00 */	cmplwi r4, 0
/* 8049F410  40 82 00 18 */	bne lbl_8049F428
/* 8049F414  7F E3 FB 78 */	mr r3, r31
/* 8049F418  7F A4 EB 78 */	mr r4, r29
/* 8049F41C  48 00 02 F5 */	bl pushLockList__13daBoomerang_cFi
/* 8049F420  3B BD FF FF */	addi r29, r29, -1
/* 8049F424  48 00 00 50 */	b lbl_8049F474
lbl_8049F428:
/* 8049F428  38 7F 05 98 */	addi r3, r31, 0x598
/* 8049F42C  38 84 05 38 */	addi r4, r4, 0x538
/* 8049F430  7F A5 EB 78 */	mr r5, r29
/* 8049F434  4B FF FA 95 */	bl setSight__19daBoomerang_sight_cFPC4cXyzi
/* 8049F438  48 00 00 3C */	b lbl_8049F474
lbl_8049F43C:
/* 8049F43C  88 03 07 18 */	lbz r0, 0x718(r3)
/* 8049F440  28 00 00 00 */	cmplwi r0, 0
/* 8049F444  41 82 00 20 */	beq lbl_8049F464
/* 8049F448  38 7F 05 98 */	addi r3, r31, 0x598
/* 8049F44C  1C 9D 00 0C */	mulli r4, r29, 0xc
/* 8049F450  38 84 06 DC */	addi r4, r4, 0x6dc
/* 8049F454  7C 9F 22 14 */	add r4, r31, r4
/* 8049F458  7F A5 EB 78 */	mr r5, r29
/* 8049F45C  4B FF FA 6D */	bl setSight__19daBoomerang_sight_cFPC4cXyzi
/* 8049F460  48 00 00 14 */	b lbl_8049F474
lbl_8049F464:
/* 8049F464  38 7F 05 98 */	addi r3, r31, 0x598
/* 8049F468  38 80 00 00 */	li r4, 0
/* 8049F46C  7F A5 EB 78 */	mr r5, r29
/* 8049F470  4B FF FA 59 */	bl setSight__19daBoomerang_sight_cFPC4cXyzi
lbl_8049F474:
/* 8049F474  3B BD 00 01 */	addi r29, r29, 1
lbl_8049F478:
/* 8049F478  2C 1D 00 05 */	cmpwi r29, 5
/* 8049F47C  41 80 FF 4C */	blt lbl_8049F3C8
/* 8049F480  88 1F 05 FF */	lbz r0, 0x5ff(r31)
/* 8049F484  28 00 00 00 */	cmplwi r0, 0
/* 8049F488  41 82 00 5C */	beq lbl_8049F4E4
/* 8049F48C  80 1F 06 D8 */	lwz r0, 0x6d8(r31)
/* 8049F490  28 00 00 00 */	cmplwi r0, 0
/* 8049F494  41 82 00 20 */	beq lbl_8049F4B4
/* 8049F498  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 8049F49C  90 01 00 08 */	stw r0, 8(r1)
/* 8049F4A0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8049F4A4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8049F4A8  38 81 00 08 */	addi r4, r1, 8
/* 8049F4AC  4B B7 A3 4D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8049F4B0  90 7F 06 D8 */	stw r3, 0x6d8(r31)
lbl_8049F4B4:
/* 8049F4B4  80 9F 06 D8 */	lwz r4, 0x6d8(r31)
/* 8049F4B8  28 04 00 00 */	cmplwi r4, 0
/* 8049F4BC  41 82 00 18 */	beq lbl_8049F4D4
/* 8049F4C0  38 7F 05 98 */	addi r3, r31, 0x598
/* 8049F4C4  38 84 05 38 */	addi r4, r4, 0x538
/* 8049F4C8  38 A0 00 05 */	li r5, 5
/* 8049F4CC  4B FF F9 FD */	bl setSight__19daBoomerang_sight_cFPC4cXyzi
/* 8049F4D0  48 00 00 14 */	b lbl_8049F4E4
lbl_8049F4D4:
/* 8049F4D4  38 7F 05 98 */	addi r3, r31, 0x598
/* 8049F4D8  38 80 00 00 */	li r4, 0
/* 8049F4DC  38 A0 00 05 */	li r5, 5
/* 8049F4E0  4B FF F9 E9 */	bl setSight__19daBoomerang_sight_cFPC4cXyzi
lbl_8049F4E4:
/* 8049F4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049F4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049F4EC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8049F4F0  28 00 00 00 */	cmplwi r0, 0
/* 8049F4F4  40 82 00 18 */	bne lbl_8049F50C
/* 8049F4F8  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8049F4FC  38 83 02 3C */	addi r4, r3, 0x23c
/* 8049F500  38 A3 02 40 */	addi r5, r3, 0x240
/* 8049F504  38 DF 05 98 */	addi r6, r31, 0x598
/* 8049F508  4B BB 72 8D */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_8049F50C:
/* 8049F50C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8049F510  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8049F514  38 80 00 00 */	li r4, 0
/* 8049F518  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8049F51C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8049F520  4B D0 42 A5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8049F524  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8049F528  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8049F52C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 8049F530  80 84 00 04 */	lwz r4, 4(r4)
/* 8049F534  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8049F538  4B D0 58 69 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8049F53C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8049F540  4B B6 E7 85 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8049F544  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8049F548  4B B9 24 05 */	bl entry__10daMirror_cFP8J3DModel
/* 8049F54C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8049F550  28 00 00 00 */	cmplwi r0, 0
/* 8049F554  41 82 00 30 */	beq lbl_8049F584
/* 8049F558  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8049F55C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8049F560  80 9F 05 6C */	lwz r4, 0x56c(r31)
/* 8049F564  80 84 00 04 */	lwz r4, 4(r4)
/* 8049F568  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8049F56C  4B D0 58 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8049F570  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8049F574  4B B6 E7 F1 */	bl mDoExt_modelEntryDL__FP8J3DModel
/* 8049F578  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8049F57C  4B B9 23 D1 */	bl entry__10daMirror_cFP8J3DModel
/* 8049F580  48 00 00 38 */	b lbl_8049F5B8
lbl_8049F584:
/* 8049F584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049F588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049F58C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8049F590  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8049F594  41 82 00 24 */	beq lbl_8049F5B8
/* 8049F598  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8049F59C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8049F5A0  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 8049F5A4  80 84 00 04 */	lwz r4, 4(r4)
/* 8049F5A8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8049F5AC  4B D0 57 F5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8049F5B0  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 8049F5B4  4B B6 E7 11 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_8049F5B8:
/* 8049F5B8  38 60 00 01 */	li r3, 1
/* 8049F5BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049F5C0  4B EC 2C 69 */	bl _restgpr_29
/* 8049F5C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049F5C8  7C 08 03 A6 */	mtlr r0
/* 8049F5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8049F5D0  4E 80 00 20 */	blr 
