lbl_801C235C:
/* 801C235C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C2360  7C 08 02 A6 */	mflr r0
/* 801C2364  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C2368  39 61 00 30 */	addi r11, r1, 0x30
/* 801C236C  48 19 FE 65 */	bl _savegpr_26
/* 801C2370  7C 7A 1B 78 */	mr r26, r3
/* 801C2374  7C 9B 23 78 */	mr r27, r4
/* 801C2378  7C BC 2B 78 */	mr r28, r5
/* 801C237C  7C DD 33 78 */	mr r29, r6
/* 801C2380  7C FE 3B 78 */	mr r30, r7
/* 801C2384  7D 3F 4B 78 */	mr r31, r9
/* 801C2388  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801C238C  98 03 00 E6 */	stb r0, 0xe6(r3)
/* 801C2390  99 03 00 E7 */	stb r8, 0xe7(r3)
/* 801C2394  88 03 00 E7 */	lbz r0, 0xe7(r3)
/* 801C2398  98 03 00 EB */	stb r0, 0xeb(r3)
/* 801C239C  88 03 00 E7 */	lbz r0, 0xe7(r3)
/* 801C23A0  98 03 00 EC */	stb r0, 0xec(r3)
/* 801C23A4  38 7A 00 ED */	addi r3, r26, 0xed
/* 801C23A8  38 9A 00 EE */	addi r4, r26, 0xee
/* 801C23AC  4B E7 D3 B5 */	bl getTopBottomFloorNo__8dMpath_cFPScPSc
/* 801C23B0  88 1A 00 EE */	lbz r0, 0xee(r26)
/* 801C23B4  7C 03 07 74 */	extsb r3, r0
/* 801C23B8  88 1A 00 ED */	lbz r0, 0xed(r26)
/* 801C23BC  7C 00 07 74 */	extsb r0, r0
/* 801C23C0  7C 63 00 50 */	subf r3, r3, r0
/* 801C23C4  34 03 00 01 */	addic. r0, r3, 1
/* 801C23C8  40 81 00 08 */	ble lbl_801C23D0
/* 801C23CC  98 1A 00 EF */	stb r0, 0xef(r26)
lbl_801C23D0:
/* 801C23D0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 801C23D4  C8 22 A6 B0 */	lfd f1, lit_4170(r2)
/* 801C23D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C23DC  3C 60 43 30 */	lis r3, 0x4330
/* 801C23E0  90 61 00 08 */	stw r3, 8(r1)
/* 801C23E4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C23E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C23EC  D0 1A 00 94 */	stfs f0, 0x94(r26)
/* 801C23F0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 801C23F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C23F8  90 61 00 10 */	stw r3, 0x10(r1)
/* 801C23FC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C2400  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C2404  D0 1A 00 98 */	stfs f0, 0x98(r26)
/* 801C2408  7F 43 D3 78 */	mr r3, r26
/* 801C240C  7F 64 DB 78 */	mr r4, r27
/* 801C2410  7F 85 E3 78 */	mr r5, r28
/* 801C2414  7F A6 EB 78 */	mr r6, r29
/* 801C2418  7F C7 F3 78 */	mr r7, r30
/* 801C241C  7F E8 FB 78 */	mr r8, r31
/* 801C2420  4B FF E8 B9 */	bl _create__15dMenu_DmapMap_cFUsUsUsUsPv
/* 801C2424  7F 43 D3 78 */	mr r3, r26
/* 801C2428  38 9A 00 9C */	addi r4, r26, 0x9c
/* 801C242C  38 BA 00 A0 */	addi r5, r26, 0xa0
/* 801C2430  81 9A 00 00 */	lwz r12, 0(r26)
/* 801C2434  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2438  7D 89 03 A6 */	mtctr r12
/* 801C243C  4E 80 04 21 */	bctrl 
/* 801C2440  C0 1A 00 9C */	lfs f0, 0x9c(r26)
/* 801C2444  D0 1A 00 A4 */	stfs f0, 0xa4(r26)
/* 801C2448  C0 1A 00 A0 */	lfs f0, 0xa0(r26)
/* 801C244C  D0 1A 00 A8 */	stfs f0, 0xa8(r26)
/* 801C2450  7F 43 D3 78 */	mr r3, r26
/* 801C2454  38 9A 00 DC */	addi r4, r26, 0xdc
/* 801C2458  C0 42 A6 C8 */	lfs f2, lit_4460(r2)
/* 801C245C  C0 0D 89 00 */	lfs f0, mAllSizeX__8dMpath_c(r13)
/* 801C2460  EC 22 00 32 */	fmuls f1, f2, f0
/* 801C2464  C0 0D 89 04 */	lfs f0, mAllSizeZ__8dMpath_c(r13)
/* 801C2468  EC 42 00 32 */	fmuls f2, f2, f0
/* 801C246C  C0 62 A6 CC */	lfs f3, lit_4461(r2)
/* 801C2470  C0 82 A6 D0 */	lfs f4, lit_4462(r2)
/* 801C2474  81 9A 00 00 */	lwz r12, 0(r26)
/* 801C2478  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801C247C  7D 89 03 A6 */	mtctr r12
/* 801C2480  4E 80 04 21 */	bctrl 
/* 801C2484  C0 1A 00 DC */	lfs f0, 0xdc(r26)
/* 801C2488  D0 1A 00 BC */	stfs f0, 0xbc(r26)
/* 801C248C  7F 43 D3 78 */	mr r3, r26
/* 801C2490  38 9A 00 C8 */	addi r4, r26, 0xc8
/* 801C2494  38 BA 00 CC */	addi r5, r26, 0xcc
/* 801C2498  38 DA 00 D0 */	addi r6, r26, 0xd0
/* 801C249C  38 FA 00 D4 */	addi r7, r26, 0xd4
/* 801C24A0  39 1A 00 F8 */	addi r8, r26, 0xf8
/* 801C24A4  39 3A 00 F9 */	addi r9, r26, 0xf9
/* 801C24A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 801C24AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801C24B0  7D 89 03 A6 */	mtctr r12
/* 801C24B4  4E 80 04 21 */	bctrl 
/* 801C24B8  C0 1A 00 C8 */	lfs f0, 0xc8(r26)
/* 801C24BC  D0 0D 8B 0C */	stfs f0, m_zoomCenterMinX__20dMenu_StageMapCtrl_c(r13)
/* 801C24C0  C0 1A 00 CC */	lfs f0, 0xcc(r26)
/* 801C24C4  D0 0D 8B 10 */	stfs f0, m_zoomCenterMaxX__20dMenu_StageMapCtrl_c(r13)
/* 801C24C8  C0 1A 00 D0 */	lfs f0, 0xd0(r26)
/* 801C24CC  D0 0D 8B 14 */	stfs f0, m_zoomCenterMinZ__20dMenu_StageMapCtrl_c(r13)
/* 801C24D0  C0 1A 00 D4 */	lfs f0, 0xd4(r26)
/* 801C24D4  D0 0D 8B 18 */	stfs f0, m_zoomCenterMaxZ__20dMenu_StageMapCtrl_c(r13)
/* 801C24D8  38 00 00 00 */	li r0, 0
/* 801C24DC  98 1A 00 F5 */	stb r0, 0xf5(r26)
/* 801C24E0  7F 43 D3 78 */	mr r3, r26
/* 801C24E4  88 1A 00 F5 */	lbz r0, 0xf5(r26)
/* 801C24E8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C24EC  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BCCE4@ha */
/* 801C24F0  38 04 CC E4 */	addi r0, r4, init_process@l /* 0x803BCCE4@l */
/* 801C24F4  7D 80 2A 14 */	add r12, r0, r5
/* 801C24F8  48 19 FB 8D */	bl __ptmf_scall
/* 801C24FC  60 00 00 00 */	nop 
/* 801C2500  39 61 00 30 */	addi r11, r1, 0x30
/* 801C2504  48 19 FD 19 */	bl _restgpr_26
/* 801C2508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C250C  7C 08 03 A6 */	mtlr r0
/* 801C2510  38 21 00 30 */	addi r1, r1, 0x30
/* 801C2514  4E 80 00 20 */	blr 
