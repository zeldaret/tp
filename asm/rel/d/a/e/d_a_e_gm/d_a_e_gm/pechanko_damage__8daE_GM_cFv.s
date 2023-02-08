lbl_806D2294:
/* 806D2294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D2298  7C 08 02 A6 */	mflr r0
/* 806D229C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D22A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D22A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806D22A8  7C 7E 1B 78 */	mr r30, r3
/* 806D22AC  3C 60 80 6D */	lis r3, lit_3906@ha /* 0x806D79A0@ha */
/* 806D22B0  3B E3 79 A0 */	addi r31, r3, lit_3906@l /* 0x806D79A0@l */
/* 806D22B4  80 1E 0A 3C */	lwz r0, 0xa3c(r30)
/* 806D22B8  2C 00 00 00 */	cmpwi r0, 0
/* 806D22BC  40 82 00 BC */	bne lbl_806D2378
/* 806D22C0  38 00 00 00 */	li r0, 0
/* 806D22C4  90 1E 08 18 */	stw r0, 0x818(r30)
/* 806D22C8  90 1E 08 30 */	stw r0, 0x830(r30)
/* 806D22CC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806D22D0  88 1E 0A 69 */	lbz r0, 0xa69(r30)
/* 806D22D4  28 00 00 01 */	cmplwi r0, 1
/* 806D22D8  40 82 00 10 */	bne lbl_806D22E8
/* 806D22DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D22E0  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D22E4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_806D22E8:
/* 806D22E8  38 00 00 3C */	li r0, 0x3c
/* 806D22EC  98 1E 0A 6B */	stb r0, 0xa6b(r30)
/* 806D22F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D22F4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806D22F8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D22FC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806D2300  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D2304  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 806D2308  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D230C  4B B9 56 49 */	bl cM_rndF__Ff
/* 806D2310  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806D2314  EC 00 08 2A */	fadds f0, f0, f1
/* 806D2318  FC 00 00 1E */	fctiwz f0, f0
/* 806D231C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806D2320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D2324  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 806D2328  38 00 00 00 */	li r0, 0
/* 806D232C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 806D2330  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 806D2334  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044C@ha */
/* 806D2338  38 03 04 4C */	addi r0, r3, 0x044C /* 0x0007044C@l */
/* 806D233C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D2340  38 7E 09 6C */	addi r3, r30, 0x96c
/* 806D2344  38 81 00 0C */	addi r4, r1, 0xc
/* 806D2348  38 A0 00 00 */	li r5, 0
/* 806D234C  38 C0 FF FF */	li r6, -1
/* 806D2350  81 9E 09 6C */	lwz r12, 0x96c(r30)
/* 806D2354  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D2358  7D 89 03 A6 */	mtctr r12
/* 806D235C  4E 80 04 21 */	bctrl 
/* 806D2360  38 00 00 00 */	li r0, 0
/* 806D2364  98 1E 0A 74 */	stb r0, 0xa74(r30)
/* 806D2368  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 806D236C  38 03 00 01 */	addi r0, r3, 1
/* 806D2370  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D2374  48 00 01 34 */	b lbl_806D24A8
lbl_806D2378:
/* 806D2378  2C 00 FF FF */	cmpwi r0, -1
/* 806D237C  41 82 01 2C */	beq lbl_806D24A8
/* 806D2380  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 806D2384  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806D2388  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 806D238C  4B B9 E3 B5 */	bl cLib_chaseF__FPfff
/* 806D2390  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 806D2394  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806D2398  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D239C  4B B9 E3 A5 */	bl cLib_chaseF__FPfff
/* 806D23A0  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 806D23A4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806D23A8  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D23AC  4B B9 E3 95 */	bl cLib_chaseF__FPfff
/* 806D23B0  38 7E 0A 48 */	addi r3, r30, 0xa48
/* 806D23B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806D23B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D23BC  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806D23C0  4B B9 D6 7D */	bl cLib_addCalc2__FPffff
/* 806D23C4  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 806D23C8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D23CC  41 82 00 BC */	beq lbl_806D2488
/* 806D23D0  A8 7E 0A 5C */	lha r3, 0xa5c(r30)
/* 806D23D4  2C 03 00 00 */	cmpwi r3, 0
/* 806D23D8  41 82 00 10 */	beq lbl_806D23E8
/* 806D23DC  38 03 FF FF */	addi r0, r3, -1
/* 806D23E0  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 806D23E4  48 00 00 C4 */	b lbl_806D24A8
lbl_806D23E8:
/* 806D23E8  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
/* 806D23EC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D23F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D23F4  4C 40 13 82 */	cror 2, 0, 2
/* 806D23F8  40 82 00 B0 */	bne lbl_806D24A8
/* 806D23FC  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha /* 0x806D7F1E@ha */
/* 806D2400  88 03 7F 1E */	lbz r0, struct_806D7F1C+0x2@l(r3)  /* 0x806D7F1E@l */
/* 806D2404  28 00 00 00 */	cmplwi r0, 0
/* 806D2408  40 82 00 A0 */	bne lbl_806D24A8
/* 806D240C  7F C3 F3 78 */	mr r3, r30
/* 806D2410  48 00 04 8D */	bl setDeathLightEffect__8daE_GM_cFv
/* 806D2414  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D2418  7C 03 07 74 */	extsb r3, r0
/* 806D241C  4B 95 AC 51 */	bl dComIfGp_getReverb__Fi
/* 806D2420  7C 67 1B 78 */	mr r7, r3
/* 806D2424  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 806D2428  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 806D242C  90 01 00 08 */	stw r0, 8(r1)
/* 806D2430  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806D2434  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806D2438  80 63 00 00 */	lwz r3, 0(r3)
/* 806D243C  38 81 00 08 */	addi r4, r1, 8
/* 806D2440  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D2444  38 C0 00 00 */	li r6, 0
/* 806D2448  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D244C  FC 40 08 90 */	fmr f2, f1
/* 806D2450  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806D2454  FC 80 18 90 */	fmr f4, f3
/* 806D2458  39 00 00 00 */	li r8, 0
/* 806D245C  4B BD 95 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806D2460  7F C3 F3 78 */	mr r3, r30
/* 806D2464  4B FF FD 41 */	bl create_item__8daE_GM_cFv
/* 806D2468  7F C3 F3 78 */	mr r3, r30
/* 806D246C  4B 94 78 11 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806D2470  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha /* 0x806D7F1E@ha */
/* 806D2474  38 83 7F 1E */	addi r4, r3, struct_806D7F1C+0x2@l /* 0x806D7F1E@l */
/* 806D2478  88 64 00 00 */	lbz r3, 0(r4)
/* 806D247C  38 03 00 01 */	addi r0, r3, 1
/* 806D2480  98 04 00 00 */	stb r0, 0(r4)
/* 806D2484  48 00 00 24 */	b lbl_806D24A8
lbl_806D2488:
/* 806D2488  7F C3 F3 78 */	mr r3, r30
/* 806D248C  38 80 00 00 */	li r4, 0
/* 806D2490  4B 94 82 3D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D2494  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 806D2498  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D249C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D24A0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D24A4  4B 9A 46 09 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_806D24A8:
/* 806D24A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D24AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806D24B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D24B4  7C 08 03 A6 */	mtlr r0
/* 806D24B8  38 21 00 20 */	addi r1, r1, 0x20
/* 806D24BC  4E 80 00 20 */	blr 
