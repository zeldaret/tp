lbl_8004D278:
/* 8004D278  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8004D27C  7C 08 02 A6 */	mflr r0
/* 8004D280  90 01 00 54 */	stw r0, 0x54(r1)
/* 8004D284  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8004D288  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8004D28C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8004D290  7C 7F 1B 78 */	mr r31, r3
/* 8004D294  FF E0 08 90 */	fmr f31, f1
/* 8004D298  74 A0 00 EF */	andis. r0, r5, 0xef
/* 8004D29C  54 00 84 3E */	srwi r0, r0, 0x10
/* 8004D2A0  28 00 00 64 */	cmplwi r0, 0x64
/* 8004D2A4  40 80 00 24 */	bge lbl_8004D2C8
/* 8004D2A8  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004D2AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8004D2B0  3C 00 43 30 */	lis r0, 0x4330
/* 8004D2B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 8004D2B8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8004D2BC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8004D2C0  C0 02 85 84 */	lfs f0, lit_4518(r2)
/* 8004D2C4  EF E1 00 24 */	fdivs f31, f1, f0
lbl_8004D2C8:
/* 8004D2C8  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 8004D2CC  41 82 00 B4 */	beq lbl_8004D380
/* 8004D2D0  80 02 85 C8 */	lwz r0, lit_5374(r2)
/* 8004D2D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004D2D8  80 02 85 CC */	lwz r0, lit_5375(r2)
/* 8004D2DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8004D2E0  28 08 00 00 */	cmplwi r8, 0
/* 8004D2E4  41 82 00 24 */	beq lbl_8004D308
/* 8004D2E8  88 08 00 00 */	lbz r0, 0(r8)
/* 8004D2EC  98 01 00 24 */	stb r0, 0x24(r1)
/* 8004D2F0  88 08 00 01 */	lbz r0, 1(r8)
/* 8004D2F4  98 01 00 25 */	stb r0, 0x25(r1)
/* 8004D2F8  88 08 00 02 */	lbz r0, 2(r8)
/* 8004D2FC  98 01 00 26 */	stb r0, 0x26(r1)
/* 8004D300  88 08 00 03 */	lbz r0, 3(r8)
/* 8004D304  98 01 00 27 */	stb r0, 0x27(r1)
lbl_8004D308:
/* 8004D308  28 07 00 00 */	cmplwi r7, 0
/* 8004D30C  41 82 00 24 */	beq lbl_8004D330
/* 8004D310  88 07 00 00 */	lbz r0, 0(r7)
/* 8004D314  98 01 00 20 */	stb r0, 0x20(r1)
/* 8004D318  88 07 00 01 */	lbz r0, 1(r7)
/* 8004D31C  98 01 00 21 */	stb r0, 0x21(r1)
/* 8004D320  88 07 00 02 */	lbz r0, 2(r7)
/* 8004D324  98 01 00 22 */	stb r0, 0x22(r1)
/* 8004D328  88 07 00 03 */	lbz r0, 3(r7)
/* 8004D32C  98 01 00 23 */	stb r0, 0x23(r1)
lbl_8004D330:
/* 8004D330  7C C3 33 78 */	mr r3, r6
/* 8004D334  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8004D338  38 C1 00 28 */	addi r6, r1, 0x28
/* 8004D33C  38 E1 00 24 */	addi r7, r1, 0x24
/* 8004D340  39 01 00 20 */	addi r8, r1, 0x20
/* 8004D344  FC 20 F8 90 */	fmr f1, f31
/* 8004D348  48 15 C8 9D */	bl dKy_ParticleColor_get_actor__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 8004D34C  88 81 00 2E */	lbz r4, 0x2e(r1)
/* 8004D350  88 61 00 2D */	lbz r3, 0x2d(r1)
/* 8004D354  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8004D358  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 8004D35C  98 7F 00 BD */	stb r3, 0xbd(r31)
/* 8004D360  98 9F 00 BE */	stb r4, 0xbe(r31)
/* 8004D364  88 81 00 2A */	lbz r4, 0x2a(r1)
/* 8004D368  88 61 00 29 */	lbz r3, 0x29(r1)
/* 8004D36C  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8004D370  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 8004D374  98 7F 00 B9 */	stb r3, 0xb9(r31)
/* 8004D378  98 9F 00 BA */	stb r4, 0xba(r31)
/* 8004D37C  48 00 01 34 */	b lbl_8004D4B0
lbl_8004D380:
/* 8004D380  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 8004D384  41 82 01 2C */	beq lbl_8004D4B0
/* 8004D388  80 02 85 D0 */	lwz r0, lit_5383(r2)
/* 8004D38C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D390  80 02 85 D4 */	lwz r0, lit_5384(r2)
/* 8004D394  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004D398  28 08 00 00 */	cmplwi r8, 0
/* 8004D39C  41 82 00 24 */	beq lbl_8004D3C0
/* 8004D3A0  88 08 00 00 */	lbz r0, 0(r8)
/* 8004D3A4  98 01 00 14 */	stb r0, 0x14(r1)
/* 8004D3A8  88 08 00 01 */	lbz r0, 1(r8)
/* 8004D3AC  98 01 00 15 */	stb r0, 0x15(r1)
/* 8004D3B0  88 08 00 02 */	lbz r0, 2(r8)
/* 8004D3B4  98 01 00 16 */	stb r0, 0x16(r1)
/* 8004D3B8  88 08 00 03 */	lbz r0, 3(r8)
/* 8004D3BC  98 01 00 17 */	stb r0, 0x17(r1)
lbl_8004D3C0:
/* 8004D3C0  28 07 00 00 */	cmplwi r7, 0
/* 8004D3C4  41 82 00 24 */	beq lbl_8004D3E8
/* 8004D3C8  88 07 00 00 */	lbz r0, 0(r7)
/* 8004D3CC  98 01 00 10 */	stb r0, 0x10(r1)
/* 8004D3D0  88 07 00 01 */	lbz r0, 1(r7)
/* 8004D3D4  98 01 00 11 */	stb r0, 0x11(r1)
/* 8004D3D8  88 07 00 02 */	lbz r0, 2(r7)
/* 8004D3DC  98 01 00 12 */	stb r0, 0x12(r1)
/* 8004D3E0  88 07 00 03 */	lbz r0, 3(r7)
/* 8004D3E4  98 01 00 13 */	stb r0, 0x13(r1)
lbl_8004D3E8:
/* 8004D3E8  7C C3 33 78 */	mr r3, r6
/* 8004D3EC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8004D3F0  38 C1 00 18 */	addi r6, r1, 0x18
/* 8004D3F4  38 E1 00 14 */	addi r7, r1, 0x14
/* 8004D3F8  39 01 00 10 */	addi r8, r1, 0x10
/* 8004D3FC  FC 20 F8 90 */	fmr f1, f31
/* 8004D400  48 15 C8 BD */	bl dKy_ParticleColor_get_bg__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 8004D404  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8004D408  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8004D40C  C0 23 12 5C */	lfs f1, 0x125c(r3)
/* 8004D410  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004D414  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004D418  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8004D41C  EF E1 00 2A */	fadds f31, f1, f0
/* 8004D420  38 61 00 1C */	addi r3, r1, 0x1c
/* 8004D424  FC 20 F8 90 */	fmr f1, f31
/* 8004D428  48 15 10 09 */	bl dKy_light_influence_col__FP8_GXColorf
/* 8004D42C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004D430  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8004D434  98 01 00 1C */	stb r0, 0x1c(r1)
/* 8004D438  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8004D43C  98 01 00 1D */	stb r0, 0x1d(r1)
/* 8004D440  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8004D444  98 01 00 1E */	stb r0, 0x1e(r1)
/* 8004D448  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8004D44C  98 01 00 1F */	stb r0, 0x1f(r1)
/* 8004D450  38 61 00 18 */	addi r3, r1, 0x18
/* 8004D454  FC 20 F8 90 */	fmr f1, f31
/* 8004D458  48 15 0F D9 */	bl dKy_light_influence_col__FP8_GXColorf
/* 8004D45C  90 61 00 08 */	stw r3, 8(r1)
/* 8004D460  88 01 00 08 */	lbz r0, 8(r1)
/* 8004D464  98 01 00 18 */	stb r0, 0x18(r1)
/* 8004D468  88 01 00 09 */	lbz r0, 9(r1)
/* 8004D46C  98 01 00 19 */	stb r0, 0x19(r1)
/* 8004D470  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8004D474  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8004D478  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8004D47C  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8004D480  88 81 00 1E */	lbz r4, 0x1e(r1)
/* 8004D484  88 61 00 1D */	lbz r3, 0x1d(r1)
/* 8004D488  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8004D48C  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 8004D490  98 7F 00 BD */	stb r3, 0xbd(r31)
/* 8004D494  98 9F 00 BE */	stb r4, 0xbe(r31)
/* 8004D498  88 81 00 1A */	lbz r4, 0x1a(r1)
/* 8004D49C  88 61 00 19 */	lbz r3, 0x19(r1)
/* 8004D4A0  88 01 00 18 */	lbz r0, 0x18(r1)
/* 8004D4A4  98 1F 00 B8 */	stb r0, 0xb8(r31)
/* 8004D4A8  98 7F 00 B9 */	stb r3, 0xb9(r31)
/* 8004D4AC  98 9F 00 BA */	stb r4, 0xba(r31)
lbl_8004D4B0:
/* 8004D4B0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8004D4B4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8004D4B8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8004D4BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8004D4C0  7C 08 03 A6 */	mtlr r0
/* 8004D4C4  38 21 00 50 */	addi r1, r1, 0x50
/* 8004D4C8  4E 80 00 20 */	blr 
