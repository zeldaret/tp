lbl_806AA228:
/* 806AA228  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806AA22C  7C 08 02 A6 */	mflr r0
/* 806AA230  90 01 00 44 */	stw r0, 0x44(r1)
/* 806AA234  39 61 00 40 */	addi r11, r1, 0x40
/* 806AA238  4B CB 7F 94 */	b _savegpr_25
/* 806AA23C  7C 79 1B 78 */	mr r25, r3
/* 806AA240  3C 60 80 6B */	lis r3, lit_3764@ha
/* 806AA244  3B E3 D5 38 */	addi r31, r3, lit_3764@l
/* 806AA248  80 79 05 B4 */	lwz r3, 0x5b4(r25)
/* 806AA24C  83 C3 00 04 */	lwz r30, 4(r3)
/* 806AA250  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 806AA254  83 A3 00 04 */	lwz r29, 4(r3)
/* 806AA258  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AA25C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AA260  38 80 00 00 */	li r4, 0
/* 806AA264  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 806AA268  38 D9 01 0C */	addi r6, r25, 0x10c
/* 806AA26C  4B AF 95 58 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806AA270  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AA274  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AA278  80 9E 00 04 */	lwz r4, 4(r30)
/* 806AA27C  38 B9 01 0C */	addi r5, r25, 0x10c
/* 806AA280  4B AF AB 20 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806AA284  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806AA288  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806AA28C  80 9D 00 04 */	lwz r4, 4(r29)
/* 806AA290  38 B9 01 0C */	addi r5, r25, 0x10c
/* 806AA294  4B AF AB 0C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806AA298  83 9E 00 04 */	lwz r28, 4(r30)
/* 806AA29C  3B 40 00 00 */	li r26, 0
/* 806AA2A0  48 00 01 64 */	b lbl_806AA404
lbl_806AA2A4:
/* 806AA2A4  80 9C 00 60 */	lwz r4, 0x60(r28)
/* 806AA2A8  57 43 04 3F */	clrlwi. r3, r26, 0x10
/* 806AA2AC  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 806AA2B0  7F 64 00 2E */	lwzx r27, r4, r0
/* 806AA2B4  40 82 01 2C */	bne lbl_806AA3E0
/* 806AA2B8  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 806AA2BC  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA2C0  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 806AA2C4  7D 89 03 A6 */	mtctr r12
/* 806AA2C8  4E 80 04 21 */	bctrl 
/* 806AA2CC  88 19 06 92 */	lbz r0, 0x692(r25)
/* 806AA2D0  28 00 00 FF */	cmplwi r0, 0xff
/* 806AA2D4  41 82 00 78 */	beq lbl_806AA34C
/* 806AA2D8  38 00 00 01 */	li r0, 1
/* 806AA2DC  98 03 00 00 */	stb r0, 0(r3)
/* 806AA2E0  38 00 00 04 */	li r0, 4
/* 806AA2E4  98 03 00 01 */	stb r0, 1(r3)
/* 806AA2E8  38 00 00 05 */	li r0, 5
/* 806AA2EC  98 03 00 02 */	stb r0, 2(r3)
/* 806AA2F0  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 806AA2F4  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA2F8  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 806AA2FC  7D 89 03 A6 */	mtctr r12
/* 806AA300  4E 80 04 21 */	bctrl 
/* 806AA304  A0 03 00 00 */	lhz r0, 0(r3)
/* 806AA308  1C A0 00 03 */	mulli r5, r0, 3
/* 806AA30C  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 806AA310  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 806AA314  7C A0 2A 14 */	add r5, r0, r5
/* 806AA318  88 05 00 01 */	lbz r0, 1(r5)
/* 806AA31C  54 04 08 3C */	slwi r4, r0, 1
/* 806AA320  88 05 00 00 */	lbz r0, 0(r5)
/* 806AA324  54 00 20 36 */	slwi r0, r0, 4
/* 806AA328  7C 04 02 14 */	add r0, r4, r0
/* 806AA32C  B0 03 00 00 */	sth r0, 0(r3)
/* 806AA330  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 806AA334  38 80 00 00 */	li r4, 0
/* 806AA338  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA33C  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 806AA340  7D 89 03 A6 */	mtctr r12
/* 806AA344  4E 80 04 21 */	bctrl 
/* 806AA348  48 00 00 74 */	b lbl_806AA3BC
lbl_806AA34C:
/* 806AA34C  38 80 00 00 */	li r4, 0
/* 806AA350  98 83 00 00 */	stb r4, 0(r3)
/* 806AA354  38 00 00 01 */	li r0, 1
/* 806AA358  98 03 00 01 */	stb r0, 1(r3)
/* 806AA35C  98 83 00 02 */	stb r4, 2(r3)
/* 806AA360  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 806AA364  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA368  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 806AA36C  7D 89 03 A6 */	mtctr r12
/* 806AA370  4E 80 04 21 */	bctrl 
/* 806AA374  A0 03 00 00 */	lhz r0, 0(r3)
/* 806AA378  1C A0 00 03 */	mulli r5, r0, 3
/* 806AA37C  3C 80 80 43 */	lis r4, j3dZModeTable@ha
/* 806AA380  38 04 71 60 */	addi r0, r4, j3dZModeTable@l
/* 806AA384  7C 80 2A 14 */	add r4, r0, r5
/* 806AA388  88 04 00 01 */	lbz r0, 1(r4)
/* 806AA38C  54 05 08 3C */	slwi r5, r0, 1
/* 806AA390  88 04 00 00 */	lbz r0, 0(r4)
/* 806AA394  54 04 20 36 */	slwi r4, r0, 4
/* 806AA398  38 04 00 01 */	addi r0, r4, 1
/* 806AA39C  7C 05 02 14 */	add r0, r5, r0
/* 806AA3A0  B0 03 00 00 */	sth r0, 0(r3)
/* 806AA3A4  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 806AA3A8  38 80 00 01 */	li r4, 1
/* 806AA3AC  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA3B0  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 806AA3B4  7D 89 03 A6 */	mtctr r12
/* 806AA3B8  4E 80 04 21 */	bctrl 
lbl_806AA3BC:
/* 806AA3BC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806AA3C0  38 80 00 03 */	li r4, 3
/* 806AA3C4  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA3C8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806AA3CC  7D 89 03 A6 */	mtctr r12
/* 806AA3D0  4E 80 04 21 */	bctrl 
/* 806AA3D4  88 19 06 92 */	lbz r0, 0x692(r25)
/* 806AA3D8  98 03 00 03 */	stb r0, 3(r3)
/* 806AA3DC  48 00 00 24 */	b lbl_806AA400
lbl_806AA3E0:
/* 806AA3E0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 806AA3E4  38 80 00 03 */	li r4, 3
/* 806AA3E8  81 83 00 00 */	lwz r12, 0(r3)
/* 806AA3EC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806AA3F0  7D 89 03 A6 */	mtctr r12
/* 806AA3F4  4E 80 04 21 */	bctrl 
/* 806AA3F8  88 19 06 91 */	lbz r0, 0x691(r25)
/* 806AA3FC  98 03 00 03 */	stb r0, 3(r3)
lbl_806AA400:
/* 806AA400  3B 5A 00 01 */	addi r26, r26, 1
lbl_806AA404:
/* 806AA404  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 806AA408  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 806AA40C  7C 03 00 40 */	cmplw r3, r0
/* 806AA410  41 80 FE 94 */	blt lbl_806AA2A4
/* 806AA414  80 9E 00 04 */	lwz r4, 4(r30)
/* 806AA418  88 19 06 A0 */	lbz r0, 0x6a0(r25)
/* 806AA41C  54 00 10 3A */	slwi r0, r0, 2
/* 806AA420  7C 79 02 14 */	add r3, r25, r0
/* 806AA424  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 806AA428  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806AA42C  38 84 00 58 */	addi r4, r4, 0x58
/* 806AA430  4B 96 33 78 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806AA434  80 9E 00 04 */	lwz r4, 4(r30)
/* 806AA438  88 19 06 A0 */	lbz r0, 0x6a0(r25)
/* 806AA43C  54 00 10 3A */	slwi r0, r0, 2
/* 806AA440  7C 79 02 14 */	add r3, r25, r0
/* 806AA444  80 63 05 C4 */	lwz r3, 0x5c4(r3)
/* 806AA448  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806AA44C  38 84 00 58 */	addi r4, r4, 0x58
/* 806AA450  4B 96 32 88 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 806AA454  80 79 05 B4 */	lwz r3, 0x5b4(r25)
/* 806AA458  4B 96 6D 68 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806AA45C  88 19 06 A1 */	lbz r0, 0x6a1(r25)
/* 806AA460  28 00 00 00 */	cmplwi r0, 0
/* 806AA464  40 82 00 0C */	bne lbl_806AA470
/* 806AA468  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 806AA46C  4B 96 6D 54 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_806AA470:
/* 806AA470  88 19 06 A1 */	lbz r0, 0x6a1(r25)
/* 806AA474  28 00 00 00 */	cmplwi r0, 0
/* 806AA478  41 82 00 0C */	beq lbl_806AA484
/* 806AA47C  38 60 00 01 */	li r3, 1
/* 806AA480  48 00 01 10 */	b lbl_806AA590
lbl_806AA484:
/* 806AA484  C0 59 04 D8 */	lfs f2, 0x4d8(r25)
/* 806AA488  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AA48C  C0 79 04 D4 */	lfs f3, 0x4d4(r25)
/* 806AA490  EC 20 18 2A */	fadds f1, f0, f3
/* 806AA494  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 806AA498  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AA49C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AA4A0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806AA4A4  80 79 06 88 */	lwz r3, 0x688(r25)
/* 806AA4A8  38 80 00 01 */	li r4, 1
/* 806AA4AC  7F A5 EB 78 */	mr r5, r29
/* 806AA4B0  38 C1 00 08 */	addi r6, r1, 8
/* 806AA4B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806AA4B8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 806AA4BC  C0 99 07 94 */	lfs f4, 0x794(r25)
/* 806AA4C0  38 F9 07 EC */	addi r7, r25, 0x7ec
/* 806AA4C4  39 19 01 0C */	addi r8, r25, 0x10c
/* 806AA4C8  39 20 00 00 */	li r9, 0
/* 806AA4CC  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 806AA4D0  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806AA4D4  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806AA4D8  4B 98 44 38 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806AA4DC  90 79 06 88 */	stw r3, 0x688(r25)
/* 806AA4E0  88 19 06 A2 */	lbz r0, 0x6a2(r25)
/* 806AA4E4  28 00 00 00 */	cmplwi r0, 0
/* 806AA4E8  40 82 00 48 */	bne lbl_806AA530
/* 806AA4EC  80 79 06 84 */	lwz r3, 0x684(r25)
/* 806AA4F0  38 80 00 01 */	li r4, 1
/* 806AA4F4  7F C5 F3 78 */	mr r5, r30
/* 806AA4F8  38 C1 00 08 */	addi r6, r1, 8
/* 806AA4FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806AA500  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 806AA504  C0 79 04 D4 */	lfs f3, 0x4d4(r25)
/* 806AA508  C0 99 07 94 */	lfs f4, 0x794(r25)
/* 806AA50C  38 F9 07 EC */	addi r7, r25, 0x7ec
/* 806AA510  39 19 01 0C */	addi r8, r25, 0x10c
/* 806AA514  39 20 00 00 */	li r9, 0
/* 806AA518  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 806AA51C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806AA520  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806AA524  4B 98 43 EC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806AA528  90 79 06 84 */	stw r3, 0x684(r25)
/* 806AA52C  48 00 00 60 */	b lbl_806AA58C
lbl_806AA530:
/* 806AA530  C0 59 06 78 */	lfs f2, 0x678(r25)
/* 806AA534  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 806AA538  C0 79 06 74 */	lfs f3, 0x674(r25)
/* 806AA53C  EC 20 18 2A */	fadds f1, f0, f3
/* 806AA540  C0 19 06 70 */	lfs f0, 0x670(r25)
/* 806AA544  D0 01 00 08 */	stfs f0, 8(r1)
/* 806AA548  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806AA54C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806AA550  80 79 06 84 */	lwz r3, 0x684(r25)
/* 806AA554  38 80 00 01 */	li r4, 1
/* 806AA558  7F C5 F3 78 */	mr r5, r30
/* 806AA55C  38 C1 00 08 */	addi r6, r1, 8
/* 806AA560  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806AA564  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 806AA568  C0 99 07 94 */	lfs f4, 0x794(r25)
/* 806AA56C  38 F9 07 EC */	addi r7, r25, 0x7ec
/* 806AA570  39 19 01 0C */	addi r8, r25, 0x10c
/* 806AA574  39 20 00 00 */	li r9, 0
/* 806AA578  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 806AA57C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806AA580  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806AA584  4B 98 43 8C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806AA588  90 79 06 84 */	stw r3, 0x684(r25)
lbl_806AA58C:
/* 806AA58C  38 60 00 01 */	li r3, 1
lbl_806AA590:
/* 806AA590  39 61 00 40 */	addi r11, r1, 0x40
/* 806AA594  4B CB 7C 84 */	b _restgpr_25
/* 806AA598  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806AA59C  7C 08 03 A6 */	mtlr r0
/* 806AA5A0  38 21 00 40 */	addi r1, r1, 0x40
/* 806AA5A4  4E 80 00 20 */	blr 
