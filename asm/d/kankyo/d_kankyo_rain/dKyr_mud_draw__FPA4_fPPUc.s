lbl_8006D01C:
/* 8006D01C  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 8006D020  7C 08 02 A6 */	mflr r0
/* 8006D024  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 8006D028  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 8006D02C  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, 0 /* qr0 */
/* 8006D030  DB C1 01 D0 */	stfd f30, 0x1d0(r1)
/* 8006D034  F3 C1 01 D8 */	psq_st f30, 472(r1), 0, 0 /* qr0 */
/* 8006D038  DB A1 01 C0 */	stfd f29, 0x1c0(r1)
/* 8006D03C  F3 A1 01 C8 */	psq_st f29, 456(r1), 0, 0 /* qr0 */
/* 8006D040  DB 81 01 B0 */	stfd f28, 0x1b0(r1)
/* 8006D044  F3 81 01 B8 */	psq_st f28, 440(r1), 0, 0 /* qr0 */
/* 8006D048  DB 61 01 A0 */	stfd f27, 0x1a0(r1)
/* 8006D04C  F3 61 01 A8 */	psq_st f27, 424(r1), 0, 0 /* qr0 */
/* 8006D050  DB 41 01 90 */	stfd f26, 0x190(r1)
/* 8006D054  F3 41 01 98 */	psq_st f26, 408(r1), 0, 0 /* qr0 */
/* 8006D058  DB 21 01 80 */	stfd f25, 0x180(r1)
/* 8006D05C  F3 21 01 88 */	psq_st f25, 392(r1), 0, 0 /* qr0 */
/* 8006D060  DB 01 01 70 */	stfd f24, 0x170(r1)
/* 8006D064  F3 01 01 78 */	psq_st f24, 376(r1), 0, 0 /* qr0 */
/* 8006D068  39 61 01 70 */	addi r11, r1, 0x170
/* 8006D06C  48 2F 51 61 */	bl _savegpr_25
/* 8006D070  7C 7A 1B 78 */	mr r26, r3
/* 8006D074  7C 9B 23 78 */	mr r27, r4
/* 8006D078  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D07C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006D080  83 E3 10 4C */	lwz r31, 0x104c(r3)
/* 8006D084  83 C3 0E 74 */	lwz r30, 0xe74(r3)
/* 8006D088  88 0D 89 BC */	lbz r0, data_80450F3C(r13)
/* 8006D08C  7C 00 07 75 */	extsb. r0, r0
/* 8006D090  40 82 00 14 */	bne lbl_8006D0A4
/* 8006D094  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8006D098  D0 0D 89 B8 */	stfs f0, rot_11307(r13)
/* 8006D09C  38 00 00 01 */	li r0, 1
/* 8006D0A0  98 0D 89 BC */	stb r0, data_80450F3C(r13)
lbl_8006D0A4:
/* 8006D0A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D0A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006D0AC  AB A3 11 16 */	lha r29, 0x1116(r3)
/* 8006D0B0  83 83 0E 78 */	lwz r28, 0xe78(r3)
/* 8006D0B4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8006D0B8  2C 00 00 00 */	cmpwi r0, 0
/* 8006D0BC  41 82 08 00 */	beq lbl_8006D8BC
/* 8006D0C0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8006D0C4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8006D0C8  48 2A 36 75 */	bl reinitGX__6J3DSysFv
/* 8006D0CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D0D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006D0D4  A8 03 13 00 */	lha r0, 0x1300(r3)
/* 8006D0D8  2C 00 FF FF */	cmpwi r0, -1
/* 8006D0DC  41 82 00 08 */	beq lbl_8006D0E4
/* 8006D0E0  7C 1D 03 78 */	mr r29, r0
lbl_8006D0E4:
/* 8006D0E4  C0 42 8B D8 */	lfs f2, lit_11508(r2)
/* 8006D0E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D0EC  38 A3 CA 54 */	addi r5, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006D0F0  A8 05 11 10 */	lha r0, 0x1110(r5)
/* 8006D0F4  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006D0F8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8006D0FC  90 61 00 DC */	stw r3, 0xdc(r1)
/* 8006D100  3C C0 43 30 */	lis r6, 0x4330
/* 8006D104  90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 8006D108  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 8006D10C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006D110  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D114  FC 00 00 1E */	fctiwz f0, f0
/* 8006D118  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8006D11C  80 E1 00 E4 */	lwz r7, 0xe4(r1)
/* 8006D120  A8 65 11 12 */	lha r3, 0x1112(r5)
/* 8006D124  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8006D128  90 81 00 EC */	stw r4, 0xec(r1)
/* 8006D12C  90 C1 00 E8 */	stw r6, 0xe8(r1)
/* 8006D130  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 8006D134  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006D138  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D13C  FC 00 00 1E */	fctiwz f0, f0
/* 8006D140  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8006D144  81 01 00 F4 */	lwz r8, 0xf4(r1)
/* 8006D148  A8 85 11 14 */	lha r4, 0x1114(r5)
/* 8006D14C  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 8006D150  90 A1 00 FC */	stw r5, 0xfc(r1)
/* 8006D154  90 C1 00 F8 */	stw r6, 0xf8(r1)
/* 8006D158  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8006D15C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006D160  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D164  FC 00 00 1E */	fctiwz f0, f0
/* 8006D168  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 8006D16C  80 C1 01 04 */	lwz r6, 0x104(r1)
/* 8006D170  7C E5 07 34 */	extsh r5, r7
/* 8006D174  2C 05 00 FF */	cmpwi r5, 0xff
/* 8006D178  41 80 00 08 */	blt lbl_8006D180
/* 8006D17C  38 E0 00 FF */	li r7, 0xff
lbl_8006D180:
/* 8006D180  7D 05 07 34 */	extsh r5, r8
/* 8006D184  2C 05 00 FF */	cmpwi r5, 0xff
/* 8006D188  41 80 00 08 */	blt lbl_8006D190
/* 8006D18C  39 00 00 FF */	li r8, 0xff
lbl_8006D190:
/* 8006D190  7C C5 07 34 */	extsh r5, r6
/* 8006D194  2C 05 00 FF */	cmpwi r5, 0xff
/* 8006D198  41 80 00 08 */	blt lbl_8006D1A0
/* 8006D19C  38 C0 00 FF */	li r6, 0xff
lbl_8006D1A0:
/* 8006D1A0  98 E1 00 18 */	stb r7, 0x18(r1)
/* 8006D1A4  99 01 00 19 */	stb r8, 0x19(r1)
/* 8006D1A8  98 C1 00 1A */	stb r6, 0x1a(r1)
/* 8006D1AC  38 A0 00 FF */	li r5, 0xff
/* 8006D1B0  98 A1 00 1B */	stb r5, 0x1b(r1)
/* 8006D1B4  7F A5 07 34 */	extsh r5, r29
/* 8006D1B8  C8 82 87 C8 */	lfd f4, lit_3995(r2)
/* 8006D1BC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8006D1C0  90 A1 01 0C */	stw r5, 0x10c(r1)
/* 8006D1C4  3C C0 43 30 */	lis r6, 0x4330
/* 8006D1C8  90 C1 01 08 */	stw r6, 0x108(r1)
/* 8006D1CC  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 8006D1D0  EF 40 20 28 */	fsubs f26, f0, f4
/* 8006D1D4  90 A1 01 14 */	stw r5, 0x114(r1)
/* 8006D1D8  90 C1 01 10 */	stw r6, 0x110(r1)
/* 8006D1DC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 8006D1E0  EC 00 20 28 */	fsubs f0, f0, f4
/* 8006D1E4  C0 62 88 4C */	lfs f3, lit_4368(r2)
/* 8006D1E8  EC 00 18 24 */	fdivs f0, f0, f3
/* 8006D1EC  EF 5A 00 32 */	fmuls f26, f26, f0
/* 8006D1F0  C0 42 89 4C */	lfs f2, lit_5727(r2)
/* 8006D1F4  C0 22 89 60 */	lfs f1, lit_5732(r2)
/* 8006D1F8  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D1FC  38 A5 CA 54 */	addi r5, r5, g_env_light@l /* 0x8042CA54@l */
/* 8006D200  A8 A5 13 02 */	lha r5, 0x1302(r5)
/* 8006D204  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8006D208  90 A1 01 1C */	stw r5, 0x11c(r1)
/* 8006D20C  90 C1 01 18 */	stw r6, 0x118(r1)
/* 8006D210  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 8006D214  EC 00 20 28 */	fsubs f0, f0, f4
/* 8006D218  EC 00 18 24 */	fdivs f0, f0, f3
/* 8006D21C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8006D220  EC 02 00 2A */	fadds f0, f2, f0
/* 8006D224  EF 5A 00 32 */	fmuls f26, f26, f0
/* 8006D228  28 1C 00 00 */	cmplwi r28, 0
/* 8006D22C  41 82 00 58 */	beq lbl_8006D284
/* 8006D230  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 8006D234  C0 02 89 E8 */	lfs f0, lit_6721(r2)
/* 8006D238  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8006D23C  40 81 00 48 */	ble lbl_8006D284
/* 8006D240  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006D244  C0 5C 00 98 */	lfs f2, 0x98(r28)
/* 8006D248  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8006D24C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D250  EC 01 00 28 */	fsubs f0, f1, f0
/* 8006D254  EC 03 00 32 */	fmuls f0, f3, f0
/* 8006D258  EC 01 00 28 */	fsubs f0, f1, f0
/* 8006D25C  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8006D260  FC 00 00 1E */	fctiwz f0, f0
/* 8006D264  D8 01 01 18 */	stfd f0, 0x118(r1)
/* 8006D268  80 A1 01 1C */	lwz r5, 0x11c(r1)
/* 8006D26C  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8006D270  C8 22 88 70 */	lfd f1, lit_4379(r2)
/* 8006D274  90 A1 01 14 */	stw r5, 0x114(r1)
/* 8006D278  90 C1 01 10 */	stw r6, 0x110(r1)
/* 8006D27C  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 8006D280  EF 40 08 28 */	fsubs f26, f0, f1
lbl_8006D284:
/* 8006D284  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8006D288  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8006D28C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8006D290  90 01 01 1C */	stw r0, 0x11c(r1)
/* 8006D294  3C A0 43 30 */	lis r5, 0x4330
/* 8006D298  90 A1 01 18 */	stw r5, 0x118(r1)
/* 8006D29C  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 8006D2A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006D2A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D2A8  FC 00 00 1E */	fctiwz f0, f0
/* 8006D2AC  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 8006D2B0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8006D2B4  98 01 00 14 */	stb r0, 0x14(r1)
/* 8006D2B8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8006D2BC  90 01 01 0C */	stw r0, 0x10c(r1)
/* 8006D2C0  90 A1 01 08 */	stw r5, 0x108(r1)
/* 8006D2C4  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 8006D2C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006D2CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D2D0  FC 00 00 1E */	fctiwz f0, f0
/* 8006D2D4  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 8006D2D8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8006D2DC  98 01 00 15 */	stb r0, 0x15(r1)
/* 8006D2E0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8006D2E4  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8006D2E8  90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 8006D2EC  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8006D2F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8006D2F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8006D2F8  FC 00 00 1E */	fctiwz f0, f0
/* 8006D2FC  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8006D300  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8006D304  98 01 00 16 */	stb r0, 0x16(r1)
/* 8006D308  38 00 00 FF */	li r0, 0xff
/* 8006D30C  98 01 00 17 */	stb r0, 0x17(r1)
/* 8006D310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006D314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006D318  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8006D31C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8006D320  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8006D324  38 84 00 54 */	addi r4, r4, 0x54
/* 8006D328  48 2F B6 6D */	bl strcmp
/* 8006D32C  2C 03 00 00 */	cmpwi r3, 0
/* 8006D330  40 82 01 B4 */	bne lbl_8006D4E4
/* 8006D334  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8006D338  C0 1F 1C 3C */	lfs f0, 0x1c3c(r31)
/* 8006D33C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8006D340  38 60 00 60 */	li r3, 0x60
/* 8006D344  98 61 00 18 */	stb r3, 0x18(r1)
/* 8006D348  39 20 00 41 */	li r9, 0x41
/* 8006D34C  99 21 00 19 */	stb r9, 0x19(r1)
/* 8006D350  39 00 00 45 */	li r8, 0x45
/* 8006D354  99 01 00 1A */	stb r8, 0x1a(r1)
/* 8006D358  38 00 00 64 */	li r0, 0x64
/* 8006D35C  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8006D360  38 E0 00 D1 */	li r7, 0xd1
/* 8006D364  98 E1 00 14 */	stb r7, 0x14(r1)
/* 8006D368  38 C0 00 EF */	li r6, 0xef
/* 8006D36C  98 C1 00 15 */	stb r6, 0x15(r1)
/* 8006D370  38 A0 00 00 */	li r5, 0
/* 8006D374  98 A1 00 16 */	stb r5, 0x16(r1)
/* 8006D378  C0 A2 88 8C */	lfs f5, lit_5098(r2)
/* 8006D37C  C8 02 88 70 */	lfd f0, lit_4379(r2)
/* 8006D380  90 61 01 1C */	stw r3, 0x11c(r1)
/* 8006D384  3C 80 43 30 */	lis r4, 0x4330
/* 8006D388  90 81 01 18 */	stw r4, 0x118(r1)
/* 8006D38C  C8 41 01 18 */	lfd f2, 0x118(r1)
/* 8006D390  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006D394  EC 45 10 28 */	fsubs f2, f5, f2
/* 8006D398  EC 42 00 72 */	fmuls f2, f2, f1
/* 8006D39C  FC 40 10 1E */	fctiwz f2, f2
/* 8006D3A0  D8 41 01 10 */	stfd f2, 0x110(r1)
/* 8006D3A4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8006D3A8  7C 03 07 34 */	extsh r3, r0
/* 8006D3AC  38 03 00 60 */	addi r0, r3, 0x60
/* 8006D3B0  98 01 00 18 */	stb r0, 0x18(r1)
/* 8006D3B4  C0 82 89 A4 */	lfs f4, lit_6355(r2)
/* 8006D3B8  91 21 01 0C */	stw r9, 0x10c(r1)
/* 8006D3BC  90 81 01 08 */	stw r4, 0x108(r1)
/* 8006D3C0  C8 41 01 08 */	lfd f2, 0x108(r1)
/* 8006D3C4  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006D3C8  EC 44 10 28 */	fsubs f2, f4, f2
/* 8006D3CC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8006D3D0  FC 40 10 1E */	fctiwz f2, f2
/* 8006D3D4  D8 41 01 00 */	stfd f2, 0x100(r1)
/* 8006D3D8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8006D3DC  7C 03 07 34 */	extsh r3, r0
/* 8006D3E0  38 03 00 41 */	addi r0, r3, 0x41
/* 8006D3E4  98 01 00 19 */	stb r0, 0x19(r1)
/* 8006D3E8  C0 62 89 FC */	lfs f3, lit_6726(r2)
/* 8006D3EC  91 01 00 FC */	stw r8, 0xfc(r1)
/* 8006D3F0  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 8006D3F4  C8 41 00 F8 */	lfd f2, 0xf8(r1)
/* 8006D3F8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006D3FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8006D400  EC 42 00 72 */	fmuls f2, f2, f1
/* 8006D404  FC 40 10 1E */	fctiwz f2, f2
/* 8006D408  D8 41 00 F0 */	stfd f2, 0xf0(r1)
/* 8006D40C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8006D410  7C 03 07 34 */	extsh r3, r0
/* 8006D414  38 63 00 45 */	addi r3, r3, 0x45
/* 8006D418  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006D41C  98 61 00 1A */	stb r3, 0x1a(r1)
/* 8006D420  90 01 00 EC */	stw r0, 0xec(r1)
/* 8006D424  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 8006D428  C8 41 00 E8 */	lfd f2, 0xe8(r1)
/* 8006D42C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006D430  FC 40 10 50 */	fneg f2, f2
/* 8006D434  EC 42 00 72 */	fmuls f2, f2, f1
/* 8006D438  FC 40 10 1E */	fctiwz f2, f2
/* 8006D43C  D8 41 00 E0 */	stfd f2, 0xe0(r1)
/* 8006D440  80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 8006D444  38 63 00 64 */	addi r3, r3, 0x64
/* 8006D448  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8006D44C  98 61 00 1B */	stb r3, 0x1b(r1)
/* 8006D450  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8006D454  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8006D458  C8 41 00 D8 */	lfd f2, 0xd8(r1)
/* 8006D45C  EF 42 00 28 */	fsubs f26, f2, f0
/* 8006D460  90 E1 01 24 */	stw r7, 0x124(r1)
/* 8006D464  90 81 01 20 */	stw r4, 0x120(r1)
/* 8006D468  C8 41 01 20 */	lfd f2, 0x120(r1)
/* 8006D46C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006D470  EC 45 10 28 */	fsubs f2, f5, f2
/* 8006D474  EC 42 00 72 */	fmuls f2, f2, f1
/* 8006D478  FC 40 10 1E */	fctiwz f2, f2
/* 8006D47C  D8 41 01 28 */	stfd f2, 0x128(r1)
/* 8006D480  80 61 01 2C */	lwz r3, 0x12c(r1)
/* 8006D484  38 03 00 D1 */	addi r0, r3, 0xd1
/* 8006D488  98 01 00 14 */	stb r0, 0x14(r1)
/* 8006D48C  90 C1 01 34 */	stw r6, 0x134(r1)
/* 8006D490  90 81 01 30 */	stw r4, 0x130(r1)
/* 8006D494  C8 41 01 30 */	lfd f2, 0x130(r1)
/* 8006D498  EC 42 00 28 */	fsubs f2, f2, f0
/* 8006D49C  EC 44 10 28 */	fsubs f2, f4, f2
/* 8006D4A0  EC 42 00 72 */	fmuls f2, f2, f1
/* 8006D4A4  FC 40 10 1E */	fctiwz f2, f2
/* 8006D4A8  D8 41 01 38 */	stfd f2, 0x138(r1)
/* 8006D4AC  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8006D4B0  7C 03 07 34 */	extsh r3, r0
/* 8006D4B4  38 03 00 EF */	addi r0, r3, 0xef
/* 8006D4B8  98 01 00 15 */	stb r0, 0x15(r1)
/* 8006D4BC  90 A1 01 44 */	stw r5, 0x144(r1)
/* 8006D4C0  90 81 01 40 */	stw r4, 0x140(r1)
/* 8006D4C4  C8 41 01 40 */	lfd f2, 0x140(r1)
/* 8006D4C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8006D4CC  EC 03 00 28 */	fsubs f0, f3, f0
/* 8006D4D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8006D4D4  FC 00 00 1E */	fctiwz f0, f0
/* 8006D4D8  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8006D4DC  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8006D4E0  98 01 00 16 */	stb r0, 0x16(r1)
lbl_8006D4E4:
/* 8006D4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8006D4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8006D4EC  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8006D4F0  28 03 00 00 */	cmplwi r3, 0
/* 8006D4F4  41 82 03 C8 */	beq lbl_8006D8BC
/* 8006D4F8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8006D4FC  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8006D500  48 2D 90 B1 */	bl PSMTXInverse
/* 8006D504  48 00 00 08 */	b lbl_8006D50C
/* 8006D508  48 00 03 B4 */	b lbl_8006D8BC
lbl_8006D50C:
/* 8006D50C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8006D510  3B 23 CA 54 */	addi r25, r3, g_env_light@l /* 0x8042CA54@l */
/* 8006D514  88 19 12 D8 */	lbz r0, 0x12d8(r25)
/* 8006D518  28 00 00 00 */	cmplwi r0, 0
/* 8006D51C  40 82 03 A0 */	bne lbl_8006D8BC
/* 8006D520  C3 62 8A 58 */	lfs f27, lit_7209(r2)
/* 8006D524  C3 82 8B DC */	lfs f28, lit_11509(r2)
/* 8006D528  C3 A2 89 4C */	lfs f29, lit_5727(r2)
/* 8006D52C  C3 C2 89 50 */	lfs f30, lit_5728(r2)
/* 8006D530  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8006D534  3B A3 9A 20 */	addi r29, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8006D538  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8006D53C  3F 80 CC 01 */	lis r28, 0xcc01
/* 8006D540  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8006D544  C3 02 8A 60 */	lfs f24, lit_7211(r2)
/* 8006D548  38 61 00 28 */	addi r3, r1, 0x28
/* 8006D54C  80 9B 00 00 */	lwz r4, 0(r27)
/* 8006D550  4B FE E4 D5 */	bl dKyr_set_btitex__FP9_GXTexObjP7ResTIMG
/* 8006D554  38 60 00 00 */	li r3, 0
/* 8006D558  48 2F 05 D9 */	bl GXSetNumChans
/* 8006D55C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8006D560  90 01 00 10 */	stw r0, 0x10(r1)
/* 8006D564  38 60 00 01 */	li r3, 1
/* 8006D568  38 81 00 10 */	addi r4, r1, 0x10
/* 8006D56C  48 2F 1E 11 */	bl GXSetTevColor
/* 8006D570  93 C1 00 0C */	stw r30, 0xc(r1)
/* 8006D574  38 60 00 02 */	li r3, 2
/* 8006D578  38 81 00 0C */	addi r4, r1, 0xc
/* 8006D57C  48 2F 1E 01 */	bl GXSetTevColor
/* 8006D580  38 60 00 01 */	li r3, 1
/* 8006D584  48 2E E8 79 */	bl GXSetNumTexGens
/* 8006D588  38 60 00 00 */	li r3, 0
/* 8006D58C  38 80 00 01 */	li r4, 1
/* 8006D590  38 A0 00 04 */	li r5, 4
/* 8006D594  38 C0 00 3C */	li r6, 0x3c
/* 8006D598  38 E0 00 00 */	li r7, 0
/* 8006D59C  39 00 00 7D */	li r8, 0x7d
/* 8006D5A0  48 2E E5 DD */	bl GXSetTexCoordGen2
/* 8006D5A4  38 60 00 01 */	li r3, 1
/* 8006D5A8  48 2F 22 E9 */	bl GXSetNumTevStages
/* 8006D5AC  38 60 00 00 */	li r3, 0
/* 8006D5B0  38 80 00 00 */	li r4, 0
/* 8006D5B4  38 A0 00 00 */	li r5, 0
/* 8006D5B8  38 C0 00 FF */	li r6, 0xff
/* 8006D5BC  48 2F 21 39 */	bl GXSetTevOrder
/* 8006D5C0  38 60 00 00 */	li r3, 0
/* 8006D5C4  38 80 00 04 */	li r4, 4
/* 8006D5C8  38 A0 00 02 */	li r5, 2
/* 8006D5CC  38 C0 00 08 */	li r6, 8
/* 8006D5D0  38 E0 00 0F */	li r7, 0xf
/* 8006D5D4  48 2F 1C 51 */	bl GXSetTevColorIn
/* 8006D5D8  38 60 00 00 */	li r3, 0
/* 8006D5DC  38 80 00 00 */	li r4, 0
/* 8006D5E0  38 A0 00 00 */	li r5, 0
/* 8006D5E4  38 C0 00 00 */	li r6, 0
/* 8006D5E8  38 E0 00 01 */	li r7, 1
/* 8006D5EC  39 00 00 00 */	li r8, 0
/* 8006D5F0  48 2F 1C BD */	bl GXSetTevColorOp
/* 8006D5F4  38 60 00 00 */	li r3, 0
/* 8006D5F8  38 80 00 07 */	li r4, 7
/* 8006D5FC  38 A0 00 01 */	li r5, 1
/* 8006D600  38 C0 00 04 */	li r6, 4
/* 8006D604  38 E0 00 07 */	li r7, 7
/* 8006D608  48 2F 1C 61 */	bl GXSetTevAlphaIn
/* 8006D60C  38 60 00 00 */	li r3, 0
/* 8006D610  38 80 00 00 */	li r4, 0
/* 8006D614  38 A0 00 00 */	li r5, 0
/* 8006D618  38 C0 00 00 */	li r6, 0
/* 8006D61C  38 E0 00 01 */	li r7, 1
/* 8006D620  39 00 00 00 */	li r8, 0
/* 8006D624  48 2F 1C F1 */	bl GXSetTevAlphaOp
/* 8006D628  38 60 00 01 */	li r3, 1
/* 8006D62C  38 80 00 04 */	li r4, 4
/* 8006D630  38 A0 00 05 */	li r5, 5
/* 8006D634  38 C0 00 0F */	li r6, 0xf
/* 8006D638  48 2F 25 B9 */	bl GXSetBlendMode
/* 8006D63C  38 60 00 04 */	li r3, 4
/* 8006D640  38 80 00 00 */	li r4, 0
/* 8006D644  38 A0 00 01 */	li r5, 1
/* 8006D648  38 C0 00 04 */	li r6, 4
/* 8006D64C  38 E0 00 00 */	li r7, 0
/* 8006D650  48 2F 1F D5 */	bl GXSetAlphaCompare
/* 8006D654  88 19 12 D8 */	lbz r0, 0x12d8(r25)
/* 8006D658  28 00 00 00 */	cmplwi r0, 0
/* 8006D65C  41 82 00 18 */	beq lbl_8006D674
/* 8006D660  38 60 00 00 */	li r3, 0
/* 8006D664  38 80 00 03 */	li r4, 3
/* 8006D668  38 A0 00 01 */	li r5, 1
/* 8006D66C  48 2F 26 31 */	bl GXSetZMode
/* 8006D670  48 00 00 14 */	b lbl_8006D684
lbl_8006D674:
/* 8006D674  38 60 00 01 */	li r3, 1
/* 8006D678  38 80 00 03 */	li r4, 3
/* 8006D67C  38 A0 00 00 */	li r5, 0
/* 8006D680  48 2F 26 1D */	bl GXSetZMode
lbl_8006D684:
/* 8006D684  38 60 00 00 */	li r3, 0
/* 8006D688  48 2F 2F 49 */	bl GXSetClipMode
/* 8006D68C  38 60 00 00 */	li r3, 0
/* 8006D690  48 2F 1A 45 */	bl GXSetNumIndStages
/* 8006D694  4B FF 54 49 */	bl dKr_cullVtx_Set__Fv
/* 8006D698  38 61 00 78 */	addi r3, r1, 0x78
/* 8006D69C  38 80 00 5A */	li r4, 0x5a
/* 8006D6A0  C0 0D 89 B8 */	lfs f0, rot_11307(r13)
/* 8006D6A4  EC 38 00 32 */	fmuls f1, f24, f0
/* 8006D6A8  48 2D 90 01 */	bl PSMTXRotRad
/* 8006D6AC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8006D6B0  38 81 00 78 */	addi r4, r1, 0x78
/* 8006D6B4  7C 65 1B 78 */	mr r5, r3
/* 8006D6B8  48 2D 8E 2D */	bl PSMTXConcat
/* 8006D6BC  7F 43 D3 78 */	mr r3, r26
/* 8006D6C0  38 80 00 00 */	li r4, 0
/* 8006D6C4  48 2F 2B 89 */	bl GXLoadPosMtxImm
/* 8006D6C8  38 60 00 00 */	li r3, 0
/* 8006D6CC  48 2F 2C 21 */	bl GXSetCurrentMtx
/* 8006D6D0  3B 60 00 00 */	li r27, 0
/* 8006D6D4  3B 40 00 00 */	li r26, 0
/* 8006D6D8  48 00 01 C8 */	b lbl_8006D8A0
lbl_8006D6DC:
/* 8006D6DC  7F 3F D2 14 */	add r25, r31, r26
/* 8006D6E0  C0 39 00 28 */	lfs f1, 0x28(r25)
/* 8006D6E4  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 8006D6E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006D6EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8006D6F0  C0 39 00 2C */	lfs f1, 0x2c(r25)
/* 8006D6F4  C0 19 00 20 */	lfs f0, 0x20(r25)
/* 8006D6F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8006D6FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8006D700  C0 39 00 30 */	lfs f1, 0x30(r25)
/* 8006D704  C0 19 00 24 */	lfs f0, 0x24(r25)
/* 8006D708  EC 01 00 2A */	fadds f0, f1, f0
/* 8006D70C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8006D710  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 8006D714  EC 00 06 B2 */	fmuls f0, f0, f26
/* 8006D718  FC 00 00 1E */	fctiwz f0, f0
/* 8006D71C  D8 01 01 48 */	stfd f0, 0x148(r1)
/* 8006D720  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8006D724  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8006D728  38 61 00 28 */	addi r3, r1, 0x28
/* 8006D72C  38 80 00 00 */	li r4, 0
/* 8006D730  48 2F 0C E5 */	bl GXLoadTexObj
/* 8006D734  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8006D738  90 01 00 08 */	stw r0, 8(r1)
/* 8006D73C  38 60 00 01 */	li r3, 1
/* 8006D740  38 81 00 08 */	addi r4, r1, 8
/* 8006D744  48 2F 1C 39 */	bl GXSetTevColor
/* 8006D748  C0 59 00 54 */	lfs f2, 0x54(r25)
/* 8006D74C  EC 1C 00 B2 */	fmuls f0, f28, f2
/* 8006D750  EF 3B 00 32 */	fmuls f25, f27, f0
/* 8006D754  EF 39 07 72 */	fmuls f25, f25, f29
/* 8006D758  C0 39 00 40 */	lfs f1, 0x40(r25)
/* 8006D75C  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 8006D760  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006D764  48 1F 9E 81 */	bl cM_rad2s__Ff
/* 8006D768  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006D76C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 8006D770  C0 59 00 54 */	lfs f2, 0x54(r25)
/* 8006D774  EF 02 00 32 */	fmuls f24, f2, f0
/* 8006D778  C0 39 00 44 */	lfs f1, 0x44(r25)
/* 8006D77C  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 8006D780  EC 21 00 32 */	fmuls f1, f1, f0
/* 8006D784  48 1F 9E 61 */	bl cM_rad2s__Ff
/* 8006D788  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8006D78C  7C 7D 02 14 */	add r3, r29, r0
/* 8006D790  C0 23 00 04 */	lfs f1, 4(r3)
/* 8006D794  C0 19 00 54 */	lfs f0, 0x54(r25)
/* 8006D798  EC E0 00 72 */	fmuls f7, f0, f1
/* 8006D79C  EC 19 38 28 */	fsubs f0, f25, f7
/* 8006D7A0  EC 39 C0 28 */	fsubs f1, f25, f24
/* 8006D7A4  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 8006D7A8  EC 85 00 2A */	fadds f4, f5, f0
/* 8006D7AC  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8006D7B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8006D7B4  EC 60 F8 2A */	fadds f3, f0, f31
/* 8006D7B8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8006D7BC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8006D7C0  EC 22 08 2A */	fadds f1, f2, f1
/* 8006D7C4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8006D7C8  FC C0 C8 50 */	fneg f6, f25
/* 8006D7CC  EC 06 38 28 */	fsubs f0, f6, f7
/* 8006D7D0  EC 05 00 2A */	fadds f0, f5, f0
/* 8006D7D4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8006D7D8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8006D7DC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8006D7E0  EC 26 C0 28 */	fsubs f1, f6, f24
/* 8006D7E4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8006D7E8  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 8006D7EC  EC 02 08 2A */	fadds f0, f2, f1
/* 8006D7F0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8006D7F4  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 8006D7F8  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 8006D7FC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8006D800  38 60 00 80 */	li r3, 0x80
/* 8006D804  38 80 00 00 */	li r4, 0
/* 8006D808  38 A0 00 04 */	li r5, 4
/* 8006D80C  48 2E EF 59 */	bl GXBegin
/* 8006D810  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8006D814  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D818  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8006D81C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D820  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8006D824  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D828  38 60 00 00 */	li r3, 0
/* 8006D82C  B0 7C 80 00 */	sth r3, -0x8000(r28)
/* 8006D830  B0 7C 80 00 */	sth r3, -0x8000(r28)
/* 8006D834  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8006D838  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D83C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8006D840  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D844  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8006D848  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D84C  38 00 00 FF */	li r0, 0xff
/* 8006D850  B0 1C 80 00 */	sth r0, -0x8000(r28)
/* 8006D854  B0 7C 80 00 */	sth r3, -0x8000(r28)
/* 8006D858  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8006D85C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D860  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8006D864  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D868  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8006D86C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D870  B0 1C 80 00 */	sth r0, -0x8000(r28)
/* 8006D874  B0 1C 80 00 */	sth r0, -0x8000(r28)
/* 8006D878  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8006D87C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D880  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8006D884  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D888  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8006D88C  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8006D890  B0 7C 80 00 */	sth r3, -0x8000(r28)
/* 8006D894  B0 1C 80 00 */	sth r0, -0x8000(r28)
/* 8006D898  3B 7B 00 01 */	addi r27, r27, 1
/* 8006D89C  3B 5A 00 48 */	addi r26, r26, 0x48
lbl_8006D8A0:
/* 8006D8A0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8006D8A4  7C 1B 00 00 */	cmpw r27, r0
/* 8006D8A8  41 80 FE 34 */	blt lbl_8006D6DC
/* 8006D8AC  38 60 00 00 */	li r3, 0
/* 8006D8B0  48 2F 2D 21 */	bl GXSetClipMode
/* 8006D8B4  38 00 00 00 */	li r0, 0
/* 8006D8B8  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
lbl_8006D8BC:
/* 8006D8BC  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, 0 /* qr0 */
/* 8006D8C0  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 8006D8C4  E3 C1 01 D8 */	psq_l f30, 472(r1), 0, 0 /* qr0 */
/* 8006D8C8  CB C1 01 D0 */	lfd f30, 0x1d0(r1)
/* 8006D8CC  E3 A1 01 C8 */	psq_l f29, 456(r1), 0, 0 /* qr0 */
/* 8006D8D0  CB A1 01 C0 */	lfd f29, 0x1c0(r1)
/* 8006D8D4  E3 81 01 B8 */	psq_l f28, 440(r1), 0, 0 /* qr0 */
/* 8006D8D8  CB 81 01 B0 */	lfd f28, 0x1b0(r1)
/* 8006D8DC  E3 61 01 A8 */	psq_l f27, 424(r1), 0, 0 /* qr0 */
/* 8006D8E0  CB 61 01 A0 */	lfd f27, 0x1a0(r1)
/* 8006D8E4  E3 41 01 98 */	psq_l f26, 408(r1), 0, 0 /* qr0 */
/* 8006D8E8  CB 41 01 90 */	lfd f26, 0x190(r1)
/* 8006D8EC  E3 21 01 88 */	psq_l f25, 392(r1), 0, 0 /* qr0 */
/* 8006D8F0  CB 21 01 80 */	lfd f25, 0x180(r1)
/* 8006D8F4  E3 01 01 78 */	psq_l f24, 376(r1), 0, 0 /* qr0 */
/* 8006D8F8  CB 01 01 70 */	lfd f24, 0x170(r1)
/* 8006D8FC  39 61 01 70 */	addi r11, r1, 0x170
/* 8006D900  48 2F 49 19 */	bl _restgpr_25
/* 8006D904  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8006D908  7C 08 03 A6 */	mtlr r0
/* 8006D90C  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 8006D910  4E 80 00 20 */	blr 
