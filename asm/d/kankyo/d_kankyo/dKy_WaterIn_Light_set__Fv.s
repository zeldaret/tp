lbl_801AB01C:
/* 801AB01C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801AB020  7C 08 02 A6 */	mflr r0
/* 801AB024  90 01 00 84 */	stw r0, 0x84(r1)
/* 801AB028  39 61 00 80 */	addi r11, r1, 0x80
/* 801AB02C  48 1B 71 A5 */	bl _savegpr_26
/* 801AB030  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801AB034  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801AB038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AB03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AB040  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 801AB044  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 801AB048  3B 40 00 01 */	li r26, 1
/* 801AB04C  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 801AB050  3B BC 3E C8 */	addi r29, r28, 0x3ec8
/* 801AB054  7F A3 EB 78 */	mr r3, r29
/* 801AB058  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB05C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB060  38 84 02 51 */	addi r4, r4, 0x251
/* 801AB064  48 1B D9 31 */	bl strcmp
/* 801AB068  2C 03 00 00 */	cmpwi r3, 0
/* 801AB06C  41 82 00 38 */	beq lbl_801AB0A4
/* 801AB070  7F A3 EB 78 */	mr r3, r29
/* 801AB074  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB078  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB07C  48 1B D9 19 */	bl strcmp
/* 801AB080  2C 03 00 00 */	cmpwi r3, 0
/* 801AB084  41 82 00 20 */	beq lbl_801AB0A4
/* 801AB088  7F A3 EB 78 */	mr r3, r29
/* 801AB08C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB090  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB094  38 84 02 59 */	addi r4, r4, 0x259
/* 801AB098  48 1B D8 FD */	bl strcmp
/* 801AB09C  2C 03 00 00 */	cmpwi r3, 0
/* 801AB0A0  40 82 00 08 */	bne lbl_801AB0A8
lbl_801AB0A4:
/* 801AB0A4  3B 40 00 03 */	li r26, 3
lbl_801AB0A8:
/* 801AB0A8  88 1F 0C 3E */	lbz r0, 0xc3e(r31)
/* 801AB0AC  28 00 00 01 */	cmplwi r0, 1
/* 801AB0B0  41 82 01 A8 */	beq lbl_801AB258
/* 801AB0B4  38 60 00 00 */	li r3, 0
/* 801AB0B8  4B FF 1F 2D */	bl dKy_twi_wolflight_set__Fi
/* 801AB0BC  38 00 00 8A */	li r0, 0x8a
/* 801AB0C0  98 1F 0C 24 */	stb r0, 0xc24(r31)
/* 801AB0C4  38 00 00 C0 */	li r0, 0xc0
/* 801AB0C8  98 1F 0C 25 */	stb r0, 0xc25(r31)
/* 801AB0CC  38 00 00 BC */	li r0, 0xbc
/* 801AB0D0  98 1F 0C 26 */	stb r0, 0xc26(r31)
/* 801AB0D4  38 00 00 FD */	li r0, 0xfd
/* 801AB0D8  98 1F 0C 27 */	stb r0, 0xc27(r31)
/* 801AB0DC  C0 42 A2 0C */	lfs f2, lit_4409(r2)
/* 801AB0E0  28 1E 00 00 */	cmplwi r30, 0
/* 801AB0E4  41 82 00 34 */	beq lbl_801AB118
/* 801AB0E8  C0 3B 00 DC */	lfs f1, 0xdc(r27)
/* 801AB0EC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 801AB0F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 801AB0F4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801AB0F8  40 80 00 08 */	bge lbl_801AB100
/* 801AB0FC  FC 20 10 90 */	fmr f1, f2
lbl_801AB100:
/* 801AB100  C0 02 A3 D0 */	lfs f0, lit_9722(r2)
/* 801AB104  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AB108  40 81 00 08 */	ble lbl_801AB110
/* 801AB10C  FC 20 00 90 */	fmr f1, f0
lbl_801AB110:
/* 801AB110  C0 02 A2 D0 */	lfs f0, lit_5615(r2)
/* 801AB114  EC 41 00 24 */	fdivs f2, f1, f0
lbl_801AB118:
/* 801AB118  C0 22 A3 EC */	lfs f1, lit_9779(r2)
/* 801AB11C  C0 02 A3 34 */	lfs f0, lit_6769(r2)
/* 801AB120  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AB124  EC 01 00 2A */	fadds f0, f1, f0
/* 801AB128  D0 1F 0C 28 */	stfs f0, 0xc28(r31)
/* 801AB12C  C0 02 A3 F0 */	lfs f0, lit_9780(r2)
/* 801AB130  D0 1F 0C 30 */	stfs f0, 0xc30(r31)
/* 801AB134  38 00 00 02 */	li r0, 2
/* 801AB138  98 1F 0C 3C */	stb r0, 0xc3c(r31)
/* 801AB13C  38 00 00 03 */	li r0, 3
/* 801AB140  98 1F 0C 3D */	stb r0, 0xc3d(r31)
/* 801AB144  7F A3 EB 78 */	mr r3, r29
/* 801AB148  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801AB14C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801AB150  38 84 00 F8 */	addi r4, r4, 0xf8
/* 801AB154  3B DF 0C 28 */	addi r30, r31, 0xc28
/* 801AB158  3B BF 0C 30 */	addi r29, r31, 0xc30
/* 801AB15C  48 1B D8 39 */	bl strcmp
/* 801AB160  2C 03 00 00 */	cmpwi r3, 0
/* 801AB164  40 82 00 9C */	bne lbl_801AB200
/* 801AB168  38 61 00 14 */	addi r3, r1, 0x14
/* 801AB16C  4B EC C8 95 */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 801AB170  3B 40 00 01 */	li r26, 1
/* 801AB174  C0 02 A2 BC */	lfs f0, lit_5554(r2)
/* 801AB178  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801AB17C  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 801AB180  D0 01 00 08 */	stfs f0, 8(r1)
/* 801AB184  C0 3B 00 DC */	lfs f1, 0xdc(r27)
/* 801AB188  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801AB18C  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 801AB190  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801AB194  C0 02 A2 E8 */	lfs f0, lit_6032(r2)
/* 801AB198  EC 01 00 2A */	fadds f0, f1, f0
/* 801AB19C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801AB1A0  38 61 00 14 */	addi r3, r1, 0x14
/* 801AB1A4  38 81 00 08 */	addi r4, r1, 8
/* 801AB1A8  48 0B CB 81 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 801AB1AC  7F 83 E3 78 */	mr r3, r28
/* 801AB1B0  38 81 00 14 */	addi r4, r1, 0x14
/* 801AB1B4  4B EC 92 ED */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 801AB1B8  C0 1B 00 DC */	lfs f0, 0xdc(r27)
/* 801AB1BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801AB1C0  C0 02 A1 F0 */	lfs f0, lit_4357(r2)
/* 801AB1C4  EC 21 00 24 */	fdivs f1, f1, f0
/* 801AB1C8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AB1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AB1D0  40 80 00 08 */	bge lbl_801AB1D8
/* 801AB1D4  FC 20 00 90 */	fmr f1, f0
lbl_801AB1D8:
/* 801AB1D8  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801AB1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AB1E0  40 81 00 08 */	ble lbl_801AB1E8
/* 801AB1E4  FC 20 00 90 */	fmr f1, f0
lbl_801AB1E8:
/* 801AB1E8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801AB1EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801AB1F0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801AB1F4  38 61 00 14 */	addi r3, r1, 0x14
/* 801AB1F8  38 80 FF FF */	li r4, -1
/* 801AB1FC  4B EC C8 9D */	bl __dt__18dBgS_CamGndChk_WtrFv
lbl_801AB200:
/* 801AB200  2C 1A 00 02 */	cmpwi r26, 2
/* 801AB204  40 80 00 24 */	bge lbl_801AB228
/* 801AB208  2C 1A 00 00 */	cmpwi r26, 0
/* 801AB20C  40 80 00 0C */	bge lbl_801AB218
/* 801AB210  48 00 00 18 */	b lbl_801AB228
/* 801AB214  48 00 00 14 */	b lbl_801AB228
lbl_801AB218:
/* 801AB218  C0 02 A2 8C */	lfs f0, lit_5106(r2)
/* 801AB21C  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801AB220  FC 40 08 90 */	fmr f2, f1
/* 801AB224  48 00 00 10 */	b lbl_801AB234
lbl_801AB228:
/* 801AB228  C0 02 A2 8C */	lfs f0, lit_5106(r2)
/* 801AB22C  C0 22 A2 4C */	lfs f1, lit_4506(r2)
/* 801AB230  C0 42 A3 F4 */	lfs f2, lit_9781(r2)
lbl_801AB234:
/* 801AB234  D0 1F 12 7C */	stfs f0, 0x127c(r31)
/* 801AB238  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801AB23C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801AB240  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801AB244  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801AB248  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801AB24C  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801AB250  38 00 00 01 */	li r0, 1
/* 801AB254  98 1F 0C 3E */	stb r0, 0xc3e(r31)
lbl_801AB258:
/* 801AB258  39 61 00 80 */	addi r11, r1, 0x80
/* 801AB25C  48 1B 6F C1 */	bl _restgpr_26
/* 801AB260  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801AB264  7C 08 03 A6 */	mtlr r0
/* 801AB268  38 21 00 80 */	addi r1, r1, 0x80
/* 801AB26C  4E 80 00 20 */	blr 
