lbl_8079E1A4:
/* 8079E1A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8079E1A8  7C 08 02 A6 */	mflr r0
/* 8079E1AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8079E1B0  39 61 00 50 */	addi r11, r1, 0x50
/* 8079E1B4  4B BC 40 1D */	bl _savegpr_26
/* 8079E1B8  7C 7D 1B 78 */	mr r29, r3
/* 8079E1BC  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 8079E1C0  3B E3 68 24 */	addi r31, r3, lit_3903@l /* 0x807A6824@l */
/* 8079E1C4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8079E1C8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8079E1CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8079E1D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8079E1D4  38 80 00 00 */	li r4, 0
/* 8079E1D8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8079E1DC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8079E1E0  4B A0 55 E5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8079E1E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8079E1E8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8079E1EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 8079E1F0  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8079E1F4  4B A0 6B AD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8079E1F8  88 1D 07 E4 */	lbz r0, 0x7e4(r29)
/* 8079E1FC  7C 00 07 75 */	extsb. r0, r0
/* 8079E200  41 82 00 B4 */	beq lbl_8079E2B4
/* 8079E204  83 9E 00 04 */	lwz r28, 4(r30)
/* 8079E208  3B 40 00 00 */	li r26, 0
/* 8079E20C  48 00 00 98 */	b lbl_8079E2A4
lbl_8079E210:
/* 8079E210  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 8079E214  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8079E218  7F 63 00 2E */	lwzx r27, r3, r0
/* 8079E21C  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8079E220  38 80 00 00 */	li r4, 0
/* 8079E224  81 83 00 00 */	lwz r12, 0(r3)
/* 8079E228  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8079E22C  7D 89 03 A6 */	mtctr r12
/* 8079E230  4E 80 04 21 */	bctrl 
/* 8079E234  C0 1D 07 E8 */	lfs f0, 0x7e8(r29)
/* 8079E238  FC 00 00 1E */	fctiwz f0, f0
/* 8079E23C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8079E240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8079E244  B0 03 00 00 */	sth r0, 0(r3)
/* 8079E248  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8079E24C  38 80 00 00 */	li r4, 0
/* 8079E250  81 83 00 00 */	lwz r12, 0(r3)
/* 8079E254  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8079E258  7D 89 03 A6 */	mtctr r12
/* 8079E25C  4E 80 04 21 */	bctrl 
/* 8079E260  C0 1D 07 E8 */	lfs f0, 0x7e8(r29)
/* 8079E264  FC 00 00 1E */	fctiwz f0, f0
/* 8079E268  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8079E26C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8079E270  B0 03 00 02 */	sth r0, 2(r3)
/* 8079E274  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 8079E278  38 80 00 00 */	li r4, 0
/* 8079E27C  81 83 00 00 */	lwz r12, 0(r3)
/* 8079E280  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8079E284  7D 89 03 A6 */	mtctr r12
/* 8079E288  4E 80 04 21 */	bctrl 
/* 8079E28C  C0 1D 07 E8 */	lfs f0, 0x7e8(r29)
/* 8079E290  FC 00 00 1E */	fctiwz f0, f0
/* 8079E294  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8079E298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079E29C  B0 03 00 04 */	sth r0, 4(r3)
/* 8079E2A0  3B 5A 00 01 */	addi r26, r26, 1
lbl_8079E2A4:
/* 8079E2A4  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8079E2A8  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 8079E2AC  7C 03 00 40 */	cmplw r3, r0
/* 8079E2B0  41 80 FF 60 */	blt lbl_8079E210
lbl_8079E2B4:
/* 8079E2B4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8079E2B8  4B 87 2F 09 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 8079E2BC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8079E2C0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8079E2C4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8079E2C8  EC 21 00 2A */	fadds f1, f1, f0
/* 8079E2CC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8079E2D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8079E2D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8079E2D8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8079E2DC  38 61 00 10 */	addi r3, r1, 0x10
/* 8079E2E0  4B 87 F9 DD */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8079E2E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079E2E8  41 82 00 64 */	beq lbl_8079E34C
/* 8079E2EC  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 8079E2F0  C0 83 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 8079E2F4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8079E2F8  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 8079E2FC  38 80 00 01 */	li r4, 1
/* 8079E300  7F C5 F3 78 */	mr r5, r30
/* 8079E304  38 C1 00 10 */	addi r6, r1, 0x10
/* 8079E308  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8079E30C  3C E0 80 7A */	lis r7, l_HIO@ha /* 0x807A6DF4@ha */
/* 8079E310  38 E7 6D F4 */	addi r7, r7, l_HIO@l /* 0x807A6DF4@l */
/* 8079E314  C0 07 00 08 */	lfs f0, 8(r7)
/* 8079E318  EC 21 00 32 */	fmuls f1, f1, f0
/* 8079E31C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8079E320  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8079E324  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 8079E328  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 8079E32C  38 E7 00 14 */	addi r7, r7, 0x14
/* 8079E330  39 1D 01 0C */	addi r8, r29, 0x10c
/* 8079E334  39 20 00 00 */	li r9, 0
/* 8079E338  C0 BF 00 08 */	lfs f5, 8(r31)
/* 8079E33C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 8079E340  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 8079E344  4B 89 05 CD */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8079E348  90 7D 06 78 */	stw r3, 0x678(r29)
lbl_8079E34C:
/* 8079E34C  88 1D 07 20 */	lbz r0, 0x720(r29)
/* 8079E350  7C 00 07 75 */	extsb. r0, r0
/* 8079E354  41 82 00 CC */	beq lbl_8079E420
/* 8079E358  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 8079E35C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079E360  38 00 00 B4 */	li r0, 0xb4
/* 8079E364  98 01 00 0C */	stb r0, 0xc(r1)
/* 8079E368  98 01 00 0D */	stb r0, 0xd(r1)
/* 8079E36C  98 01 00 0E */	stb r0, 0xe(r1)
/* 8079E370  38 7D 07 28 */	addi r3, r29, 0x728
/* 8079E374  38 80 00 14 */	li r4, 0x14
/* 8079E378  38 A1 00 0C */	addi r5, r1, 0xc
/* 8079E37C  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8079E380  4B 87 4A BD */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8079E384  38 7D 07 28 */	addi r3, r29, 0x728
/* 8079E388  81 9D 07 28 */	lwz r12, 0x728(r29)
/* 8079E38C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8079E390  7D 89 03 A6 */	mtctr r12
/* 8079E394  4E 80 04 21 */	bctrl 
/* 8079E398  1C 83 00 14 */	mulli r4, r3, 0x14
/* 8079E39C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079E3A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079E3A4  3B 63 5F 64 */	addi r27, r3, 0x5f64
/* 8079E3A8  3C 64 00 01 */	addis r3, r4, 1
/* 8079E3AC  38 63 61 54 */	addi r3, r3, 0x6154
/* 8079E3B0  7C 7B 1A 14 */	add r3, r27, r3
/* 8079E3B4  38 9D 07 28 */	addi r4, r29, 0x728
/* 8079E3B8  4B 87 63 81 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 8079E3BC  88 1D 07 60 */	lbz r0, 0x760(r29)
/* 8079E3C0  7C 00 07 75 */	extsb. r0, r0
/* 8079E3C4  41 82 00 5C */	beq lbl_8079E420
/* 8079E3C8  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 8079E3CC  90 01 00 08 */	stw r0, 8(r1)
/* 8079E3D0  38 00 00 B4 */	li r0, 0xb4
/* 8079E3D4  98 01 00 08 */	stb r0, 8(r1)
/* 8079E3D8  98 01 00 09 */	stb r0, 9(r1)
/* 8079E3DC  98 01 00 0A */	stb r0, 0xa(r1)
/* 8079E3E0  38 7D 07 68 */	addi r3, r29, 0x768
/* 8079E3E4  38 80 00 14 */	li r4, 0x14
/* 8079E3E8  38 A1 00 08 */	addi r5, r1, 8
/* 8079E3EC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8079E3F0  4B 87 4A 4D */	bl update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8079E3F4  38 7D 07 68 */	addi r3, r29, 0x768
/* 8079E3F8  81 9D 07 68 */	lwz r12, 0x768(r29)
/* 8079E3FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8079E400  7D 89 03 A6 */	mtctr r12
/* 8079E404  4E 80 04 21 */	bctrl 
/* 8079E408  1C 63 00 14 */	mulli r3, r3, 0x14
/* 8079E40C  3C 63 00 01 */	addis r3, r3, 1
/* 8079E410  38 63 61 54 */	addi r3, r3, 0x6154
/* 8079E414  7C 7B 1A 14 */	add r3, r27, r3
/* 8079E418  38 9D 07 68 */	addi r4, r29, 0x768
/* 8079E41C  4B 87 63 1D */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_8079E420:
/* 8079E420  38 60 00 01 */	li r3, 1
/* 8079E424  39 61 00 50 */	addi r11, r1, 0x50
/* 8079E428  4B BC 3D F5 */	bl _restgpr_26
/* 8079E42C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8079E430  7C 08 03 A6 */	mtlr r0
/* 8079E434  38 21 00 50 */	addi r1, r1, 0x50
/* 8079E438  4E 80 00 20 */	blr 
