lbl_80CB21D8:
/* 80CB21D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB21DC  7C 08 02 A6 */	mflr r0
/* 80CB21E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB21E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CB21E8  7C 7F 1B 78 */	mr r31, r3
/* 80CB21EC  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CB21F0  7C 03 07 74 */	extsb r3, r0
/* 80CB21F4  4B 37 AE 78 */	b dComIfGp_getReverb__Fi
/* 80CB21F8  7C 67 1B 78 */	mr r7, r3
/* 80CB21FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 80CB2200  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 80CB2204  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CB2208  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CB220C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CB2210  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB2214  38 81 00 20 */	addi r4, r1, 0x20
/* 80CB2218  38 BF 05 C4 */	addi r5, r31, 0x5c4
/* 80CB221C  38 C0 00 00 */	li r6, 0
/* 80CB2220  3D 00 80 CB */	lis r8, lit_3739@ha
/* 80CB2224  C0 28 26 C8 */	lfs f1, lit_3739@l(r8)
/* 80CB2228  FC 40 08 90 */	fmr f2, f1
/* 80CB222C  3D 00 80 CB */	lis r8, lit_3814@ha
/* 80CB2230  C0 68 26 E4 */	lfs f3, lit_3814@l(r8)
/* 80CB2234  FC 80 18 90 */	fmr f4, f3
/* 80CB2238  39 00 00 00 */	li r8, 0
/* 80CB223C  4B 5F 97 48 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CB2240  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB2244  38 63 28 4C */	addi r3, r3, l_HIO@l
/* 80CB2248  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CB224C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CB2250  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CB2254  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CB2258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB225C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB2260  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CB2264  38 80 00 00 */	li r4, 0
/* 80CB2268  90 81 00 08 */	stw r4, 8(r1)
/* 80CB226C  38 00 FF FF */	li r0, -1
/* 80CB2270  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CB2274  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CB2278  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB227C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB2280  38 80 00 00 */	li r4, 0
/* 80CB2284  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086AD@ha */
/* 80CB2288  38 A5 86 AD */	addi r5, r5, 0x86AD /* 0x000086AD@l */
/* 80CB228C  38 DF 05 C4 */	addi r6, r31, 0x5c4
/* 80CB2290  38 E0 00 00 */	li r7, 0
/* 80CB2294  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80CB2298  39 21 00 24 */	addi r9, r1, 0x24
/* 80CB229C  39 40 00 FF */	li r10, 0xff
/* 80CB22A0  3D 60 80 CB */	lis r11, lit_3739@ha
/* 80CB22A4  C0 2B 26 C8 */	lfs f1, lit_3739@l(r11)
/* 80CB22A8  4B 39 A7 E8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB22AC  7F E3 FB 78 */	mr r3, r31
/* 80CB22B0  4B FF FB 51 */	bl setLight__12daPoCandle_cFv
/* 80CB22B4  38 00 00 01 */	li r0, 1
/* 80CB22B8  98 1F 05 D1 */	stb r0, 0x5d1(r31)
/* 80CB22BC  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 80CB22C0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CB22C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB22C8  7C 08 03 A6 */	mtlr r0
/* 80CB22CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB22D0  4E 80 00 20 */	blr 
