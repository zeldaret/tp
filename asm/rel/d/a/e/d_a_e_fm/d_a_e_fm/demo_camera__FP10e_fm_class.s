lbl_804F21F0:
/* 804F21F0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804F21F4  7C 08 02 A6 */	mflr r0
/* 804F21F8  90 01 01 14 */	stw r0, 0x114(r1)
/* 804F21FC  39 61 01 10 */	addi r11, r1, 0x110
/* 804F2200  4B E6 FF BC */	b _savegpr_21
/* 804F2204  7C 7E 1B 78 */	mr r30, r3
/* 804F2208  3C 80 80 50 */	lis r4, cNullVec__6Z2Calc@ha
/* 804F220C  3B 44 A9 50 */	addi r26, r4, cNullVec__6Z2Calc@l
/* 804F2210  3C 80 80 50 */	lis r4, lit_3777@ha
/* 804F2214  3B E4 A6 BC */	addi r31, r4, lit_3777@l
/* 804F2218  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804F221C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 804F2220  83 3B 5D AC */	lwz r25, 0x5dac(r27)
/* 804F2224  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 804F2228  7C 00 07 74 */	extsb r0, r0
/* 804F222C  38 9B 5D 74 */	addi r4, r27, 0x5d74
/* 804F2230  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804F2234  7F A4 00 2E */	lwzx r29, r4, r0
/* 804F2238  82 BB 5D 74 */	lwz r21, 0x5d74(r27)
/* 804F223C  3C 9E 00 02 */	addis r4, r30, 2
/* 804F2240  A8 04 AF F2 */	lha r0, -0x500e(r4)
/* 804F2244  2C 00 00 0E */	cmpwi r0, 0xe
/* 804F2248  41 82 09 B8 */	beq lbl_804F2C00
/* 804F224C  40 80 00 5C */	bge lbl_804F22A8
/* 804F2250  2C 00 00 05 */	cmpwi r0, 5
/* 804F2254  41 82 04 78 */	beq lbl_804F26CC
/* 804F2258  40 80 00 2C */	bge lbl_804F2284
/* 804F225C  2C 00 00 02 */	cmpwi r0, 2
/* 804F2260  41 82 01 6C */	beq lbl_804F23CC
/* 804F2264  40 80 00 14 */	bge lbl_804F2278
/* 804F2268  2C 00 00 00 */	cmpwi r0, 0
/* 804F226C  41 82 1A F8 */	beq lbl_804F3D64
/* 804F2270  40 80 00 90 */	bge lbl_804F2300
/* 804F2274  48 00 1A F0 */	b lbl_804F3D64
lbl_804F2278:
/* 804F2278  2C 00 00 04 */	cmpwi r0, 4
/* 804F227C  40 80 03 EC */	bge lbl_804F2668
/* 804F2280  48 00 02 D0 */	b lbl_804F2550
lbl_804F2284:
/* 804F2284  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F2288  41 82 05 90 */	beq lbl_804F2818
/* 804F228C  40 80 00 10 */	bge lbl_804F229C
/* 804F2290  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F2294  40 80 04 D4 */	bge lbl_804F2768
/* 804F2298  48 00 1A CC */	b lbl_804F3D64
lbl_804F229C:
/* 804F229C  2C 00 00 0D */	cmpwi r0, 0xd
/* 804F22A0  40 80 08 C0 */	bge lbl_804F2B60
/* 804F22A4  48 00 08 20 */	b lbl_804F2AC4
lbl_804F22A8:
/* 804F22A8  2C 00 00 34 */	cmpwi r0, 0x34
/* 804F22AC  41 82 13 A8 */	beq lbl_804F3654
/* 804F22B0  40 80 00 2C */	bge lbl_804F22DC
/* 804F22B4  2C 00 00 15 */	cmpwi r0, 0x15
/* 804F22B8  41 82 0C 74 */	beq lbl_804F2F2C
/* 804F22BC  40 80 00 10 */	bge lbl_804F22CC
/* 804F22C0  2C 00 00 14 */	cmpwi r0, 0x14
/* 804F22C4  40 80 0B DC */	bge lbl_804F2EA0
/* 804F22C8  48 00 1A 9C */	b lbl_804F3D64
lbl_804F22CC:
/* 804F22CC  2C 00 00 32 */	cmpwi r0, 0x32
/* 804F22D0  41 82 0E 30 */	beq lbl_804F3100
/* 804F22D4  40 80 0F 08 */	bge lbl_804F31DC
/* 804F22D8  48 00 1A 8C */	b lbl_804F3D64
lbl_804F22DC:
/* 804F22DC  2C 00 00 37 */	cmpwi r0, 0x37
/* 804F22E0  41 82 18 3C */	beq lbl_804F3B1C
/* 804F22E4  40 80 00 10 */	bge lbl_804F22F4
/* 804F22E8  2C 00 00 36 */	cmpwi r0, 0x36
/* 804F22EC  40 80 17 00 */	bge lbl_804F39EC
/* 804F22F0  48 00 14 4C */	b lbl_804F373C
lbl_804F22F4:
/* 804F22F4  2C 00 00 64 */	cmpwi r0, 0x64
/* 804F22F8  41 82 1A 10 */	beq lbl_804F3D08
/* 804F22FC  48 00 1A 68 */	b lbl_804F3D64
lbl_804F2300:
/* 804F2300  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804F2304  28 00 00 02 */	cmplwi r0, 2
/* 804F2308  41 82 00 28 */	beq lbl_804F2330
/* 804F230C  38 80 00 02 */	li r4, 2
/* 804F2310  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F2314  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F2318  38 C0 00 00 */	li r6, 0
/* 804F231C  4B B2 95 EC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804F2320  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804F2324  60 00 00 02 */	ori r0, r0, 2
/* 804F2328  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804F232C  48 00 1B 30 */	b lbl_804F3E5C
lbl_804F2330:
/* 804F2330  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F2334  4B C6 F1 9C */	b Stop__9dCamera_cFv
/* 804F2338  38 00 00 02 */	li r0, 2
/* 804F233C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2340  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F2344  38 00 00 00 */	li r0, 0
/* 804F2348  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F234C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F2350  48 00 83 45 */	bl changeOriginalDemo__9daPy_py_cFv
/* 804F2354  3C 7E 00 01 */	addis r3, r30, 1
/* 804F2358  88 03 48 E0 */	lbz r0, 0x48e0(r3)
/* 804F235C  7C 00 07 75 */	extsb. r0, r0
/* 804F2360  40 82 00 14 */	bne lbl_804F2374
/* 804F2364  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2368  88 03 AA B4 */	lbz r0, -0x554c(r3)
/* 804F236C  7C 00 07 75 */	extsb. r0, r0
/* 804F2370  41 82 00 2C */	beq lbl_804F239C
lbl_804F2374:
/* 804F2374  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F2378  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804F237C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F2380  41 82 00 1C */	beq lbl_804F239C
/* 804F2384  38 80 00 43 */	li r4, 0x43
/* 804F2388  38 A0 00 00 */	li r5, 0
/* 804F238C  38 C0 00 00 */	li r6, 0
/* 804F2390  38 E0 00 00 */	li r7, 0
/* 804F2394  48 00 82 ED */	bl changeDemoMode__9daPy_py_cFUliis
/* 804F2398  48 00 00 1C */	b lbl_804F23B4
lbl_804F239C:
/* 804F239C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F23A0  38 80 00 01 */	li r4, 1
/* 804F23A4  38 A0 00 00 */	li r5, 0
/* 804F23A8  38 C0 00 00 */	li r6, 0
/* 804F23AC  38 E0 00 00 */	li r7, 0
/* 804F23B0  48 00 82 D1 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_804F23B4:
/* 804F23B4  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 804F23B8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F23BC  D0 03 B0 4C */	stfs f0, -0x4fb4(r3)
/* 804F23C0  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F23C4  38 80 00 03 */	li r4, 3
/* 804F23C8  4B C7 0C 44 */	b SetTrimSize__9dCamera_cFl
lbl_804F23CC:
/* 804F23CC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F23D0  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F23D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F23D8  40 82 00 58 */	bne lbl_804F2430
/* 804F23DC  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F23E0  7C 00 07 74 */	extsb r0, r0
/* 804F23E4  1C 60 61 D4 */	mulli r3, r0, 0x61d4
/* 804F23E8  3C A3 00 01 */	addis r5, r3, 1
/* 804F23EC  38 A5 84 44 */	addi r5, r5, -31676
/* 804F23F0  7C BE 2A 14 */	add r5, r30, r5
/* 804F23F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070280@ha */
/* 804F23F8  38 03 02 80 */	addi r0, r3, 0x0280 /* 0x00070280@l */
/* 804F23FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F2400  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F2404  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F2408  80 63 00 00 */	lwz r3, 0(r3)
/* 804F240C  38 81 00 0C */	addi r4, r1, 0xc
/* 804F2410  38 C0 00 00 */	li r6, 0
/* 804F2414  38 E0 00 00 */	li r7, 0
/* 804F2418  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F241C  FC 40 08 90 */	fmr f2, f1
/* 804F2420  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 804F2424  FC 80 18 90 */	fmr f4, f3
/* 804F2428  39 00 00 00 */	li r8, 0
/* 804F242C  4B DB 95 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804F2430:
/* 804F2430  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F2434  7C 00 07 74 */	extsb r0, r0
/* 804F2438  1C 00 61 D4 */	mulli r0, r0, 0x61d4
/* 804F243C  7C BE 02 14 */	add r5, r30, r0
/* 804F2440  38 61 00 80 */	addi r3, r1, 0x80
/* 804F2444  38 85 24 24 */	addi r4, r5, 0x2424
/* 804F2448  3C A5 00 01 */	addis r5, r5, 1
/* 804F244C  38 A5 85 3C */	addi r5, r5, -31428
/* 804F2450  4B D7 46 E4 */	b __mi__4cXyzCFRC3Vec
/* 804F2454  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2458  38 81 00 80 */	addi r4, r1, 0x80
/* 804F245C  48 00 82 09 */	bl __as__4cXyzFRC4cXyz
/* 804F2460  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 804F2464  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 804F2468  4B D7 52 0C */	b cM_atan2s__Fff
/* 804F246C  7C 64 1B 78 */	mr r4, r3
/* 804F2470  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F2474  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F2478  80 63 00 00 */	lwz r3, 0(r3)
/* 804F247C  4B B1 9F 60 */	b mDoMtx_YrotS__FPA4_fs
/* 804F2480  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F2484  2C 00 00 02 */	cmpwi r0, 2
/* 804F2488  40 82 00 0C */	bne lbl_804F2494
/* 804F248C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804F2490  48 00 00 08 */	b lbl_804F2498
lbl_804F2494:
/* 804F2494  C0 1F 00 AC */	lfs f0, 0xac(r31)
lbl_804F2498:
/* 804F2498  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F249C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804F24A0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F24A4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 804F24A8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F24AC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F24B0  3C 9E 00 02 */	addis r4, r30, 2
/* 804F24B4  38 84 AF F8 */	addi r4, r4, -20488
/* 804F24B8  4B D7 EA 34 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F24BC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F24C0  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F24C4  7C 00 07 74 */	extsb r0, r0
/* 804F24C8  1C 80 61 D4 */	mulli r4, r0, 0x61d4
/* 804F24CC  3C 84 00 01 */	addis r4, r4, 1
/* 804F24D0  38 84 85 3C */	addi r4, r4, -31428
/* 804F24D4  7C 9E 22 14 */	add r4, r30, r4
/* 804F24D8  7C 65 1B 78 */	mr r5, r3
/* 804F24DC  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F24E0  38 63 AF F8 */	addi r3, r3, -20488
/* 804F24E4  4B E5 4B AC */	b PSVECAdd
/* 804F24E8  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F24EC  2C 00 00 02 */	cmpwi r0, 2
/* 804F24F0  40 82 00 0C */	bne lbl_804F24FC
/* 804F24F4  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804F24F8  48 00 00 08 */	b lbl_804F2500
lbl_804F24FC:
/* 804F24FC  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
lbl_804F2500:
/* 804F2500  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2504  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804F2508  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F250C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2510  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F2514  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2518  3C 9E 00 02 */	addis r4, r30, 2
/* 804F251C  38 84 B0 04 */	addi r4, r4, -20476
/* 804F2520  4B D7 E9 CC */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2524  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2528  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F252C  7C 00 07 74 */	extsb r0, r0
/* 804F2530  1C 80 61 D4 */	mulli r4, r0, 0x61d4
/* 804F2534  38 84 24 24 */	addi r4, r4, 0x2424
/* 804F2538  7C 9E 22 14 */	add r4, r30, r4
/* 804F253C  7C 65 1B 78 */	mr r5, r3
/* 804F2540  38 A5 B0 04 */	addi r5, r5, -20476
/* 804F2544  38 63 B0 04 */	addi r3, r3, -20476
/* 804F2548  4B E5 4B 48 */	b PSVECAdd
/* 804F254C  48 00 18 18 */	b lbl_804F3D64
lbl_804F2550:
/* 804F2550  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804F2554  48 00 7F FD */	bl abs__4cXyzCFv
/* 804F2558  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804F255C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2560  40 81 00 60 */	ble lbl_804F25C0
/* 804F2564  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2568  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F256C  48 00 80 F9 */	bl __as__4cXyzFRC4cXyz
/* 804F2570  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 804F2574  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 804F2578  4B D7 50 FC */	b cM_atan2s__Fff
/* 804F257C  7C 64 1B 78 */	mr r4, r3
/* 804F2580  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F2584  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F2588  80 63 00 00 */	lwz r3, 0(r3)
/* 804F258C  4B B1 9E 50 */	b mDoMtx_YrotS__FPA4_fs
/* 804F2590  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2594  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2598  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F259C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804F25A0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F25A4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F25A8  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F25AC  4B D7 E9 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F25B0  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 804F25B4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804F25B8  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 804F25BC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804F25C0:
/* 804F25C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F25C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F25C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804F25CC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804F25D0  4B B1 9E 0C */	b mDoMtx_YrotS__FPA4_fs
/* 804F25D4  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F25D8  2C 00 00 02 */	cmpwi r0, 2
/* 804F25DC  40 82 00 0C */	bne lbl_804F25E8
/* 804F25E0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 804F25E4  48 00 00 08 */	b lbl_804F25EC
lbl_804F25E8:
/* 804F25E8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
lbl_804F25EC:
/* 804F25EC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F25F0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 804F25F4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F25F8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804F25FC  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F2600  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2604  3C 9E 00 02 */	addis r4, r30, 2
/* 804F2608  38 84 AF F8 */	addi r4, r4, -20488
/* 804F260C  4B D7 E8 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2610  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2614  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F2618  7C 65 1B 78 */	mr r5, r3
/* 804F261C  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F2620  38 63 AF F8 */	addi r3, r3, -20488
/* 804F2624  4B E5 4A 6C */	b PSVECAdd
/* 804F2628  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F262C  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 804F2630  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804F2634  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F2638  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 804F263C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2640  3C 9E 00 02 */	addis r4, r30, 2
/* 804F2644  38 84 B0 04 */	addi r4, r4, -20476
/* 804F2648  4B D7 E8 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F264C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2650  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F2654  7C 65 1B 78 */	mr r5, r3
/* 804F2658  38 A5 B0 04 */	addi r5, r5, -20476
/* 804F265C  38 63 B0 04 */	addi r3, r3, -20476
/* 804F2660  4B E5 4A 30 */	b PSVECAdd
/* 804F2664  48 00 17 00 */	b lbl_804F3D64
lbl_804F2668:
/* 804F2668  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F266C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F2670  80 63 00 00 */	lwz r3, 0(r3)
/* 804F2674  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804F2678  4B B1 9D 64 */	b mDoMtx_YrotS__FPA4_fs
/* 804F267C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2680  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2684  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804F2688  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F268C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804F2690  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F2694  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2698  3C 9E 00 02 */	addis r4, r30, 2
/* 804F269C  38 84 B0 04 */	addi r4, r4, -20476
/* 804F26A0  4B D7 E8 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 804F26A4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F26A8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F26AC  7C 65 1B 78 */	mr r5, r3
/* 804F26B0  38 A5 B0 04 */	addi r5, r5, -20476
/* 804F26B4  38 63 B0 04 */	addi r3, r3, -20476
/* 804F26B8  4B E5 49 D8 */	b PSVECAdd
/* 804F26BC  3C 9E 00 02 */	addis r4, r30, 2
/* 804F26C0  A8 64 AF F2 */	lha r3, -0x500e(r4)
/* 804F26C4  38 03 00 01 */	addi r0, r3, 1
/* 804F26C8  B0 04 AF F2 */	sth r0, -0x500e(r4)
lbl_804F26CC:
/* 804F26CC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F26D0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F26D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804F26D8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804F26DC  4B B1 9D 00 */	b mDoMtx_YrotS__FPA4_fs
/* 804F26E0  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F26E4  2C 00 00 02 */	cmpwi r0, 2
/* 804F26E8  40 82 00 18 */	bne lbl_804F2700
/* 804F26EC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F26F0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F26F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804F26F8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F26FC  48 00 00 14 */	b lbl_804F2710
lbl_804F2700:
/* 804F2700  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 804F2704  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2708  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 804F270C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_804F2710:
/* 804F2710  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F2714  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F2718  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F271C  3C 9E 00 02 */	addis r4, r30, 2
/* 804F2720  38 84 AF F8 */	addi r4, r4, -20488
/* 804F2724  4B D7 E7 C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2728  3C 7E 00 02 */	addis r3, r30, 2
/* 804F272C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F2730  7C 65 1B 78 */	mr r5, r3
/* 804F2734  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F2738  38 63 AF F8 */	addi r3, r3, -20488
/* 804F273C  4B E5 49 54 */	b PSVECAdd
/* 804F2740  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2744  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2748  2C 00 00 22 */	cmpwi r0, 0x22
/* 804F274C  40 81 16 18 */	ble lbl_804F3D64
/* 804F2750  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 804F2754  C0 5F 00 C4 */	lfs f2, 0xc4(r31)
/* 804F2758  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 804F275C  38 63 B0 08 */	addi r3, r3, -20472
/* 804F2760  4B D7 D2 DC */	b cLib_addCalc2__FPffff
/* 804F2764  48 00 16 00 */	b lbl_804F3D64
lbl_804F2768:
/* 804F2768  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804F276C  28 00 00 02 */	cmplwi r0, 2
/* 804F2770  41 82 00 28 */	beq lbl_804F2798
/* 804F2774  38 80 00 02 */	li r4, 2
/* 804F2778  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F277C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F2780  38 C0 00 00 */	li r6, 0
/* 804F2784  4B B2 91 84 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804F2788  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804F278C  60 00 00 02 */	ori r0, r0, 2
/* 804F2790  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804F2794  48 00 16 C8 */	b lbl_804F3E5C
lbl_804F2798:
/* 804F2798  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F279C  4B C6 ED 34 */	b Stop__9dCamera_cFv
/* 804F27A0  38 00 00 0B */	li r0, 0xb
/* 804F27A4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F27A8  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F27AC  38 00 00 00 */	li r0, 0
/* 804F27B0  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F27B4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F27B8  48 00 7E DD */	bl changeOriginalDemo__9daPy_py_cFv
/* 804F27BC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804F27C0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F27C4  D0 03 B0 4C */	stfs f0, -0x4fb4(r3)
/* 804F27C8  38 63 AF F8 */	addi r3, r3, -20488
/* 804F27CC  38 95 00 D8 */	addi r4, r21, 0xd8
/* 804F27D0  48 00 7E 95 */	bl __as__4cXyzFRC4cXyz
/* 804F27D4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F27D8  38 63 B0 04 */	addi r3, r3, -20476
/* 804F27DC  38 95 00 E4 */	addi r4, r21, 0xe4
/* 804F27E0  48 00 7E 85 */	bl __as__4cXyzFRC4cXyz
/* 804F27E4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F27E8  D0 1E 07 78 */	stfs f0, 0x778(r30)
/* 804F27EC  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F27F0  38 80 00 03 */	li r4, 3
/* 804F27F4  4B C7 08 18 */	b SetTrimSize__9dCamera_cFl
/* 804F27F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F27FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F2800  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804F2804  7F C4 F3 78 */	mr r4, r30
/* 804F2808  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 804F280C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 804F2810  38 C0 00 00 */	li r6, 0
/* 804F2814  4B B5 01 00 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_804F2818:
/* 804F2818  3C 7E 00 02 */	addis r3, r30, 2
/* 804F281C  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2820  2C 00 00 08 */	cmpwi r0, 8
/* 804F2824  40 82 00 1C */	bne lbl_804F2840
/* 804F2828  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F282C  38 80 00 19 */	li r4, 0x19
/* 804F2830  38 A0 00 00 */	li r5, 0
/* 804F2834  38 C0 00 00 */	li r6, 0
/* 804F2838  38 E0 00 00 */	li r7, 0
/* 804F283C  48 00 7E 45 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_804F2840:
/* 804F2840  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2844  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2848  2C 00 00 3C */	cmpwi r0, 0x3c
/* 804F284C  41 80 15 18 */	blt lbl_804F3D64
/* 804F2850  40 82 00 F4 */	bne lbl_804F2944
/* 804F2854  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 804F2858  D0 43 B0 04 */	stfs f2, -0x4ffc(r3)
/* 804F285C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 804F2860  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F2864  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 804F2868  D0 03 B0 0C */	stfs f0, -0x4ff4(r3)
/* 804F286C  D0 43 AF F8 */	stfs f2, -0x5008(r3)
/* 804F2870  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 804F2874  D0 03 AF FC */	stfs f0, -0x5004(r3)
/* 804F2878  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 804F287C  D0 03 B0 00 */	stfs f0, -0x5000(r3)
/* 804F2880  D0 43 B0 1C */	stfs f2, -0x4fe4(r3)
/* 804F2884  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 804F2888  D0 03 B0 20 */	stfs f0, -0x4fe0(r3)
/* 804F288C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 804F2890  D0 03 B0 24 */	stfs f0, -0x4fdc(r3)
/* 804F2894  D0 43 B0 10 */	stfs f2, -0x4ff0(r3)
/* 804F2898  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 804F289C  D0 03 B0 14 */	stfs f0, -0x4fec(r3)
/* 804F28A0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 804F28A4  D0 03 B0 18 */	stfs f0, -0x4fe8(r3)
/* 804F28A8  C0 23 B0 10 */	lfs f1, -0x4ff0(r3)
/* 804F28AC  C0 03 AF F8 */	lfs f0, -0x5008(r3)
/* 804F28B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F28B4  FC 00 02 10 */	fabs f0, f0
/* 804F28B8  FC 00 00 18 */	frsp f0, f0
/* 804F28BC  D0 03 B0 28 */	stfs f0, -0x4fd8(r3)
/* 804F28C0  C0 23 B0 14 */	lfs f1, -0x4fec(r3)
/* 804F28C4  C0 03 AF FC */	lfs f0, -0x5004(r3)
/* 804F28C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F28CC  FC 00 02 10 */	fabs f0, f0
/* 804F28D0  FC 00 00 18 */	frsp f0, f0
/* 804F28D4  D0 03 B0 2C */	stfs f0, -0x4fd4(r3)
/* 804F28D8  C0 23 B0 18 */	lfs f1, -0x4fe8(r3)
/* 804F28DC  C0 03 B0 00 */	lfs f0, -0x5000(r3)
/* 804F28E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F28E4  FC 00 02 10 */	fabs f0, f0
/* 804F28E8  FC 00 00 18 */	frsp f0, f0
/* 804F28EC  D0 03 B0 30 */	stfs f0, -0x4fd0(r3)
/* 804F28F0  C0 23 B0 1C */	lfs f1, -0x4fe4(r3)
/* 804F28F4  C0 03 B0 04 */	lfs f0, -0x4ffc(r3)
/* 804F28F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F28FC  FC 00 02 10 */	fabs f0, f0
/* 804F2900  FC 00 00 18 */	frsp f0, f0
/* 804F2904  D0 03 B0 34 */	stfs f0, -0x4fcc(r3)
/* 804F2908  C0 23 B0 20 */	lfs f1, -0x4fe0(r3)
/* 804F290C  C0 03 B0 08 */	lfs f0, -0x4ff8(r3)
/* 804F2910  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2914  FC 00 02 10 */	fabs f0, f0
/* 804F2918  FC 00 00 18 */	frsp f0, f0
/* 804F291C  D0 03 B0 38 */	stfs f0, -0x4fc8(r3)
/* 804F2920  C0 23 B0 24 */	lfs f1, -0x4fdc(r3)
/* 804F2924  C0 03 B0 0C */	lfs f0, -0x4ff4(r3)
/* 804F2928  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F292C  FC 00 02 10 */	fabs f0, f0
/* 804F2930  FC 00 00 18 */	frsp f0, f0
/* 804F2934  D0 03 B0 3C */	stfs f0, -0x4fc4(r3)
/* 804F2938  D0 43 B0 50 */	stfs f2, -0x4fb0(r3)
/* 804F293C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 804F2940  D0 03 B0 4C */	stfs f0, -0x4fb4(r3)
lbl_804F2944:
/* 804F2944  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2948  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F294C  2C 00 00 78 */	cmpwi r0, 0x78
/* 804F2950  40 82 00 3C */	bne lbl_804F298C
/* 804F2954  7F 23 CB 78 */	mr r3, r25
/* 804F2958  38 80 00 02 */	li r4, 2
/* 804F295C  38 A0 00 01 */	li r5, 1
/* 804F2960  38 C0 00 00 */	li r6, 0
/* 804F2964  38 E0 00 00 */	li r7, 0
/* 804F2968  48 00 7D 19 */	bl changeDemoMode__9daPy_py_cFUliis
/* 804F296C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2970  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804F2974  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F2978  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804F297C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F2980  7F 23 CB 78 */	mr r3, r25
/* 804F2984  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F2988  48 00 7B AD */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
lbl_804F298C:
/* 804F298C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2990  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2994  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 804F2998  41 80 00 28 */	blt lbl_804F29C0
/* 804F299C  7F C3 F3 78 */	mr r3, r30
/* 804F29A0  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 804F29A4  4B FF F7 51 */	bl cam_3d_morf__FP10e_fm_classf
/* 804F29A8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F29AC  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 804F29B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F29B4  C0 7F 01 28 */	lfs f3, 0x128(r31)
/* 804F29B8  38 63 B0 50 */	addi r3, r3, -20400
/* 804F29BC  4B D7 D0 80 */	b cLib_addCalc2__FPffff
lbl_804F29C0:
/* 804F29C0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F29C4  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F29C8  2C 00 01 54 */	cmpwi r0, 0x154
/* 804F29CC  40 82 13 98 */	bne lbl_804F3D64
/* 804F29D0  38 00 00 0C */	li r0, 0xc
/* 804F29D4  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F29D8  38 00 00 00 */	li r0, 0
/* 804F29DC  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F29E0  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 804F29E4  D0 63 B0 04 */	stfs f3, -0x4ffc(r3)
/* 804F29E8  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 804F29EC  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F29F0  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 804F29F4  D0 03 B0 0C */	stfs f0, -0x4ff4(r3)
/* 804F29F8  D0 63 AF F8 */	stfs f3, -0x5008(r3)
/* 804F29FC  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 804F2A00  D0 43 AF FC */	stfs f2, -0x5004(r3)
/* 804F2A04  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 804F2A08  D0 23 B0 00 */	stfs f1, -0x5000(r3)
/* 804F2A0C  D0 63 B0 1C */	stfs f3, -0x4fe4(r3)
/* 804F2A10  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 804F2A14  D0 03 B0 20 */	stfs f0, -0x4fe0(r3)
/* 804F2A18  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 804F2A1C  D0 03 B0 24 */	stfs f0, -0x4fdc(r3)
/* 804F2A20  D0 63 B0 10 */	stfs f3, -0x4ff0(r3)
/* 804F2A24  D0 43 B0 14 */	stfs f2, -0x4fec(r3)
/* 804F2A28  D0 23 B0 18 */	stfs f1, -0x4fe8(r3)
/* 804F2A2C  C0 23 B0 10 */	lfs f1, -0x4ff0(r3)
/* 804F2A30  C0 03 AF F8 */	lfs f0, -0x5008(r3)
/* 804F2A34  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2A38  FC 00 02 10 */	fabs f0, f0
/* 804F2A3C  FC 00 00 18 */	frsp f0, f0
/* 804F2A40  D0 03 B0 28 */	stfs f0, -0x4fd8(r3)
/* 804F2A44  C0 23 B0 14 */	lfs f1, -0x4fec(r3)
/* 804F2A48  C0 03 AF FC */	lfs f0, -0x5004(r3)
/* 804F2A4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2A50  FC 00 02 10 */	fabs f0, f0
/* 804F2A54  FC 00 00 18 */	frsp f0, f0
/* 804F2A58  D0 03 B0 2C */	stfs f0, -0x4fd4(r3)
/* 804F2A5C  C0 23 B0 18 */	lfs f1, -0x4fe8(r3)
/* 804F2A60  C0 03 B0 00 */	lfs f0, -0x5000(r3)
/* 804F2A64  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2A68  FC 00 02 10 */	fabs f0, f0
/* 804F2A6C  FC 00 00 18 */	frsp f0, f0
/* 804F2A70  D0 03 B0 30 */	stfs f0, -0x4fd0(r3)
/* 804F2A74  C0 23 B0 1C */	lfs f1, -0x4fe4(r3)
/* 804F2A78  C0 03 B0 04 */	lfs f0, -0x4ffc(r3)
/* 804F2A7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2A80  FC 00 02 10 */	fabs f0, f0
/* 804F2A84  FC 00 00 18 */	frsp f0, f0
/* 804F2A88  D0 03 B0 34 */	stfs f0, -0x4fcc(r3)
/* 804F2A8C  C0 23 B0 20 */	lfs f1, -0x4fe0(r3)
/* 804F2A90  C0 03 B0 08 */	lfs f0, -0x4ff8(r3)
/* 804F2A94  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2A98  FC 00 02 10 */	fabs f0, f0
/* 804F2A9C  FC 00 00 18 */	frsp f0, f0
/* 804F2AA0  D0 03 B0 38 */	stfs f0, -0x4fc8(r3)
/* 804F2AA4  C0 23 B0 24 */	lfs f1, -0x4fdc(r3)
/* 804F2AA8  C0 03 B0 0C */	lfs f0, -0x4ff4(r3)
/* 804F2AAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F2AB0  FC 00 02 10 */	fabs f0, f0
/* 804F2AB4  FC 00 00 18 */	frsp f0, f0
/* 804F2AB8  D0 03 B0 3C */	stfs f0, -0x4fc4(r3)
/* 804F2ABC  D0 63 B0 50 */	stfs f3, -0x4fb0(r3)
/* 804F2AC0  48 00 12 A4 */	b lbl_804F3D64
lbl_804F2AC4:
/* 804F2AC4  A8 04 AF F4 */	lha r0, -0x500c(r4)
/* 804F2AC8  2C 00 00 32 */	cmpwi r0, 0x32
/* 804F2ACC  41 80 00 24 */	blt lbl_804F2AF0
/* 804F2AD0  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 804F2AD4  4B FF F6 21 */	bl cam_3d_morf__FP10e_fm_classf
/* 804F2AD8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2ADC  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 804F2AE0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F2AE4  C0 7F 01 48 */	lfs f3, 0x148(r31)
/* 804F2AE8  38 63 B0 50 */	addi r3, r3, -20400
/* 804F2AEC  4B D7 CF 50 */	b cLib_addCalc2__FPffff
lbl_804F2AF0:
/* 804F2AF0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2AF4  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2AF8  2C 00 00 FA */	cmpwi r0, 0xfa
/* 804F2AFC  40 82 12 68 */	bne lbl_804F3D64
/* 804F2B00  38 00 00 0D */	li r0, 0xd
/* 804F2B04  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F2B08  38 00 00 00 */	li r0, 0
/* 804F2B0C  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F2B10  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 804F2B14  D0 03 B0 04 */	stfs f0, -0x4ffc(r3)
/* 804F2B18  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 804F2B1C  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F2B20  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 804F2B24  D0 03 B0 0C */	stfs f0, -0x4ff4(r3)
/* 804F2B28  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 804F2B2C  D0 03 AF F8 */	stfs f0, -0x5008(r3)
/* 804F2B30  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 804F2B34  D0 03 AF FC */	stfs f0, -0x5004(r3)
/* 804F2B38  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 804F2B3C  D0 03 B0 00 */	stfs f0, -0x5000(r3)
/* 804F2B40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F2B44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F2B48  80 63 00 00 */	lwz r3, 0(r3)
/* 804F2B4C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F2B50  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002A@ha */
/* 804F2B54  38 84 00 2A */	addi r4, r4, 0x002A /* 0x0100002A@l */
/* 804F2B58  4B DB C9 44 */	b subBgmStart__8Z2SeqMgrFUl
/* 804F2B5C  48 00 12 08 */	b lbl_804F3D64
lbl_804F2B60:
/* 804F2B60  A8 04 AF F4 */	lha r0, -0x500c(r4)
/* 804F2B64  2C 00 00 5A */	cmpwi r0, 0x5a
/* 804F2B68  40 82 00 18 */	bne lbl_804F2B80
/* 804F2B6C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F2B70  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 804F2B74  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F2B78  38 00 27 10 */	li r0, 0x2710
/* 804F2B7C  B0 1E 07 70 */	sth r0, 0x770(r30)
lbl_804F2B80:
/* 804F2B80  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2B84  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2B88  2C 00 00 64 */	cmpwi r0, 0x64
/* 804F2B8C  40 82 00 30 */	bne lbl_804F2BBC
/* 804F2B90  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070296@ha */
/* 804F2B94  38 03 02 96 */	addi r0, r3, 0x0296 /* 0x00070296@l */
/* 804F2B98  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F2B9C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F2BA0  38 81 00 20 */	addi r4, r1, 0x20
/* 804F2BA4  38 A0 00 00 */	li r5, 0
/* 804F2BA8  38 C0 FF FF */	li r6, -1
/* 804F2BAC  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F2BB0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F2BB4  7D 89 03 A6 */	mtctr r12
/* 804F2BB8  4E 80 04 21 */	bctrl 
lbl_804F2BBC:
/* 804F2BBC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2BC0  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2BC4  2C 00 00 BE */	cmpwi r0, 0xbe
/* 804F2BC8  41 80 00 18 */	blt lbl_804F2BE0
/* 804F2BCC  38 7E 07 78 */	addi r3, r30, 0x778
/* 804F2BD0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F2BD4  FC 40 08 90 */	fmr f2, f1
/* 804F2BD8  C0 7F 01 64 */	lfs f3, 0x164(r31)
/* 804F2BDC  4B D7 CE 60 */	b cLib_addCalc2__FPffff
lbl_804F2BE0:
/* 804F2BE0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2BE4  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2BE8  2C 00 01 04 */	cmpwi r0, 0x104
/* 804F2BEC  40 82 11 78 */	bne lbl_804F3D64
/* 804F2BF0  38 00 00 0E */	li r0, 0xe
/* 804F2BF4  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F2BF8  38 00 00 00 */	li r0, 0
/* 804F2BFC  B0 03 AF F4 */	sth r0, -0x500c(r3)
lbl_804F2C00:
/* 804F2C00  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F2C04  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F2C08  80 63 00 00 */	lwz r3, 0(r3)
/* 804F2C0C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F2C10  4B B1 97 CC */	b mDoMtx_YrotS__FPA4_fs
/* 804F2C14  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 804F2C18  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2C1C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F2C20  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F2C24  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 804F2C28  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F2C2C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2C30  3C 9E 00 02 */	addis r4, r30, 2
/* 804F2C34  38 84 AF F8 */	addi r4, r4, -20488
/* 804F2C38  4B D7 E2 B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2C3C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2C40  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F2C44  7C 65 1B 78 */	mr r5, r3
/* 804F2C48  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F2C4C  38 63 AF F8 */	addi r3, r3, -20488
/* 804F2C50  4B E5 44 40 */	b PSVECAdd
/* 804F2C54  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F2C58  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 804F2C5C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804F2C60  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F2C64  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 804F2C68  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2C6C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804F2C70  4B D7 E2 7C */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2C74  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804F2C78  38 9E 05 38 */	addi r4, r30, 0x538
/* 804F2C7C  7C 65 1B 78 */	mr r5, r3
/* 804F2C80  4B E5 44 10 */	b PSVECAdd
/* 804F2C84  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2C88  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2C8C  2C 00 00 00 */	cmpwi r0, 0
/* 804F2C90  40 82 00 14 */	bne lbl_804F2CA4
/* 804F2C94  38 63 B0 04 */	addi r3, r3, -20476
/* 804F2C98  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804F2C9C  48 00 79 C9 */	bl __as__4cXyzFRC4cXyz
/* 804F2CA0  48 00 00 48 */	b lbl_804F2CE8
lbl_804F2CA4:
/* 804F2CA4  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804F2CA8  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F2CAC  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 804F2CB0  38 63 B0 04 */	addi r3, r3, -20476
/* 804F2CB4  4B D7 CD 88 */	b cLib_addCalc2__FPffff
/* 804F2CB8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2CBC  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804F2CC0  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F2CC4  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 804F2CC8  38 63 B0 08 */	addi r3, r3, -20472
/* 804F2CCC  4B D7 CD 70 */	b cLib_addCalc2__FPffff
/* 804F2CD0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2CD4  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804F2CD8  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F2CDC  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 804F2CE0  38 63 B0 0C */	addi r3, r3, -20468
/* 804F2CE4  4B D7 CD 58 */	b cLib_addCalc2__FPffff
lbl_804F2CE8:
/* 804F2CE8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2CEC  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2CF0  2C 00 00 3C */	cmpwi r0, 0x3c
/* 804F2CF4  40 82 00 94 */	bne lbl_804F2D88
/* 804F2CF8  7F C3 F3 78 */	mr r3, r30
/* 804F2CFC  38 80 00 1F */	li r4, 0x1f
/* 804F2D00  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804F2D04  38 A0 00 00 */	li r5, 0
/* 804F2D08  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F2D0C  4B FF CA FD */	bl anm_init__FP10e_fm_classifUcf
/* 804F2D10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070281@ha */
/* 804F2D14  38 03 02 81 */	addi r0, r3, 0x0281 /* 0x00070281@l */
/* 804F2D18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F2D1C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F2D20  38 81 00 1C */	addi r4, r1, 0x1c
/* 804F2D24  38 A0 FF FF */	li r5, -1
/* 804F2D28  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F2D2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F2D30  7D 89 03 A6 */	mtctr r12
/* 804F2D34  4E 80 04 21 */	bctrl 
/* 804F2D38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070282@ha */
/* 804F2D3C  38 03 02 82 */	addi r0, r3, 0x0282 /* 0x00070282@l */
/* 804F2D40  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F2D44  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F2D48  38 81 00 18 */	addi r4, r1, 0x18
/* 804F2D4C  38 A0 00 00 */	li r5, 0
/* 804F2D50  38 C0 FF FF */	li r6, -1
/* 804F2D54  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F2D58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F2D5C  7D 89 03 A6 */	mtctr r12
/* 804F2D60  4E 80 04 21 */	bctrl 
/* 804F2D64  38 00 00 02 */	li r0, 2
/* 804F2D68  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F2D6C  38 00 00 05 */	li r0, 5
/* 804F2D70  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F2D74  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2D78  80 7E 06 0C */	lwz r3, 0x60c(r30)
/* 804F2D7C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F2D80  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 804F2D84  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_804F2D88:
/* 804F2D88  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2D8C  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2D90  2C 00 01 A4 */	cmpwi r0, 0x1a4
/* 804F2D94  40 82 00 1C */	bne lbl_804F2DB0
/* 804F2D98  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F2D9C  38 80 00 17 */	li r4, 0x17
/* 804F2DA0  38 A0 00 01 */	li r5, 1
/* 804F2DA4  38 C0 00 02 */	li r6, 2
/* 804F2DA8  38 E0 00 00 */	li r7, 0
/* 804F2DAC  48 00 78 D5 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_804F2DB0:
/* 804F2DB0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2DB4  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2DB8  2C 00 00 A3 */	cmpwi r0, 0xa3
/* 804F2DBC  41 82 00 14 */	beq lbl_804F2DD0
/* 804F2DC0  2C 00 00 CB */	cmpwi r0, 0xcb
/* 804F2DC4  41 82 00 0C */	beq lbl_804F2DD0
/* 804F2DC8  2C 00 03 19 */	cmpwi r0, 0x319
/* 804F2DCC  40 82 00 34 */	bne lbl_804F2E00
lbl_804F2DD0:
/* 804F2DD0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F2DD4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 804F2DD8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F2DDC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804F2DE0  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 804F2DE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F2DE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F2DEC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F2DF0  38 80 00 03 */	li r4, 3
/* 804F2DF4  38 A0 00 01 */	li r5, 1
/* 804F2DF8  38 C1 00 74 */	addi r6, r1, 0x74
/* 804F2DFC  4B B7 CD 14 */	b StartQuake__12dVibration_cFii4cXyz
lbl_804F2E00:
/* 804F2E00  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2E04  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2E08  2C 00 00 C3 */	cmpwi r0, 0xc3
/* 804F2E0C  41 82 00 14 */	beq lbl_804F2E20
/* 804F2E10  2C 00 01 01 */	cmpwi r0, 0x101
/* 804F2E14  41 82 00 0C */	beq lbl_804F2E20
/* 804F2E18  2C 00 03 72 */	cmpwi r0, 0x372
/* 804F2E1C  40 82 00 18 */	bne lbl_804F2E34
lbl_804F2E20:
/* 804F2E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F2E24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F2E28  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F2E2C  38 80 00 1F */	li r4, 0x1f
/* 804F2E30  4B B7 CF 64 */	b StopQuake__12dVibration_cFi
lbl_804F2E34:
/* 804F2E34  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2E38  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2E3C  2C 00 03 24 */	cmpwi r0, 0x324
/* 804F2E40  40 82 00 1C */	bne lbl_804F2E5C
/* 804F2E44  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F2E48  38 80 00 22 */	li r4, 0x22
/* 804F2E4C  38 A0 00 00 */	li r5, 0
/* 804F2E50  38 C0 00 00 */	li r6, 0
/* 804F2E54  38 E0 00 00 */	li r7, 0
/* 804F2E58  48 00 78 29 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_804F2E5C:
/* 804F2E5C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2E60  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F2E64  2C 00 01 94 */	cmpwi r0, 0x194
/* 804F2E68  40 82 0E FC */	bne lbl_804F3D64
/* 804F2E6C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F2E70  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 804F2E74  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F2E78  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804F2E7C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 804F2E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F2E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F2E88  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F2E8C  38 80 00 05 */	li r4, 5
/* 804F2E90  38 A0 00 01 */	li r5, 1
/* 804F2E94  38 C1 00 68 */	addi r6, r1, 0x68
/* 804F2E98  4B B7 CB 8C */	b StartShock__12dVibration_cFii4cXyz
/* 804F2E9C  48 00 0E C8 */	b lbl_804F3D64
lbl_804F2EA0:
/* 804F2EA0  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804F2EA4  28 00 00 02 */	cmplwi r0, 2
/* 804F2EA8  41 82 00 28 */	beq lbl_804F2ED0
/* 804F2EAC  38 80 00 02 */	li r4, 2
/* 804F2EB0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F2EB4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F2EB8  38 C0 00 00 */	li r6, 0
/* 804F2EBC  4B B2 8A 4C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804F2EC0  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804F2EC4  60 00 00 02 */	ori r0, r0, 2
/* 804F2EC8  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804F2ECC  48 00 0F 90 */	b lbl_804F3E5C
lbl_804F2ED0:
/* 804F2ED0  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F2ED4  4B C6 E5 FC */	b Stop__9dCamera_cFv
/* 804F2ED8  38 00 00 15 */	li r0, 0x15
/* 804F2EDC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2EE0  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F2EE4  38 00 00 00 */	li r0, 0
/* 804F2EE8  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F2EEC  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F2EF0  48 00 77 A5 */	bl changeOriginalDemo__9daPy_py_cFv
/* 804F2EF4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F2EF8  38 80 00 01 */	li r4, 1
/* 804F2EFC  38 A0 00 00 */	li r5, 0
/* 804F2F00  38 C0 00 00 */	li r6, 0
/* 804F2F04  38 E0 00 00 */	li r7, 0
/* 804F2F08  48 00 77 79 */	bl changeDemoMode__9daPy_py_cFUliis
/* 804F2F0C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 804F2F10  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2F14  D0 03 B0 4C */	stfs f0, -0x4fb4(r3)
/* 804F2F18  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2F1C  D0 03 B0 50 */	stfs f0, -0x4fb0(r3)
/* 804F2F20  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F2F24  38 80 00 03 */	li r4, 3
/* 804F2F28  4B C7 00 E4 */	b SetTrimSize__9dCamera_cFl
lbl_804F2F2C:
/* 804F2F2C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804F2F30  48 00 76 21 */	bl abs__4cXyzCFv
/* 804F2F34  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804F2F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2F3C  40 81 00 60 */	ble lbl_804F2F9C
/* 804F2F40  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2F44  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F2F48  48 00 77 1D */	bl __as__4cXyzFRC4cXyz
/* 804F2F4C  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 804F2F50  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 804F2F54  4B D7 47 20 */	b cM_atan2s__Fff
/* 804F2F58  7C 64 1B 78 */	mr r4, r3
/* 804F2F5C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F2F60  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F2F64  80 63 00 00 */	lwz r3, 0(r3)
/* 804F2F68  4B B1 94 74 */	b mDoMtx_YrotS__FPA4_fs
/* 804F2F6C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F2F70  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2F74  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F2F78  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804F2F7C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F2F80  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2F84  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F2F88  4B D7 DF 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2F8C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 804F2F90  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804F2F94  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 804F2F98  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804F2F9C:
/* 804F2F9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F2FA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F2FA4  80 63 00 00 */	lwz r3, 0(r3)
/* 804F2FA8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804F2FAC  4B B1 94 30 */	b mDoMtx_YrotS__FPA4_fs
/* 804F2FB0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F2FB4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F2FB8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804F2FBC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F2FC0  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 804F2FC4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F2FC8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F2FCC  3C 9E 00 02 */	addis r4, r30, 2
/* 804F2FD0  38 84 AF F8 */	addi r4, r4, -20488
/* 804F2FD4  4B D7 DF 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F2FD8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F2FDC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F2FE0  7C 65 1B 78 */	mr r5, r3
/* 804F2FE4  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F2FE8  38 63 AF F8 */	addi r3, r3, -20488
/* 804F2FEC  4B E5 40 A4 */	b PSVECAdd
/* 804F2FF0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804F2FF4  38 9E 05 38 */	addi r4, r30, 0x538
/* 804F2FF8  48 00 76 6D */	bl __as__4cXyzFRC4cXyz
/* 804F2FFC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3000  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3004  2C 00 00 6E */	cmpwi r0, 0x6e
/* 804F3008  40 80 00 80 */	bge lbl_804F3088
/* 804F300C  7C 00 07 35 */	extsh. r0, r0
/* 804F3010  40 82 00 28 */	bne lbl_804F3038
/* 804F3014  38 63 B0 04 */	addi r3, r3, -20476
/* 804F3018  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804F301C  48 00 76 49 */	bl __as__4cXyzFRC4cXyz
/* 804F3020  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3024  C0 23 B0 08 */	lfs f1, -0x4ff8(r3)
/* 804F3028  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804F302C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F3030  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F3034  48 00 0D 30 */	b lbl_804F3D64
lbl_804F3038:
/* 804F3038  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804F303C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804F3040  EC 21 00 28 */	fsubs f1, f1, f0
/* 804F3044  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F3048  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804F304C  38 63 B0 08 */	addi r3, r3, -20472
/* 804F3050  4B D7 C9 EC */	b cLib_addCalc2__FPffff
/* 804F3054  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3058  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804F305C  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F3060  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804F3064  38 63 B0 04 */	addi r3, r3, -20476
/* 804F3068  4B D7 C9 D4 */	b cLib_addCalc2__FPffff
/* 804F306C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3070  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804F3074  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F3078  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804F307C  38 63 B0 0C */	addi r3, r3, -20468
/* 804F3080  4B D7 C9 BC */	b cLib_addCalc2__FPffff
/* 804F3084  48 00 0C E0 */	b lbl_804F3D64
lbl_804F3088:
/* 804F3088  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804F308C  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 804F3090  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 804F3094  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F3098  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F309C  38 63 B0 04 */	addi r3, r3, -20476
/* 804F30A0  4B D7 C9 9C */	b cLib_addCalc2__FPffff
/* 804F30A4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F30A8  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804F30AC  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 804F30B0  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 804F30B4  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F30B8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F30BC  38 63 B0 08 */	addi r3, r3, -20472
/* 804F30C0  4B D7 C9 7C */	b cLib_addCalc2__FPffff
/* 804F30C4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F30C8  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804F30CC  C0 5F 01 6C */	lfs f2, 0x16c(r31)
/* 804F30D0  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 804F30D4  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F30D8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F30DC  38 63 B0 0C */	addi r3, r3, -20468
/* 804F30E0  4B D7 C9 5C */	b cLib_addCalc2__FPffff
/* 804F30E4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F30E8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F30EC  FC 40 08 90 */	fmr f2, f1
/* 804F30F0  C0 7F 01 20 */	lfs f3, 0x120(r31)
/* 804F30F4  38 63 B0 50 */	addi r3, r3, -20400
/* 804F30F8  4B D7 C9 44 */	b cLib_addCalc2__FPffff
/* 804F30FC  48 00 0C 68 */	b lbl_804F3D64
lbl_804F3100:
/* 804F3100  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 804F3104  28 00 00 02 */	cmplwi r0, 2
/* 804F3108  41 82 00 28 */	beq lbl_804F3130
/* 804F310C  38 80 00 02 */	li r4, 2
/* 804F3110  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F3114  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F3118  38 C0 00 00 */	li r6, 0
/* 804F311C  4B B2 87 EC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 804F3120  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 804F3124  60 00 00 02 */	ori r0, r0, 2
/* 804F3128  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 804F312C  48 00 0D 30 */	b lbl_804F3E5C
lbl_804F3130:
/* 804F3130  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F3134  4B C6 E3 9C */	b Stop__9dCamera_cFv
/* 804F3138  38 00 00 33 */	li r0, 0x33
/* 804F313C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3140  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F3144  38 00 00 00 */	li r0, 0
/* 804F3148  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F314C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F3150  48 00 75 45 */	bl changeOriginalDemo__9daPy_py_cFv
/* 804F3154  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 804F3158  3C 7E 00 02 */	addis r3, r30, 2
/* 804F315C  D0 03 B0 4C */	stfs f0, -0x4fb4(r3)
/* 804F3160  38 00 00 00 */	li r0, 0
/* 804F3164  B0 1E 07 70 */	sth r0, 0x770(r30)
/* 804F3168  B0 03 AF F6 */	sth r0, -0x500a(r3)
/* 804F316C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3170  D0 03 B0 70 */	stfs f0, -0x4f90(r3)
/* 804F3174  D0 03 B0 74 */	stfs f0, -0x4f8c(r3)
/* 804F3178  D0 03 B0 6C */	stfs f0, -0x4f94(r3)
/* 804F317C  D0 03 B0 68 */	stfs f0, -0x4f98(r3)
/* 804F3180  D0 03 B0 54 */	stfs f0, -0x4fac(r3)
/* 804F3184  D0 03 B0 50 */	stfs f0, -0x4fb0(r3)
/* 804F3188  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F318C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F3190  80 63 00 00 */	lwz r3, 0(r3)
/* 804F3194  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F3198  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200001E@ha */
/* 804F319C  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0200001E@l */
/* 804F31A0  4B DB C9 F4 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 804F31A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804F31A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804F31AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804F31B0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F31B4  4B DB CC 64 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 804F31B8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F31BC  38 80 00 17 */	li r4, 0x17
/* 804F31C0  38 A0 00 01 */	li r5, 1
/* 804F31C4  38 C0 00 02 */	li r6, 2
/* 804F31C8  38 E0 00 00 */	li r7, 0
/* 804F31CC  48 00 74 B5 */	bl changeDemoMode__9daPy_py_cFUliis
/* 804F31D0  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F31D4  38 80 00 03 */	li r4, 3
/* 804F31D8  4B C6 FE 34 */	b SetTrimSize__9dCamera_cFl
lbl_804F31DC:
/* 804F31DC  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 804F31E0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804F31E4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 804F31E8  3B 40 00 00 */	li r26, 0
/* 804F31EC  3A C0 00 00 */	li r22, 0
lbl_804F31F0:
/* 804F31F0  3B 60 00 00 */	li r27, 0
/* 804F31F4  3A E0 00 00 */	li r23, 0
/* 804F31F8  7F 1E B2 14 */	add r24, r30, r22
/* 804F31FC  3E B8 00 01 */	addis r21, r24, 1
/* 804F3200  48 00 00 3C */	b lbl_804F323C
lbl_804F3204:
/* 804F3204  7C 98 BA 14 */	add r4, r24, r23
/* 804F3208  C0 24 24 30 */	lfs f1, 0x2430(r4)
/* 804F320C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804F3210  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F3214  D0 04 24 30 */	stfs f0, 0x2430(r4)
/* 804F3218  C0 24 24 38 */	lfs f1, 0x2438(r4)
/* 804F321C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804F3220  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F3224  D0 04 24 38 */	stfs f0, 0x2438(r4)
/* 804F3228  38 64 25 68 */	addi r3, r4, 0x2568
/* 804F322C  38 84 24 30 */	addi r4, r4, 0x2430
/* 804F3230  48 00 74 35 */	bl __as__4cXyzFRC4cXyz
/* 804F3234  3B 7B 00 01 */	addi r27, r27, 1
/* 804F3238  3A F7 00 0C */	addi r23, r23, 0xc
lbl_804F323C:
/* 804F323C  80 75 85 8C */	lwz r3, -0x7a74(r21)
/* 804F3240  38 03 FF FF */	addi r0, r3, -1
/* 804F3244  7C 1B 00 00 */	cmpw r27, r0
/* 804F3248  41 80 FF BC */	blt lbl_804F3204
/* 804F324C  3B 5A 00 01 */	addi r26, r26, 1
/* 804F3250  2C 1A 00 04 */	cmpwi r26, 4
/* 804F3254  3A D6 61 D4 */	addi r22, r22, 0x61d4
/* 804F3258  41 80 FF 98 */	blt lbl_804F31F0
/* 804F325C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3260  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804F3264  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804F3268  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F326C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F3270  80 63 00 00 */	lwz r3, 0(r3)
/* 804F3274  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F3278  4B B1 91 64 */	b mDoMtx_YrotS__FPA4_fs
/* 804F327C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3280  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3284  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F3288  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 804F328C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3290  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3294  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F3298  4B D7 DC 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F329C  38 61 00 BC */	addi r3, r1, 0xbc
/* 804F32A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F32A4  7C 65 1B 78 */	mr r5, r3
/* 804F32A8  4B E5 3D E8 */	b PSVECAdd
/* 804F32AC  7F 23 CB 78 */	mr r3, r25
/* 804F32B0  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F32B4  A8 BE 04 B6 */	lha r5, 0x4b6(r30)
/* 804F32B8  3C A5 00 01 */	addis r5, r5, 1
/* 804F32BC  38 05 80 00 */	addi r0, r5, -32768
/* 804F32C0  7C 05 07 34 */	extsh r5, r0
/* 804F32C4  38 C0 00 00 */	li r6, 0
/* 804F32C8  81 99 06 28 */	lwz r12, 0x628(r25)
/* 804F32CC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 804F32D0  7D 89 03 A6 */	mtctr r12
/* 804F32D4  4E 80 04 21 */	bctrl 
/* 804F32D8  3C BE 00 02 */	addis r5, r30, 2
/* 804F32DC  A8 05 AF F4 */	lha r0, -0x500c(r5)
/* 804F32E0  2C 00 01 A4 */	cmpwi r0, 0x1a4
/* 804F32E4  40 80 01 04 */	bge lbl_804F33E8
/* 804F32E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F32EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F32F0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F32F4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F32F8  4B B1 90 E4 */	b mDoMtx_YrotS__FPA4_fs
/* 804F32FC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804F3300  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3304  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F3308  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F330C  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 804F3310  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3314  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3318  3C 9E 00 02 */	addis r4, r30, 2
/* 804F331C  38 84 AF F8 */	addi r4, r4, -20488
/* 804F3320  4B D7 DB CC */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3324  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3328  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F332C  7C 65 1B 78 */	mr r5, r3
/* 804F3330  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F3334  38 63 AF F8 */	addi r3, r3, -20488
/* 804F3338  4B E5 3D 58 */	b PSVECAdd
/* 804F333C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F3340  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 804F3344  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3348  C0 04 B0 74 */	lfs f0, -0x4f8c(r4)
/* 804F334C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F3350  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 804F3354  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3358  38 84 B0 40 */	addi r4, r4, -20416
/* 804F335C  4B D7 DB 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3360  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3364  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3368  2C 00 00 00 */	cmpwi r0, 0
/* 804F336C  40 82 00 30 */	bne lbl_804F339C
/* 804F3370  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F3374  7C 65 1B 78 */	mr r5, r3
/* 804F3378  38 A5 B0 40 */	addi r5, r5, -20416
/* 804F337C  38 63 B0 40 */	addi r3, r3, -20416
/* 804F3380  4B E5 3D 10 */	b PSVECAdd
/* 804F3384  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3388  C0 23 B0 48 */	lfs f1, -0x4fb8(r3)
/* 804F338C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 804F3390  EC 01 00 2A */	fadds f0, f1, f0
/* 804F3394  D0 03 B0 48 */	stfs f0, -0x4fb8(r3)
/* 804F3398  48 00 00 18 */	b lbl_804F33B0
lbl_804F339C:
/* 804F339C  38 9E 05 38 */	addi r4, r30, 0x538
/* 804F33A0  7C 65 1B 78 */	mr r5, r3
/* 804F33A4  38 A5 B0 40 */	addi r5, r5, -20416
/* 804F33A8  38 63 B0 40 */	addi r3, r3, -20416
/* 804F33AC  4B E5 3C E4 */	b PSVECAdd
lbl_804F33B0:
/* 804F33B0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804F33B4  3C 9E 00 02 */	addis r4, r30, 2
/* 804F33B8  38 84 B0 40 */	addi r4, r4, -20416
/* 804F33BC  48 00 72 A9 */	bl __as__4cXyzFRC4cXyz
/* 804F33C0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F33C4  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F33C8  2C 00 00 DC */	cmpwi r0, 0xdc
/* 804F33CC  40 81 01 90 */	ble lbl_804F355C
/* 804F33D0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 804F33D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F33D8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804F33DC  38 63 B0 74 */	addi r3, r3, -20364
/* 804F33E0  4B D7 C6 5C */	b cLib_addCalc2__FPffff
/* 804F33E4  48 00 01 78 */	b lbl_804F355C
lbl_804F33E8:
/* 804F33E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F33EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F33F0  80 63 00 00 */	lwz r3, 0(r3)
/* 804F33F4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F33F8  A8 05 AF F6 */	lha r0, -0x500a(r5)
/* 804F33FC  7C 04 02 14 */	add r0, r4, r0
/* 804F3400  7C 04 07 34 */	extsh r4, r0
/* 804F3404  4B B1 8F D8 */	b mDoMtx_YrotS__FPA4_fs
/* 804F3408  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804F340C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3410  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 804F3414  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3418  C0 04 B0 68 */	lfs f0, -0x4f98(r4)
/* 804F341C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F3420  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F3424  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 804F3428  C0 04 B0 6C */	lfs f0, -0x4f94(r4)
/* 804F342C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F3430  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3434  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3438  38 84 AF F8 */	addi r4, r4, -20488
/* 804F343C  4B D7 DA B0 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3440  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3444  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F3448  7C 65 1B 78 */	mr r5, r3
/* 804F344C  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F3450  38 63 AF F8 */	addi r3, r3, -20488
/* 804F3454  4B E5 3C 3C */	b PSVECAdd
/* 804F3458  3C 7E 00 02 */	addis r3, r30, 2
/* 804F345C  C0 03 B0 70 */	lfs f0, -0x4f90(r3)
/* 804F3460  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3464  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804F3468  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F346C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3470  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3474  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3478  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804F347C  4B D7 DA 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3480  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804F3484  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3488  7C 65 1B 78 */	mr r5, r3
/* 804F348C  38 84 B0 40 */	addi r4, r4, -20416
/* 804F3490  4B E5 3C 00 */	b PSVECAdd
/* 804F3494  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3498  38 80 4E 20 */	li r4, 0x4e20
/* 804F349C  38 A0 00 08 */	li r5, 8
/* 804F34A0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 804F34A4  C0 03 B0 54 */	lfs f0, -0x4fac(r3)
/* 804F34A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F34AC  FC 00 00 1E */	fctiwz f0, f0
/* 804F34B0  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 804F34B4  80 C1 00 DC */	lwz r6, 0xdc(r1)
/* 804F34B8  38 63 AF F6 */	addi r3, r3, -20490
/* 804F34BC  4B D7 D1 4C */	b cLib_addCalcAngleS2__FPssss
/* 804F34C0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F34C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F34C8  FC 40 08 90 */	fmr f2, f1
/* 804F34CC  C0 7F 01 64 */	lfs f3, 0x164(r31)
/* 804F34D0  38 63 B0 54 */	addi r3, r3, -20396
/* 804F34D4  4B D7 C5 68 */	b cLib_addCalc2__FPffff
/* 804F34D8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F34DC  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F34E0  2C 00 01 D6 */	cmpwi r0, 0x1d6
/* 804F34E4  40 81 00 78 */	ble lbl_804F355C
/* 804F34E8  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 804F34EC  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 804F34F0  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 804F34F4  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F34F8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F34FC  38 63 B0 68 */	addi r3, r3, -20376
/* 804F3500  4B D7 C5 3C */	b cLib_addCalc2__FPffff
/* 804F3504  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3508  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 804F350C  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 804F3510  C0 7F 01 74 */	lfs f3, 0x174(r31)
/* 804F3514  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F3518  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F351C  38 63 B0 70 */	addi r3, r3, -20368
/* 804F3520  4B D7 C5 1C */	b cLib_addCalc2__FPffff
/* 804F3524  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3528  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 804F352C  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 804F3530  C0 7F 00 C0 */	lfs f3, 0xc0(r31)
/* 804F3534  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F3538  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F353C  38 63 B0 6C */	addi r3, r3, -20372
/* 804F3540  4B D7 C4 FC */	b cLib_addCalc2__FPffff
/* 804F3544  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3548  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F354C  FC 40 08 90 */	fmr f2, f1
/* 804F3550  C0 7F 01 78 */	lfs f3, 0x178(r31)
/* 804F3554  38 63 B0 50 */	addi r3, r3, -20400
/* 804F3558  4B D7 C4 E4 */	b cLib_addCalc2__FPffff
lbl_804F355C:
/* 804F355C  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 804F3560  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804F3564  EC 21 00 32 */	fmuls f1, f1, f0
/* 804F3568  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 804F356C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3570  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3574  2C 00 00 00 */	cmpwi r0, 0
/* 804F3578  40 82 00 14 */	bne lbl_804F358C
/* 804F357C  38 63 B0 04 */	addi r3, r3, -20476
/* 804F3580  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804F3584  48 00 70 E1 */	bl __as__4cXyzFRC4cXyz
/* 804F3588  48 00 00 44 */	b lbl_804F35CC
lbl_804F358C:
/* 804F358C  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F3590  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 804F3594  38 63 B0 04 */	addi r3, r3, -20476
/* 804F3598  4B D7 C4 A4 */	b cLib_addCalc2__FPffff
/* 804F359C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F35A0  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 804F35A4  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F35A8  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 804F35AC  38 63 B0 08 */	addi r3, r3, -20472
/* 804F35B0  4B D7 C4 8C */	b cLib_addCalc2__FPffff
/* 804F35B4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F35B8  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 804F35BC  C0 5F 01 20 */	lfs f2, 0x120(r31)
/* 804F35C0  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 804F35C4  38 63 B0 0C */	addi r3, r3, -20468
/* 804F35C8  4B D7 C4 74 */	b cLib_addCalc2__FPffff
lbl_804F35CC:
/* 804F35CC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F35D0  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F35D4  2C 00 02 80 */	cmpwi r0, 0x280
/* 804F35D8  40 82 00 0C */	bne lbl_804F35E4
/* 804F35DC  38 00 00 00 */	li r0, 0
/* 804F35E0  B0 1E 07 70 */	sth r0, 0x770(r30)
lbl_804F35E4:
/* 804F35E4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F35E8  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F35EC  2C 00 02 9C */	cmpwi r0, 0x29c
/* 804F35F0  40 82 00 14 */	bne lbl_804F3604
/* 804F35F4  38 00 00 02 */	li r0, 2
/* 804F35F8  98 1E 18 2C */	stb r0, 0x182c(r30)
/* 804F35FC  38 00 00 01 */	li r0, 1
/* 804F3600  98 1E 18 2D */	stb r0, 0x182d(r30)
lbl_804F3604:
/* 804F3604  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3608  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F360C  2C 00 02 19 */	cmpwi r0, 0x219
/* 804F3610  40 82 00 14 */	bne lbl_804F3624
/* 804F3614  38 00 00 03 */	li r0, 3
/* 804F3618  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 804F361C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F3620  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
lbl_804F3624:
/* 804F3624  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3628  A8 04 AF F4 */	lha r0, -0x500c(r4)
/* 804F362C  2C 00 02 A6 */	cmpwi r0, 0x2a6
/* 804F3630  40 82 07 34 */	bne lbl_804F3D64
/* 804F3634  38 00 00 01 */	li r0, 1
/* 804F3638  3C 60 80 50 */	lis r3, demo_stop@ha
/* 804F363C  90 03 AF 7C */	stw r0, demo_stop@l(r3)
/* 804F3640  38 00 00 00 */	li r0, 0
/* 804F3644  B0 04 AF F4 */	sth r0, -0x500c(r4)
/* 804F3648  38 00 00 34 */	li r0, 0x34
/* 804F364C  B0 04 AF F2 */	sth r0, -0x500e(r4)
/* 804F3650  48 00 07 14 */	b lbl_804F3D64
lbl_804F3654:
/* 804F3654  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F3658  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F365C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F3660  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804F3664  4B B1 8D 78 */	b mDoMtx_YrotS__FPA4_fs
/* 804F3668  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F366C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3670  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F3674  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 804F3678  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F367C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3680  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3684  38 84 AF F8 */	addi r4, r4, -20488
/* 804F3688  4B D7 D8 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F368C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3690  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F3694  7C 65 1B 78 */	mr r5, r3
/* 804F3698  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F369C  38 63 AF F8 */	addi r3, r3, -20488
/* 804F36A0  4B E5 39 F0 */	b PSVECAdd
/* 804F36A4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F36A8  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 804F36AC  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 804F36B0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F36B4  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 804F36B8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F36BC  3C 9E 00 02 */	addis r4, r30, 2
/* 804F36C0  38 84 B0 04 */	addi r4, r4, -20476
/* 804F36C4  4B D7 D8 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F36C8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F36CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F36D0  7C 65 1B 78 */	mr r5, r3
/* 804F36D4  38 A5 B0 04 */	addi r5, r5, -20476
/* 804F36D8  38 63 B0 04 */	addi r3, r3, -20476
/* 804F36DC  4B E5 39 B4 */	b PSVECAdd
/* 804F36E0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F36E4  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F36E8  2C 00 00 55 */	cmpwi r0, 0x55
/* 804F36EC  40 82 06 78 */	bne lbl_804F3D64
/* 804F36F0  7F C3 F3 78 */	mr r3, r30
/* 804F36F4  38 80 00 16 */	li r4, 0x16
/* 804F36F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F36FC  38 A0 00 00 */	li r5, 0
/* 804F3700  FC 40 08 90 */	fmr f2, f1
/* 804F3704  4B FF C1 05 */	bl anm_init__FP10e_fm_classifUcf
/* 804F3708  38 00 00 08 */	li r0, 8
/* 804F370C  90 1E 06 1C */	stw r0, 0x61c(r30)
/* 804F3710  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3714  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 804F3718  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F371C  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 804F3720  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F3724  38 00 00 35 */	li r0, 0x35
/* 804F3728  3C 7E 00 02 */	addis r3, r30, 2
/* 804F372C  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F3730  38 00 00 00 */	li r0, 0
/* 804F3734  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F3738  48 00 06 2C */	b lbl_804F3D64
lbl_804F373C:
/* 804F373C  A8 04 AF F4 */	lha r0, -0x500c(r4)
/* 804F3740  2C 00 00 61 */	cmpwi r0, 0x61
/* 804F3744  40 82 00 1C */	bne lbl_804F3760
/* 804F3748  7F 23 CB 78 */	mr r3, r25
/* 804F374C  38 80 00 1E */	li r4, 0x1e
/* 804F3750  38 A0 00 00 */	li r5, 0
/* 804F3754  38 C0 00 00 */	li r6, 0
/* 804F3758  38 E0 00 00 */	li r7, 0
/* 804F375C  48 00 6F 25 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_804F3760:
/* 804F3760  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3764  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3768  2C 00 00 56 */	cmpwi r0, 0x56
/* 804F376C  40 82 00 B8 */	bne lbl_804F3824
/* 804F3770  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007027D@ha */
/* 804F3774  38 03 02 7D */	addi r0, r3, 0x027D /* 0x0007027D@l */
/* 804F3778  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F377C  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F3780  38 81 00 14 */	addi r4, r1, 0x14
/* 804F3784  38 A0 00 00 */	li r5, 0
/* 804F3788  38 C0 00 00 */	li r6, 0
/* 804F378C  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F3790  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F3794  7D 89 03 A6 */	mtctr r12
/* 804F3798  4E 80 04 21 */	bctrl 
/* 804F379C  38 00 00 01 */	li r0, 1
/* 804F37A0  98 1E 06 24 */	stb r0, 0x624(r30)
/* 804F37A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F37A8  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 804F37AC  3B 00 00 00 */	li r24, 0
/* 804F37B0  3A E0 00 00 */	li r23, 0
/* 804F37B4  3A C0 00 00 */	li r22, 0
/* 804F37B8  3B 9A 00 98 */	addi r28, r26, 0x98
/* 804F37BC  3A BA 00 B8 */	addi r21, r26, 0xb8
lbl_804F37C0:
/* 804F37C0  7C 7C B2 2E */	lhzx r3, r28, r22
/* 804F37C4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F37C8  38 A0 00 00 */	li r5, 0
/* 804F37CC  38 C0 00 00 */	li r6, 0
/* 804F37D0  48 00 6C F1 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 804F37D4  7C 65 1B 79 */	or. r5, r3, r3
/* 804F37D8  41 82 00 2C */	beq lbl_804F3804
/* 804F37DC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F37E0  80 63 00 04 */	lwz r3, 4(r3)
/* 804F37E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804F37E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F37EC  7C 15 B8 2E */	lwzx r0, r21, r23
/* 804F37F0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804F37F4  7C 63 02 14 */	add r3, r3, r0
/* 804F37F8  38 85 00 68 */	addi r4, r5, 0x68
/* 804F37FC  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804F3800  4B D8 CF E0 */	b func_802807E0
lbl_804F3804:
/* 804F3804  3B 18 00 01 */	addi r24, r24, 1
/* 804F3808  2C 18 00 10 */	cmpwi r24, 0x10
/* 804F380C  3A F7 00 04 */	addi r23, r23, 4
/* 804F3810  3A D6 00 02 */	addi r22, r22, 2
/* 804F3814  41 80 FF AC */	blt lbl_804F37C0
/* 804F3818  3C 60 00 05 */	lis r3, 0x0005 /* 0x000564FF@ha */
/* 804F381C  38 03 64 FF */	addi r0, r3, 0x64FF /* 0x000564FF@l */
/* 804F3820  90 1E 07 A8 */	stw r0, 0x7a8(r30)
lbl_804F3824:
/* 804F3824  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3828  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F382C  2C 00 00 0E */	cmpwi r0, 0xe
/* 804F3830  40 81 00 18 */	ble lbl_804F3848
/* 804F3834  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 804F3838  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 804F383C  FC 60 10 90 */	fmr f3, f2
/* 804F3840  38 63 B0 4C */	addi r3, r3, -20404
/* 804F3844  4B D7 C1 F8 */	b cLib_addCalc2__FPffff
lbl_804F3848:
/* 804F3848  3C 7E 00 02 */	addis r3, r30, 2
/* 804F384C  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3850  2C 00 00 CE */	cmpwi r0, 0xce
/* 804F3854  40 82 05 10 */	bne lbl_804F3D64
/* 804F3858  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 804F385C  D0 03 B0 04 */	stfs f0, -0x4ffc(r3)
/* 804F3860  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 804F3864  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F3868  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 804F386C  D0 03 B0 0C */	stfs f0, -0x4ff4(r3)
/* 804F3870  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 804F3874  D0 03 AF F8 */	stfs f0, -0x5008(r3)
/* 804F3878  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 804F387C  D0 03 AF FC */	stfs f0, -0x5004(r3)
/* 804F3880  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 804F3884  D0 03 B0 00 */	stfs f0, -0x5000(r3)
/* 804F3888  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 804F388C  D0 03 B0 1C */	stfs f0, -0x4fe4(r3)
/* 804F3890  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 804F3894  D0 03 B0 20 */	stfs f0, -0x4fe0(r3)
/* 804F3898  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 804F389C  D0 03 B0 24 */	stfs f0, -0x4fdc(r3)
/* 804F38A0  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 804F38A4  D0 03 B0 10 */	stfs f0, -0x4ff0(r3)
/* 804F38A8  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 804F38AC  D0 03 B0 14 */	stfs f0, -0x4fec(r3)
/* 804F38B0  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 804F38B4  D0 03 B0 18 */	stfs f0, -0x4fe8(r3)
/* 804F38B8  C0 23 B0 10 */	lfs f1, -0x4ff0(r3)
/* 804F38BC  C0 03 AF F8 */	lfs f0, -0x5008(r3)
/* 804F38C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F38C4  FC 00 02 10 */	fabs f0, f0
/* 804F38C8  FC 00 00 18 */	frsp f0, f0
/* 804F38CC  D0 03 B0 28 */	stfs f0, -0x4fd8(r3)
/* 804F38D0  C0 23 B0 14 */	lfs f1, -0x4fec(r3)
/* 804F38D4  C0 03 AF FC */	lfs f0, -0x5004(r3)
/* 804F38D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F38DC  FC 00 02 10 */	fabs f0, f0
/* 804F38E0  FC 00 00 18 */	frsp f0, f0
/* 804F38E4  D0 03 B0 2C */	stfs f0, -0x4fd4(r3)
/* 804F38E8  C0 23 B0 18 */	lfs f1, -0x4fe8(r3)
/* 804F38EC  C0 03 B0 00 */	lfs f0, -0x5000(r3)
/* 804F38F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F38F4  FC 00 02 10 */	fabs f0, f0
/* 804F38F8  FC 00 00 18 */	frsp f0, f0
/* 804F38FC  D0 03 B0 30 */	stfs f0, -0x4fd0(r3)
/* 804F3900  C0 23 B0 1C */	lfs f1, -0x4fe4(r3)
/* 804F3904  C0 03 B0 04 */	lfs f0, -0x4ffc(r3)
/* 804F3908  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F390C  FC 00 02 10 */	fabs f0, f0
/* 804F3910  FC 00 00 18 */	frsp f0, f0
/* 804F3914  D0 03 B0 34 */	stfs f0, -0x4fcc(r3)
/* 804F3918  C0 23 B0 20 */	lfs f1, -0x4fe0(r3)
/* 804F391C  C0 03 B0 08 */	lfs f0, -0x4ff8(r3)
/* 804F3920  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F3924  FC 00 02 10 */	fabs f0, f0
/* 804F3928  FC 00 00 18 */	frsp f0, f0
/* 804F392C  D0 03 B0 38 */	stfs f0, -0x4fc8(r3)
/* 804F3930  C0 23 B0 24 */	lfs f1, -0x4fdc(r3)
/* 804F3934  C0 03 B0 0C */	lfs f0, -0x4ff4(r3)
/* 804F3938  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F393C  FC 00 02 10 */	fabs f0, f0
/* 804F3940  FC 00 00 18 */	frsp f0, f0
/* 804F3944  D0 03 B0 3C */	stfs f0, -0x4fc4(r3)
/* 804F3948  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F394C  D0 03 B0 50 */	stfs f0, -0x4fb0(r3)
/* 804F3950  38 00 00 36 */	li r0, 0x36
/* 804F3954  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F3958  38 00 00 00 */	li r0, 0
/* 804F395C  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F3960  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804F3964  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 804F3968  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 804F396C  3A A0 00 00 */	li r21, 0
/* 804F3970  3B 00 00 00 */	li r24, 0
/* 804F3974  3A DA 00 F8 */	addi r22, r26, 0xf8
lbl_804F3978:
/* 804F3978  7C 76 C2 2E */	lhzx r3, r22, r24
/* 804F397C  38 81 00 98 */	addi r4, r1, 0x98
/* 804F3980  38 A0 00 00 */	li r5, 0
/* 804F3984  38 C0 00 00 */	li r6, 0
/* 804F3988  48 00 6B 39 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 804F398C  3A B5 00 01 */	addi r21, r21, 1
/* 804F3990  2C 15 00 04 */	cmpwi r21, 4
/* 804F3994  3B 18 00 02 */	addi r24, r24, 2
/* 804F3998  41 80 FF E0 */	blt lbl_804F3978
/* 804F399C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 804F39A0  3C 7E 00 02 */	addis r3, r30, 2
/* 804F39A4  D0 03 B0 4C */	stfs f0, -0x4fb4(r3)
/* 804F39A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007027E@ha */
/* 804F39AC  38 03 02 7E */	addi r0, r3, 0x027E /* 0x0007027E@l */
/* 804F39B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F39B4  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F39B8  38 81 00 10 */	addi r4, r1, 0x10
/* 804F39BC  38 A0 00 00 */	li r5, 0
/* 804F39C0  38 C0 00 00 */	li r6, 0
/* 804F39C4  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F39C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F39CC  7D 89 03 A6 */	mtctr r12
/* 804F39D0  4E 80 04 21 */	bctrl 
/* 804F39D4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F39D8  38 80 00 01 */	li r4, 1
/* 804F39DC  38 A0 00 00 */	li r5, 0
/* 804F39E0  38 C0 00 00 */	li r6, 0
/* 804F39E4  38 E0 00 00 */	li r7, 0
/* 804F39E8  48 00 6C 99 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_804F39EC:
/* 804F39EC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F39F0  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F39F4  2C 00 00 64 */	cmpwi r0, 0x64
/* 804F39F8  41 80 00 28 */	blt lbl_804F3A20
/* 804F39FC  7F C3 F3 78 */	mr r3, r30
/* 804F3A00  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 804F3A04  4B FF E6 F1 */	bl cam_3d_morf__FP10e_fm_classf
/* 804F3A08  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3A0C  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 804F3A10  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F3A14  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 804F3A18  38 63 B0 50 */	addi r3, r3, -20400
/* 804F3A1C  4B D7 C0 20 */	b cLib_addCalc2__FPffff
lbl_804F3A20:
/* 804F3A20  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3A24  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3A28  2C 00 00 64 */	cmpwi r0, 0x64
/* 804F3A2C  40 82 00 70 */	bne lbl_804F3A9C
/* 804F3A30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F3A34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F3A38  80 63 00 00 */	lwz r3, 0(r3)
/* 804F3A3C  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 804F3A40  4B B1 89 9C */	b mDoMtx_YrotS__FPA4_fs
/* 804F3A44  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3A48  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3A4C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 804F3A50  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F3A54  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F3A58  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3A5C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3A60  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F3A64  4B D7 D4 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3A68  38 61 00 BC */	addi r3, r1, 0xbc
/* 804F3A6C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804F3A70  7C 65 1B 78 */	mr r5, r3
/* 804F3A74  4B E5 36 1C */	b PSVECAdd
/* 804F3A78  38 60 02 F2 */	li r3, 0x2f2
/* 804F3A7C  38 80 00 00 */	li r4, 0
/* 804F3A80  38 A1 00 BC */	addi r5, r1, 0xbc
/* 804F3A84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804F3A88  7C 06 07 74 */	extsb r6, r0
/* 804F3A8C  38 E0 00 00 */	li r7, 0
/* 804F3A90  39 00 00 00 */	li r8, 0
/* 804F3A94  39 20 FF FF */	li r9, -1
/* 804F3A98  4B B2 63 00 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_804F3A9C:
/* 804F3A9C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3AA0  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3AA4  2C 00 00 78 */	cmpwi r0, 0x78
/* 804F3AA8  40 82 00 2C */	bne lbl_804F3AD4
/* 804F3AAC  38 00 02 F2 */	li r0, 0x2f2
/* 804F3AB0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804F3AB4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 804F3AB8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 804F3ABC  38 81 00 0A */	addi r4, r1, 0xa
/* 804F3AC0  4B B2 5D 38 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804F3AC4  28 03 00 00 */	cmplwi r3, 0
/* 804F3AC8  41 82 00 0C */	beq lbl_804F3AD4
/* 804F3ACC  38 00 00 00 */	li r0, 0
/* 804F3AD0  98 03 05 9B */	stb r0, 0x59b(r3)
lbl_804F3AD4:
/* 804F3AD4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3AD8  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3ADC  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 804F3AE0  40 82 02 84 */	bne lbl_804F3D64
/* 804F3AE4  38 00 00 37 */	li r0, 0x37
/* 804F3AE8  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F3AEC  38 00 00 00 */	li r0, 0
/* 804F3AF0  B0 03 AF F4 */	sth r0, -0x500c(r3)
/* 804F3AF4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804F3AF8  D0 23 B0 5C */	stfs f1, -0x4fa4(r3)
/* 804F3AFC  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 804F3B00  D0 1E 07 9C */	stfs f0, 0x79c(r30)
/* 804F3B04  38 00 00 64 */	li r0, 0x64
/* 804F3B08  B0 1E 07 B2 */	sth r0, 0x7b2(r30)
/* 804F3B0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804F3B10  EC 00 08 28 */	fsubs f0, f0, f1
/* 804F3B14  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804F3B18  48 00 02 4C */	b lbl_804F3D64
lbl_804F3B1C:
/* 804F3B1C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804F3B20  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804F3B24  80 63 00 00 */	lwz r3, 0(r3)
/* 804F3B28  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 804F3B2C  4B B1 88 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 804F3B30  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3B34  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3B38  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F3B3C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804F3B40  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 804F3B44  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3B48  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3B4C  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3B50  38 84 AF F8 */	addi r4, r4, -20488
/* 804F3B54  4B D7 D3 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3B58  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3B5C  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804F3B60  7C 65 1B 78 */	mr r5, r3
/* 804F3B64  38 A5 AF F8 */	addi r5, r5, -20488
/* 804F3B68  38 63 AF F8 */	addi r3, r3, -20488
/* 804F3B6C  4B E5 35 24 */	b PSVECAdd
/* 804F3B70  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3B74  38 63 B0 04 */	addi r3, r3, -20476
/* 804F3B78  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804F3B7C  48 00 6A E9 */	bl __as__4cXyzFRC4cXyz
/* 804F3B80  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3B84  C0 23 B0 08 */	lfs f1, -0x4ff8(r3)
/* 804F3B88  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804F3B8C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F3B90  D0 03 B0 08 */	stfs f0, -0x4ff8(r3)
/* 804F3B94  C0 23 B0 5C */	lfs f1, -0x4fa4(r3)
/* 804F3B98  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3B9C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F3BA0  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 804F3BA4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804F3BA8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804F3BAC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3BB0  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F3BB4  4B D7 D3 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 804F3BB8  38 61 00 BC */	addi r3, r1, 0xbc
/* 804F3BBC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 804F3BC0  7C 65 1B 78 */	mr r5, r3
/* 804F3BC4  4B E5 34 CC */	b PSVECAdd
/* 804F3BC8  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3BCC  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 804F3BD0  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 804F3BD4  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 804F3BD8  38 63 B0 5C */	addi r3, r3, -20388
/* 804F3BDC  4B D7 BE 60 */	b cLib_addCalc2__FPffff
/* 804F3BE0  38 00 02 F2 */	li r0, 0x2f2
/* 804F3BE4  B0 01 00 08 */	sth r0, 8(r1)
/* 804F3BE8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 804F3BEC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 804F3BF0  38 81 00 08 */	addi r4, r1, 8
/* 804F3BF4  4B B2 5C 04 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804F3BF8  7C 75 1B 79 */	or. r21, r3, r3
/* 804F3BFC  41 82 00 1C */	beq lbl_804F3C18
/* 804F3C00  38 61 00 5C */	addi r3, r1, 0x5c
/* 804F3C04  38 81 00 BC */	addi r4, r1, 0xbc
/* 804F3C08  48 00 68 9D */	bl __ct__4cXyzFRC4cXyz
/* 804F3C0C  7E A3 AB 78 */	mr r3, r21
/* 804F3C10  38 81 00 5C */	addi r4, r1, 0x5c
/* 804F3C14  48 00 68 75 */	bl setCurrentPos__16obj_ystone_classF4cXyz
lbl_804F3C18:
/* 804F3C18  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3C1C  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3C20  2C 00 00 68 */	cmpwi r0, 0x68
/* 804F3C24  40 82 00 88 */	bne lbl_804F3CAC
/* 804F3C28  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 804F3C2C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804F3C30  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F3C34  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804F3C38  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 804F3C3C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804F3C40  38 61 00 24 */	addi r3, r1, 0x24
/* 804F3C44  38 80 00 00 */	li r4, 0
/* 804F3C48  38 A0 00 00 */	li r5, 0
/* 804F3C4C  38 C0 00 00 */	li r6, 0
/* 804F3C50  4B D7 37 A4 */	b __ct__5csXyzFsss
/* 804F3C54  38 61 00 8C */	addi r3, r1, 0x8c
/* 804F3C58  38 81 00 24 */	addi r4, r1, 0x24
/* 804F3C5C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804F3C60  7C 05 07 74 */	extsb r5, r0
/* 804F3C64  38 C0 00 00 */	li r6, 0
/* 804F3C68  38 E0 00 01 */	li r7, 1
/* 804F3C6C  39 00 00 FF */	li r8, 0xff
/* 804F3C70  4B B2 8C EC */	b fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 804F3C74  38 61 00 C8 */	addi r3, r1, 0xc8
/* 804F3C78  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804F3C7C  48 00 69 E9 */	bl __as__4cXyzFRC4cXyz
/* 804F3C80  38 60 02 3C */	li r3, 0x23c
/* 804F3C84  38 80 FF 01 */	li r4, -255
/* 804F3C88  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 804F3C8C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804F3C90  7C 06 07 74 */	extsb r6, r0
/* 804F3C94  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 804F3C98  39 00 00 00 */	li r8, 0
/* 804F3C9C  39 20 FF FF */	li r9, -1
/* 804F3CA0  4B B2 60 F8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 804F3CA4  38 00 00 00 */	li r0, 0
/* 804F3CA8  98 1E 06 24 */	stb r0, 0x624(r30)
lbl_804F3CAC:
/* 804F3CAC  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3CB0  A8 03 AF F4 */	lha r0, -0x500c(r3)
/* 804F3CB4  2C 00 00 6E */	cmpwi r0, 0x6e
/* 804F3CB8  40 82 00 AC */	bne lbl_804F3D64
/* 804F3CBC  38 00 00 64 */	li r0, 0x64
/* 804F3CC0  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F3CC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F3CC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F3CCC  3A A3 09 58 */	addi r21, r3, 0x958
/* 804F3CD0  7E A3 AB 78 */	mr r3, r21
/* 804F3CD4  38 80 00 03 */	li r4, 3
/* 804F3CD8  4B B4 0C 40 */	b onDungeonItem__12dSv_memBit_cFi
/* 804F3CDC  7E A3 AB 78 */	mr r3, r21
/* 804F3CE0  38 80 00 06 */	li r4, 6
/* 804F3CE4  4B B4 0C 34 */	b onDungeonItem__12dSv_memBit_cFi
/* 804F3CE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F3CEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F3CF0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804F3CF4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804F3CF8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804F3CFC  A0 84 00 80 */	lhz r4, 0x80(r4)
/* 804F3D00  4B B4 0C 8C */	b onEventBit__11dSv_event_cFUs
/* 804F3D04  48 00 00 60 */	b lbl_804F3D64
lbl_804F3D08:
/* 804F3D08  38 61 00 50 */	addi r3, r1, 0x50
/* 804F3D0C  38 84 B0 04 */	addi r4, r4, -20476
/* 804F3D10  48 00 67 95 */	bl __ct__4cXyzFRC4cXyz
/* 804F3D14  38 61 00 44 */	addi r3, r1, 0x44
/* 804F3D18  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3D1C  38 84 AF F8 */	addi r4, r4, -20488
/* 804F3D20  48 00 67 85 */	bl __ct__4cXyzFRC4cXyz
/* 804F3D24  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F3D28  38 81 00 50 */	addi r4, r1, 0x50
/* 804F3D2C  38 A1 00 44 */	addi r5, r1, 0x44
/* 804F3D30  4B C8 CE E8 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 804F3D34  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F3D38  4B C6 D7 74 */	b Start__9dCamera_cFv
/* 804F3D3C  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F3D40  38 80 00 00 */	li r4, 0
/* 804F3D44  4B C6 F2 C8 */	b SetTrimSize__9dCamera_cFl
/* 804F3D48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F3D4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F3D50  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 804F3D54  4B B4 E7 14 */	b reset__14dEvt_control_cFv
/* 804F3D58  38 00 00 00 */	li r0, 0
/* 804F3D5C  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3D60  B0 03 AF F2 */	sth r0, -0x500e(r3)
lbl_804F3D64:
/* 804F3D64  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3D68  A8 04 AF F2 */	lha r0, -0x500e(r4)
/* 804F3D6C  2C 00 00 00 */	cmpwi r0, 0
/* 804F3D70  41 82 00 EC */	beq lbl_804F3E5C
/* 804F3D74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804F3D78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804F3D7C  A8 1E 07 A0 */	lha r0, 0x7a0(r30)
/* 804F3D80  1C 00 2C 00 */	mulli r0, r0, 0x2c00
/* 804F3D84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804F3D88  7C 63 02 14 */	add r3, r3, r0
/* 804F3D8C  C0 43 00 04 */	lfs f2, 4(r3)
/* 804F3D90  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 804F3D94  C0 04 B0 64 */	lfs f0, -0x4f9c(r4)
/* 804F3D98  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F3D9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F3DA0  FC 00 00 1E */	fctiwz f0, f0
/* 804F3DA4  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 804F3DA8  82 A1 00 DC */	lwz r21, 0xdc(r1)
/* 804F3DAC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804F3DB0  38 84 B0 04 */	addi r4, r4, -20476
/* 804F3DB4  48 00 68 B1 */	bl __as__4cXyzFRC4cXyz
/* 804F3DB8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 804F3DBC  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3DC0  38 84 AF F8 */	addi r4, r4, -20488
/* 804F3DC4  48 00 68 A1 */	bl __as__4cXyzFRC4cXyz
/* 804F3DC8  A8 1E 07 A0 */	lha r0, 0x7a0(r30)
/* 804F3DCC  1C 00 28 00 */	mulli r0, r0, 0x2800
/* 804F3DD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804F3DD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804F3DD8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804F3DDC  7C 23 04 2E */	lfsx f1, r3, r0
/* 804F3DE0  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 804F3DE4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3DE8  C0 03 B0 64 */	lfs f0, -0x4f9c(r3)
/* 804F3DEC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804F3DF0  EC 02 08 2A */	fadds f0, f2, f1
/* 804F3DF4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804F3DF8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 804F3DFC  EC 00 08 2A */	fadds f0, f0, f1
/* 804F3E00  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 804F3E04  38 61 00 38 */	addi r3, r1, 0x38
/* 804F3E08  38 81 00 A4 */	addi r4, r1, 0xa4
/* 804F3E0C  48 00 66 99 */	bl __ct__4cXyzFRC4cXyz
/* 804F3E10  38 61 00 2C */	addi r3, r1, 0x2c
/* 804F3E14  38 81 00 B0 */	addi r4, r1, 0xb0
/* 804F3E18  48 00 66 8D */	bl __ct__4cXyzFRC4cXyz
/* 804F3E1C  38 7D 02 48 */	addi r3, r29, 0x248
/* 804F3E20  38 81 00 38 */	addi r4, r1, 0x38
/* 804F3E24  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804F3E28  7E A6 AB 78 */	mr r6, r21
/* 804F3E2C  3C FE 00 02 */	addis r7, r30, 2
/* 804F3E30  C0 27 B0 4C */	lfs f1, -0x4fb4(r7)
/* 804F3E34  4B C8 CD 0C */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 804F3E38  3C 7E 00 02 */	addis r3, r30, 2
/* 804F3E3C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F3E40  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 804F3E44  38 63 B0 64 */	addi r3, r3, -20380
/* 804F3E48  4B D7 BC 38 */	b cLib_addCalc0__FPfff
/* 804F3E4C  3C 9E 00 02 */	addis r4, r30, 2
/* 804F3E50  A8 64 AF F4 */	lha r3, -0x500c(r4)
/* 804F3E54  38 03 00 01 */	addi r0, r3, 1
/* 804F3E58  B0 04 AF F4 */	sth r0, -0x500c(r4)
lbl_804F3E5C:
/* 804F3E5C  39 61 01 10 */	addi r11, r1, 0x110
/* 804F3E60  4B E6 E3 A8 */	b _restgpr_21
/* 804F3E64  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804F3E68  7C 08 03 A6 */	mtlr r0
/* 804F3E6C  38 21 01 10 */	addi r1, r1, 0x110
/* 804F3E70  4E 80 00 20 */	blr 
