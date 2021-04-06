lbl_8077F314:
/* 8077F314  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8077F318  7C 08 02 A6 */	mflr r0
/* 8077F31C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8077F320  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 8077F324  4B BE 2E AD */	bl _savegpr_26
/* 8077F328  7C 7F 1B 78 */	mr r31, r3
/* 8077F32C  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077F330  3B C3 0D C4 */	addi r30, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077F334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077F338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077F33C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8077F340  A8 7F 06 94 */	lha r3, 0x694(r31)
/* 8077F344  38 03 00 01 */	addi r0, r3, 1
/* 8077F348  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 8077F34C  38 60 00 00 */	li r3, 0
/* 8077F350  38 00 00 04 */	li r0, 4
/* 8077F354  7C 09 03 A6 */	mtctr r0
lbl_8077F358:
/* 8077F358  38 A3 06 A0 */	addi r5, r3, 0x6a0
/* 8077F35C  7C 9F 2A AE */	lhax r4, r31, r5
/* 8077F360  2C 04 00 00 */	cmpwi r4, 0
/* 8077F364  41 82 00 0C */	beq lbl_8077F370
/* 8077F368  38 04 FF FF */	addi r0, r4, -1
/* 8077F36C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8077F370:
/* 8077F370  38 63 00 02 */	addi r3, r3, 2
/* 8077F374  42 00 FF E4 */	bdnz lbl_8077F358
/* 8077F378  A8 7F 06 A8 */	lha r3, 0x6a8(r31)
/* 8077F37C  2C 03 00 00 */	cmpwi r3, 0
/* 8077F380  41 82 00 0C */	beq lbl_8077F38C
/* 8077F384  38 03 FF FF */	addi r0, r3, -1
/* 8077F388  B0 1F 06 A8 */	sth r0, 0x6a8(r31)
lbl_8077F38C:
/* 8077F38C  A8 7F 06 AA */	lha r3, 0x6aa(r31)
/* 8077F390  2C 03 00 00 */	cmpwi r3, 0
/* 8077F394  41 82 00 0C */	beq lbl_8077F3A0
/* 8077F398  38 03 FF FF */	addi r0, r3, -1
/* 8077F39C  B0 1F 06 AA */	sth r0, 0x6aa(r31)
lbl_8077F3A0:
/* 8077F3A0  7F E3 FB 78 */	mr r3, r31
/* 8077F3A4  4B FF EC CD */	bl action__FP10e_s1_class
/* 8077F3A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077F3AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077F3B0  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 8077F3B4  38 7B 3E C8 */	addi r3, r27, 0x3ec8
/* 8077F3B8  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077F3BC  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077F3C0  38 84 00 14 */	addi r4, r4, 0x14
/* 8077F3C4  4B BE 95 D1 */	bl strcmp
/* 8077F3C8  2C 03 00 00 */	cmpwi r3, 0
/* 8077F3CC  40 82 00 7C */	bne lbl_8077F448
/* 8077F3D0  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 8077F3D4  28 00 00 FE */	cmplwi r0, 0xfe
/* 8077F3D8  40 82 00 70 */	bne lbl_8077F448
/* 8077F3DC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8077F3E0  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 8077F3E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077F3E8  4C 40 13 82 */	cror 2, 0, 2
/* 8077F3EC  40 82 00 5C */	bne lbl_8077F448
/* 8077F3F0  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 8077F3F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077F3F8  4C 41 13 82 */	cror 2, 1, 2
/* 8077F3FC  40 82 00 4C */	bne lbl_8077F448
/* 8077F400  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8077F404  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077F40C  40 80 00 3C */	bge lbl_8077F448
/* 8077F410  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 8077F414  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8077F418  40 81 00 08 */	ble lbl_8077F420
/* 8077F41C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_8077F420:
/* 8077F420  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8077F424  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 8077F428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077F42C  40 81 00 0C */	ble lbl_8077F438
/* 8077F430  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8077F434  48 00 00 14 */	b lbl_8077F448
lbl_8077F438:
/* 8077F438  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 8077F43C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8077F440  40 80 00 08 */	bge lbl_8077F448
/* 8077F444  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
lbl_8077F448:
/* 8077F448  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 8077F44C  7F 64 DB 78 */	mr r4, r27
/* 8077F450  4B 8F 76 5D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8077F454  3B 40 00 00 */	li r26, 0
/* 8077F458  3B 80 00 00 */	li r28, 0
/* 8077F45C  A8 1F 06 96 */	lha r0, 0x696(r31)
/* 8077F460  2C 00 00 0A */	cmpwi r0, 0xa
/* 8077F464  40 82 02 C4 */	bne lbl_8077F728
/* 8077F468  38 61 01 38 */	addi r3, r1, 0x138
/* 8077F46C  4B 8F 81 11 */	bl __ct__11dBgS_GndChkFv
/* 8077F470  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F474  80 63 00 04 */	lwz r3, 4(r3)
/* 8077F478  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077F47C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F480  38 63 00 30 */	addi r3, r3, 0x30
/* 8077F484  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077F488  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077F48C  80 84 00 00 */	lwz r4, 0(r4)
/* 8077F490  4B BC 70 21 */	bl PSMTXCopy
/* 8077F494  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F498  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8077F49C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077F4A0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8077F4A4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077F4A8  38 81 00 98 */	addi r4, r1, 0x98
/* 8077F4AC  4B AF 1A 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077F4B0  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8077F4B4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8077F4B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8077F4BC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8077F4C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8077F4C4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8077F4C8  38 61 01 38 */	addi r3, r1, 0x138
/* 8077F4CC  38 81 00 98 */	addi r4, r1, 0x98
/* 8077F4D0  4B AE 88 59 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8077F4D4  7F 63 DB 78 */	mr r3, r27
/* 8077F4D8  38 81 01 38 */	addi r4, r1, 0x138
/* 8077F4DC  4B 8F 4F C5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8077F4E0  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8077F4E4  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8077F4E8  FC 20 08 18 */	frsp f1, f1
/* 8077F4EC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8077F4F0  41 82 01 0C */	beq lbl_8077F5FC
/* 8077F4F4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8077F4F8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8077F4FC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8077F500  EC 00 08 2A */	fadds f0, f0, f1
/* 8077F504  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8077F508  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 8077F50C  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8077F510  EC 01 00 2A */	fadds f0, f1, f0
/* 8077F514  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8077F518  38 61 01 38 */	addi r3, r1, 0x138
/* 8077F51C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8077F520  4B AE 87 ED */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8077F524  7F 63 DB 78 */	mr r3, r27
/* 8077F528  38 81 01 38 */	addi r4, r1, 0x138
/* 8077F52C  4B 8F 4F 75 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8077F530  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8077F534  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8077F538  FC 20 08 18 */	frsp f1, f1
/* 8077F53C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8077F540  41 82 00 38 */	beq lbl_8077F578
/* 8077F544  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8077F548  EC 21 00 28 */	fsubs f1, f1, f0
/* 8077F54C  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 8077F550  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8077F554  EC 42 00 28 */	fsubs f2, f2, f0
/* 8077F558  4B AE 81 1D */	bl cM_atan2s__Fff
/* 8077F55C  7C 03 00 D0 */	neg r0, r3
/* 8077F560  7C 1C 07 34 */	extsh r28, r0
/* 8077F564  2C 1C 30 00 */	cmpwi r28, 0x3000
/* 8077F568  41 81 00 0C */	bgt lbl_8077F574
/* 8077F56C  2C 1C D0 00 */	cmpwi r28, -12288
/* 8077F570  40 80 00 08 */	bge lbl_8077F578
lbl_8077F574:
/* 8077F574  3B 80 00 00 */	li r28, 0
lbl_8077F578:
/* 8077F578  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 8077F57C  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8077F580  EC 01 00 2A */	fadds f0, f1, f0
/* 8077F584  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8077F588  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8077F58C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8077F590  EC 01 00 2A */	fadds f0, f1, f0
/* 8077F594  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8077F598  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8077F59C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8077F5A0  38 61 01 38 */	addi r3, r1, 0x138
/* 8077F5A4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8077F5A8  4B AE 87 65 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8077F5AC  7F 63 DB 78 */	mr r3, r27
/* 8077F5B0  38 81 01 38 */	addi r4, r1, 0x138
/* 8077F5B4  4B 8F 4E ED */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8077F5B8  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8077F5BC  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8077F5C0  FC 20 08 18 */	frsp f1, f1
/* 8077F5C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8077F5C8  41 82 00 34 */	beq lbl_8077F5FC
/* 8077F5CC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8077F5D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8077F5D4  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 8077F5D8  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8077F5DC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8077F5E0  4B AE 80 95 */	bl cM_atan2s__Fff
/* 8077F5E4  7C 7A 07 34 */	extsh r26, r3
/* 8077F5E8  2C 1A 30 00 */	cmpwi r26, 0x3000
/* 8077F5EC  41 81 00 0C */	bgt lbl_8077F5F8
/* 8077F5F0  2C 1A D0 00 */	cmpwi r26, -12288
/* 8077F5F4  40 80 00 08 */	bge lbl_8077F5FC
lbl_8077F5F8:
/* 8077F5F8  3B 40 00 00 */	li r26, 0
lbl_8077F5FC:
/* 8077F5FC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8077F600  4B 8F 86 69 */	bl __ct__11dBgS_LinChkFv
/* 8077F604  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8077F608  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8077F60C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8077F610  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8077F614  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8077F618  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8077F61C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8077F620  EC 01 00 2A */	fadds f0, f1, f0
/* 8077F624  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8077F628  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F62C  80 63 00 04 */	lwz r3, 4(r3)
/* 8077F630  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F634  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8077F638  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8077F63C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8077F640  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077F644  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F648  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8077F64C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077F650  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077F654  80 84 00 00 */	lwz r4, 0(r4)
/* 8077F658  4B BC 6E 59 */	bl PSMTXCopy
/* 8077F65C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8077F660  38 81 00 74 */	addi r4, r1, 0x74
/* 8077F664  4B AF 18 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077F668  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8077F66C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8077F670  EC 01 00 2A */	fadds f0, f1, f0
/* 8077F674  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8077F678  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8077F67C  38 81 00 80 */	addi r4, r1, 0x80
/* 8077F680  38 A1 00 74 */	addi r5, r1, 0x74
/* 8077F684  7F E6 FB 78 */	mr r6, r31
/* 8077F688  4B 8F 86 DD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8077F68C  7F 63 DB 78 */	mr r3, r27
/* 8077F690  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8077F694  4B 8F 4D 21 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8077F698  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8077F69C  41 82 00 74 */	beq lbl_8077F710
/* 8077F6A0  38 61 00 38 */	addi r3, r1, 0x38
/* 8077F6A4  38 81 00 80 */	addi r4, r1, 0x80
/* 8077F6A8  38 A1 00 74 */	addi r5, r1, 0x74
/* 8077F6AC  4B AE 74 89 */	bl __mi__4cXyzCFRC3Vec
/* 8077F6B0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8077F6B4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8077F6B8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8077F6BC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8077F6C0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8077F6C4  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8077F6C8  4B AE 7F AD */	bl cM_atan2s__Fff
/* 8077F6CC  7C 64 1B 78 */	mr r4, r3
/* 8077F6D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8077F6D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8077F6D8  80 63 00 00 */	lwz r3, 0(r3)
/* 8077F6DC  4B 88 CD 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 8077F6E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F6E4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8077F6E8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8077F6EC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8077F6F0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8077F6F4  38 61 00 8C */	addi r3, r1, 0x8c
/* 8077F6F8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077F6FC  4B AF 17 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077F700  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8077F704  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077F708  7C 65 1B 78 */	mr r5, r3
/* 8077F70C  4B BC 79 85 */	bl PSVECAdd
lbl_8077F710:
/* 8077F710  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8077F714  38 80 FF FF */	li r4, -1
/* 8077F718  4B 8F 85 C5 */	bl __dt__11dBgS_LinChkFv
/* 8077F71C  38 61 01 38 */	addi r3, r1, 0x138
/* 8077F720  38 80 FF FF */	li r4, -1
/* 8077F724  4B 8F 7E CD */	bl __dt__11dBgS_GndChkFv
lbl_8077F728:
/* 8077F728  38 7F 06 B2 */	addi r3, r31, 0x6b2
/* 8077F72C  7F 84 E3 78 */	mr r4, r28
/* 8077F730  38 A0 00 01 */	li r5, 1
/* 8077F734  38 C0 04 00 */	li r6, 0x400
/* 8077F738  4B AF 0E D1 */	bl cLib_addCalcAngleS2__FPssss
/* 8077F73C  38 7F 06 B6 */	addi r3, r31, 0x6b6
/* 8077F740  7F 44 D3 78 */	mr r4, r26
/* 8077F744  38 A0 00 01 */	li r5, 1
/* 8077F748  38 C0 04 00 */	li r6, 0x400
/* 8077F74C  4B AF 0E BD */	bl cLib_addCalcAngleS2__FPssss
/* 8077F750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F758  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8077F75C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8077F760  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8077F764  4B BC 71 85 */	bl PSMTXTrans
/* 8077F768  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F76C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F770  A8 9F 06 B2 */	lha r4, 0x6b2(r31)
/* 8077F774  4B 88 CC 29 */	bl mDoMtx_XrotM__FPA4_fs
/* 8077F778  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F77C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F780  A8 9F 06 B6 */	lha r4, 0x6b6(r31)
/* 8077F784  4B 88 CD 49 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8077F788  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F78C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F790  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8077F794  4B 88 CC A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8077F798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F79C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F7A0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8077F7A4  4B 88 CB F9 */	bl mDoMtx_XrotM__FPA4_fs
/* 8077F7A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F7AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F7B0  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8077F7B4  4B 88 CD 19 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8077F7B8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8078138C@ha */
/* 8077F7BC  3B 83 13 8C */	addi r28, r3, l_HIO@l /* 0x8078138C@l */
/* 8077F7C0  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8077F7C4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8077F7C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8077F7CC  FC 40 08 90 */	fmr f2, f1
/* 8077F7D0  FC 60 08 90 */	fmr f3, f1
/* 8077F7D4  4B 88 D6 65 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8077F7D8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F7DC  83 63 00 04 */	lwz r27, 4(r3)
/* 8077F7E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077F7E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077F7E8  38 9B 00 24 */	addi r4, r27, 0x24
/* 8077F7EC  4B BC 6C C5 */	bl PSMTXCopy
/* 8077F7F0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8077F7F4  7C 03 07 74 */	extsb r3, r0
/* 8077F7F8  4B 8A D8 75 */	bl dComIfGp_getReverb__Fi
/* 8077F7FC  7C 65 1B 78 */	mr r5, r3
/* 8077F800  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F804  38 80 00 00 */	li r4, 0
/* 8077F808  4B 89 18 A9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8077F80C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F810  4B 89 19 DD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8077F814  7F E3 FB 78 */	mr r3, r31
/* 8077F818  4B FF F5 F9 */	bl anm_se_set__FP10e_s1_class
/* 8077F81C  7F E3 FB 78 */	mr r3, r31
/* 8077F820  4B FF FA 31 */	bl body_eff_set__FP10e_s1_class
/* 8077F824  7F E3 FB 78 */	mr r3, r31
/* 8077F828  4B FF ED F1 */	bl ke_set__FP10e_s1_class
/* 8077F82C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8077F830  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F834  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8077F838  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077F83C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077F840  80 84 00 00 */	lwz r4, 0(r4)
/* 8077F844  4B BC 6C 6D */	bl PSMTXCopy
/* 8077F848  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8077F84C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8077F850  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F854  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077F858  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8077F85C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077F860  38 9F 05 38 */	addi r4, r31, 0x538
/* 8077F864  4B AF 16 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077F868  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8077F86C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8077F870  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8077F874  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8077F878  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8077F87C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8077F880  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8077F884  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8077F888  EC 01 00 2A */	fadds f0, f1, f0
/* 8077F88C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8077F890  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F894  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8077F898  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8077F89C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8077F8A0  A8 1F 06 A8 */	lha r0, 0x6a8(r31)
/* 8077F8A4  2C 00 00 00 */	cmpwi r0, 0
/* 8077F8A8  41 82 00 0C */	beq lbl_8077F8B4
/* 8077F8AC  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 8077F8B0  D0 01 00 68 */	stfs f0, 0x68(r1)
lbl_8077F8B4:
/* 8077F8B4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8077F8B8  38 9F 05 38 */	addi r4, r31, 0x538
/* 8077F8BC  38 A1 00 68 */	addi r5, r1, 0x68
/* 8077F8C0  4B AE 72 25 */	bl __pl__4cXyzCFRC3Vec
/* 8077F8C4  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 8077F8C8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8077F8CC  4B AE FD 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 8077F8D0  38 7F 0A 34 */	addi r3, r31, 0xa34
/* 8077F8D4  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 8077F8D8  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8077F8DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8077F8E0  4B AE FE 29 */	bl SetR__8cM3dGSphFf
/* 8077F8E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8077F8E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8077F8EC  3B 43 23 3C */	addi r26, r3, 0x233c
/* 8077F8F0  7F 43 D3 78 */	mr r3, r26
/* 8077F8F4  38 9F 09 10 */	addi r4, r31, 0x910
/* 8077F8F8  4B AE 52 B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 8077F8FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077F900  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8077F904  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077F908  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8077F90C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8077F910  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F914  38 63 00 90 */	addi r3, r3, 0x90
/* 8077F918  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077F91C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077F920  80 84 00 00 */	lwz r4, 0(r4)
/* 8077F924  4B BC 6B 8D */	bl PSMTXCopy
/* 8077F928  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077F92C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077F930  4B AF 15 BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077F934  38 61 00 20 */	addi r3, r1, 0x20
/* 8077F938  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077F93C  38 A1 00 68 */	addi r5, r1, 0x68
/* 8077F940  4B AE 71 A5 */	bl __pl__4cXyzCFRC3Vec
/* 8077F944  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 8077F948  38 81 00 20 */	addi r4, r1, 0x20
/* 8077F94C  4B AE FC FD */	bl SetC__8cM3dGSphFRC4cXyz
/* 8077F950  38 7F 0B 6C */	addi r3, r31, 0xb6c
/* 8077F954  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8077F958  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8077F95C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8077F960  4B AE FD A9 */	bl SetR__8cM3dGSphFf
/* 8077F964  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8077F968  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F96C  38 63 00 60 */	addi r3, r3, 0x60
/* 8077F970  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077F974  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077F978  80 84 00 00 */	lwz r4, 0(r4)
/* 8077F97C  4B BC 6B 35 */	bl PSMTXCopy
/* 8077F980  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077F984  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077F988  4B AF 15 65 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077F98C  38 61 00 14 */	addi r3, r1, 0x14
/* 8077F990  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077F994  38 A1 00 68 */	addi r5, r1, 0x68
/* 8077F998  4B AE 71 4D */	bl __pl__4cXyzCFRC3Vec
/* 8077F99C  38 7F 0C A4 */	addi r3, r31, 0xca4
/* 8077F9A0  38 81 00 14 */	addi r4, r1, 0x14
/* 8077F9A4  4B AE FC A5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8077F9A8  38 7F 0C A4 */	addi r3, r31, 0xca4
/* 8077F9AC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8077F9B0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8077F9B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8077F9B8  4B AE FD 51 */	bl SetR__8cM3dGSphFf
/* 8077F9BC  7F 43 D3 78 */	mr r3, r26
/* 8077F9C0  38 9F 0A 48 */	addi r4, r31, 0xa48
/* 8077F9C4  4B AE 51 E5 */	bl Set__4cCcSFP8cCcD_Obj
/* 8077F9C8  7F 43 D3 78 */	mr r3, r26
/* 8077F9CC  38 9F 0B 80 */	addi r4, r31, 0xb80
/* 8077F9D0  4B AE 51 D9 */	bl Set__4cCcSFP8cCcD_Obj
/* 8077F9D4  88 7F 06 B9 */	lbz r3, 0x6b9(r31)
/* 8077F9D8  7C 60 07 75 */	extsb. r0, r3
/* 8077F9DC  41 82 00 D4 */	beq lbl_8077FAB0
/* 8077F9E0  7C 60 07 74 */	extsb r0, r3
/* 8077F9E4  2C 00 00 01 */	cmpwi r0, 1
/* 8077F9E8  40 82 00 24 */	bne lbl_8077FA0C
/* 8077F9EC  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8077F9F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F9F4  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8077F9F8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077F9FC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077FA00  80 84 00 00 */	lwz r4, 0(r4)
/* 8077FA04  4B BC 6A AD */	bl PSMTXCopy
/* 8077FA08  48 00 00 50 */	b lbl_8077FA58
lbl_8077FA0C:
/* 8077FA0C  2C 00 00 02 */	cmpwi r0, 2
/* 8077FA10  40 82 00 24 */	bne lbl_8077FA34
/* 8077FA14  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8077FA18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077FA1C  38 63 01 80 */	addi r3, r3, 0x180
/* 8077FA20  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077FA24  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077FA28  80 84 00 00 */	lwz r4, 0(r4)
/* 8077FA2C  4B BC 6A 85 */	bl PSMTXCopy
/* 8077FA30  48 00 00 28 */	b lbl_8077FA58
lbl_8077FA34:
/* 8077FA34  2C 00 00 03 */	cmpwi r0, 3
/* 8077FA38  40 82 00 20 */	bne lbl_8077FA58
/* 8077FA3C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8077FA40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077FA44  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8077FA48  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077FA4C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077FA50  80 84 00 00 */	lwz r4, 0(r4)
/* 8077FA54  4B BC 6A 5D */	bl PSMTXCopy
lbl_8077FA58:
/* 8077FA58  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077FA5C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8077FA60  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077FA64  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8077FA68  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077FA6C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077FA70  4B AF 14 7D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077FA74  38 00 00 00 */	li r0, 0
/* 8077FA78  98 1F 06 B9 */	stb r0, 0x6b9(r31)
/* 8077FA7C  88 1F 06 BA */	lbz r0, 0x6ba(r31)
/* 8077FA80  7C 00 07 75 */	extsb. r0, r0
/* 8077FA84  40 82 00 1C */	bne lbl_8077FAA0
/* 8077FA88  38 00 00 01 */	li r0, 1
/* 8077FA8C  98 1F 06 BA */	stb r0, 0x6ba(r31)
/* 8077FA90  38 7F 0C B8 */	addi r3, r31, 0xcb8
/* 8077FA94  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077FA98  4B 90 4F E1 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 8077FA9C  48 00 00 3C */	b lbl_8077FAD8
lbl_8077FAA0:
/* 8077FAA0  38 7F 0C B8 */	addi r3, r31, 0xcb8
/* 8077FAA4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077FAA8  4B 90 50 1D */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 8077FAAC  48 00 00 2C */	b lbl_8077FAD8
lbl_8077FAB0:
/* 8077FAB0  C0 3E 01 8C */	lfs f1, 0x18c(r30)
/* 8077FAB4  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 8077FAB8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8077FABC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8077FAC0  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8077FAC4  38 7F 0D DC */	addi r3, r31, 0xddc
/* 8077FAC8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077FACC  4B AE FB 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 8077FAD0  38 00 00 00 */	li r0, 0
/* 8077FAD4  98 1F 06 BA */	stb r0, 0x6ba(r31)
lbl_8077FAD8:
/* 8077FAD8  38 7F 0D DC */	addi r3, r31, 0xddc
/* 8077FADC  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 8077FAE0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8077FAE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8077FAE8  4B AE FC 21 */	bl SetR__8cM3dGSphFf
/* 8077FAEC  7F 43 D3 78 */	mr r3, r26
/* 8077FAF0  38 9F 0C B8 */	addi r4, r31, 0xcb8
/* 8077FAF4  4B AE 50 B5 */	bl Set__4cCcSFP8cCcD_Obj
/* 8077FAF8  7F E3 FB 78 */	mr r3, r31
/* 8077FAFC  4B FF ED 75 */	bl demo_camera__FP10e_s1_class
/* 8077FB00  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077FB04  80 63 00 04 */	lwz r3, 4(r3)
/* 8077FB08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077FB0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077FB10  38 63 00 60 */	addi r3, r3, 0x60
/* 8077FB14  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8077FB18  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077FB1C  80 84 00 00 */	lwz r4, 0(r4)
/* 8077FB20  4B BC 69 91 */	bl PSMTXCopy
/* 8077FB24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077FB28  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8077FB2C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077FB30  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8077FB34  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077FB38  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077FB3C  4B AF 13 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077FB40  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8077FB44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8077FB48  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8077FB4C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8077FB50  7F E3 FB 78 */	mr r3, r31
/* 8077FB54  38 9F 05 E0 */	addi r4, r31, 0x5e0
/* 8077FB58  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8077FB5C  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8077FB60  48 00 0E 01 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8077FB64  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077FB68  80 63 00 04 */	lwz r3, 4(r3)
/* 8077FB6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077FB70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077FB74  38 63 00 60 */	addi r3, r3, 0x60
/* 8077FB78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077FB7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077FB80  4B BC 69 31 */	bl PSMTXCopy
/* 8077FB84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8077FB88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8077FB8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8077FB90  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8077FB94  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8077FB98  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8077FB9C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8077FBA0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8077FBA4  38 61 00 08 */	addi r3, r1, 8
/* 8077FBA8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8077FBAC  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8077FBB0  4B AE 6F 85 */	bl __mi__4cXyzCFRC3Vec
/* 8077FBB4  C0 21 00 08 */	lfs f1, 8(r1)
/* 8077FBB8  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 8077FBBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8077FBC0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077FBC4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8077FBC8  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 8077FBCC  4B AE 7A A9 */	bl cM_atan2s__Fff
/* 8077FBD0  7C 64 1B 78 */	mr r4, r3
/* 8077FBD4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8077FBD8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8077FBDC  80 63 00 00 */	lwz r3, 0(r3)
/* 8077FBE0  4B 88 C7 FD */	bl mDoMtx_YrotS__FPA4_fs
/* 8077FBE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077FBE8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8077FBEC  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 8077FBF0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8077FBF4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8077FBF8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8077FBFC  38 61 00 BC */	addi r3, r1, 0xbc
/* 8077FC00  38 81 00 50 */	addi r4, r1, 0x50
/* 8077FC04  4B AF 12 E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8077FC08  38 61 00 50 */	addi r3, r1, 0x50
/* 8077FC0C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8077FC10  7C 65 1B 78 */	mr r5, r3
/* 8077FC14  4B BC 74 7D */	bl PSVECAdd
/* 8077FC18  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8077FC1C  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 8077FC20  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8077FC24  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 8077FC28  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8077FC2C  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 8077FC30  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 8077FC34  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8077FC38  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 8077FC3C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8077FC40  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 8077FC44  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8077FC48  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 8077FC4C  EC 02 00 2A */	fadds f0, f2, f0
/* 8077FC50  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8077FC54  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 8077FC58  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 8077FC5C  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 8077FC60  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8077FC64  64 00 00 20 */	oris r0, r0, 0x20
/* 8077FC68  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8077FC6C  38 60 00 01 */	li r3, 1
/* 8077FC70  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 8077FC74  4B BE 25 A9 */	bl _restgpr_26
/* 8077FC78  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8077FC7C  7C 08 03 A6 */	mtlr r0
/* 8077FC80  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8077FC84  4E 80 00 20 */	blr 
