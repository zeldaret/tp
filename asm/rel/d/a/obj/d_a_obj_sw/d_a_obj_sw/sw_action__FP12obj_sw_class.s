lbl_80CF2160:
/* 80CF2160  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80CF2164  7C 08 02 A6 */	mflr r0
/* 80CF2168  90 01 01 44 */	stw r0, 0x144(r1)
/* 80CF216C  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80CF2170  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 80CF2174  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80CF2178  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 80CF217C  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 80CF2180  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 80CF2184  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 80CF2188  F3 81 01 08 */	psq_st f28, 264(r1), 0, 0 /* qr0 */
/* 80CF218C  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 80CF2190  F3 61 00 F8 */	psq_st f27, 248(r1), 0, 0 /* qr0 */
/* 80CF2194  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CF2198  4B 67 00 34 */	b _savegpr_25
/* 80CF219C  7C 7C 1B 78 */	mr r28, r3
/* 80CF21A0  3C 60 80 CF */	lis r3, lit_3850@ha
/* 80CF21A4  3B C3 30 00 */	addi r30, r3, lit_3850@l
/* 80CF21A8  38 61 00 48 */	addi r3, r1, 0x48
/* 80CF21AC  38 9C 09 10 */	addi r4, r28, 0x910
/* 80CF21B0  38 BC 09 04 */	addi r5, r28, 0x904
/* 80CF21B4  4B 57 49 80 */	b __mi__4cXyzCFRC3Vec
/* 80CF21B8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CF21BC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80CF21C0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CF21C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80CF21C8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CF21CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CF21D0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CF21D4  38 81 00 78 */	addi r4, r1, 0x78
/* 80CF21D8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80CF21DC  4B 57 49 A8 */	b __ml__4cXyzCFf
/* 80CF21E0  38 61 00 30 */	addi r3, r1, 0x30
/* 80CF21E4  38 9C 09 04 */	addi r4, r28, 0x904
/* 80CF21E8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CF21EC  4B 57 48 F8 */	b __pl__4cXyzCFRC3Vec
/* 80CF21F0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CF21F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CF21F8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CF21FC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CF2200  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CF2204  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CF2208  C0 7E 00 88 */	lfs f3, 0x88(r30)
/* 80CF220C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80CF2210  80 1C 09 1C */	lwz r0, 0x91c(r28)
/* 80CF2214  C8 3E 00 B8 */	lfd f1, 0xb8(r30)
/* 80CF2218  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF221C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CF2220  3C 00 43 30 */	lis r0, 0x4330
/* 80CF2224  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80CF2228  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80CF222C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CF2230  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF2234  EC 03 00 2A */	fadds f0, f3, f0
/* 80CF2238  FF A0 00 50 */	fneg f29, f0
/* 80CF223C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80CF2240  38 81 00 54 */	addi r4, r1, 0x54
/* 80CF2244  38 A1 00 08 */	addi r5, r1, 8
/* 80CF2248  4B 36 90 B0 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80CF224C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CF2250  EC 20 00 32 */	fmuls f1, f0, f0
/* 80CF2254  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CF2258  38 7C 05 A4 */	addi r3, r28, 0x5a4
/* 80CF225C  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80CF2260  C0 7E 00 A4 */	lfs f3, 0xa4(r30)
/* 80CF2264  4B 57 D7 D8 */	b cLib_addCalc2__FPffff
/* 80CF2268  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80CF226C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 80CF2270  4B 57 54 04 */	b cM_atan2s__Fff
/* 80CF2274  7C 64 1B 78 */	mr r4, r3
/* 80CF2278  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CF227C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CF2280  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF2284  4B 31 A1 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80CF2288  3B A0 00 00 */	li r29, 0
/* 80CF228C  3B 60 00 00 */	li r27, 0
/* 80CF2290  3B 40 00 00 */	li r26, 0
/* 80CF2294  CB DE 00 B8 */	lfd f30, 0xb8(r30)
/* 80CF2298  3F E0 43 30 */	lis r31, 0x4330
/* 80CF229C  C3 FE 00 A0 */	lfs f31, 0xa0(r30)
/* 80CF22A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CF22A4  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 80CF22A8  C3 7E 00 00 */	lfs f27, 0(r30)
/* 80CF22AC  C3 9E 00 A8 */	lfs f28, 0xa8(r30)
/* 80CF22B0  48 00 01 58 */	b lbl_80CF2408
lbl_80CF22B4:
/* 80CF22B4  38 61 00 24 */	addi r3, r1, 0x24
/* 80CF22B8  38 81 00 78 */	addi r4, r1, 0x78
/* 80CF22BC  38 05 FF FF */	addi r0, r5, -1
/* 80CF22C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF22C4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CF22C8  93 E1 00 A0 */	stw r31, 0xa0(r1)
/* 80CF22CC  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80CF22D0  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80CF22D4  4B 57 49 44 */	b __dv__4cXyzCFf
/* 80CF22D8  38 61 00 18 */	addi r3, r1, 0x18
/* 80CF22DC  38 81 00 24 */	addi r4, r1, 0x24
/* 80CF22E0  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80CF22E4  90 01 00 AC */	stw r0, 0xac(r1)
/* 80CF22E8  93 E1 00 A8 */	stw r31, 0xa8(r1)
/* 80CF22EC  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80CF22F0  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80CF22F4  4B 57 48 90 */	b __ml__4cXyzCFf
/* 80CF22F8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF22FC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF2300  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80CF2304  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80CF2308  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CF230C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CF2310  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 80CF2314  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80CF2318  93 E1 00 B0 */	stw r31, 0xb0(r1)
/* 80CF231C  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 80CF2320  EC 20 F0 28 */	fsubs f1, f0, f30
/* 80CF2324  80 7C 0D 8C */	lwz r3, 0xd8c(r28)
/* 80CF2328  38 03 FF FF */	addi r0, r3, -1
/* 80CF232C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF2330  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80CF2334  93 E1 00 B8 */	stw r31, 0xb8(r1)
/* 80CF2338  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80CF233C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CF2340  EC 01 00 24 */	fdivs f0, f1, f0
/* 80CF2344  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80CF2348  FC 00 00 1E */	fctiwz f0, f0
/* 80CF234C  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 80CF2350  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80CF2354  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CF2358  7C 79 04 2E */	lfsx f3, r25, r0
/* 80CF235C  A8 1C 05 74 */	lha r0, 0x574(r28)
/* 80CF2360  1C 00 09 C4 */	mulli r0, r0, 0x9c4
/* 80CF2364  7C 00 D2 14 */	add r0, r0, r26
/* 80CF2368  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CF236C  7C 99 04 2E */	lfsx f4, r25, r0
/* 80CF2370  EC 23 07 72 */	fmuls f1, f3, f29
/* 80CF2374  C0 1C 08 FC */	lfs f0, 0x8fc(r28)
/* 80CF2378  EC 00 01 32 */	fmuls f0, f0, f4
/* 80CF237C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CF2380  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF2384  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF2388  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CF238C  D3 61 00 90 */	stfs f27, 0x90(r1)
/* 80CF2390  D3 61 00 94 */	stfs f27, 0x94(r1)
/* 80CF2394  EC 3C 00 F2 */	fmuls f1, f28, f3
/* 80CF2398  C0 1C 05 A4 */	lfs f0, 0x5a4(r28)
/* 80CF239C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CF23A0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80CF23A4  38 61 00 90 */	addi r3, r1, 0x90
/* 80CF23A8  38 81 00 84 */	addi r4, r1, 0x84
/* 80CF23AC  4B 57 EB 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CF23B0  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80CF23B4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CF23B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF23BC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF23C0  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80CF23C4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80CF23C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF23CC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CF23D0  38 61 00 0C */	addi r3, r1, 0xc
/* 80CF23D4  38 9C 09 04 */	addi r4, r28, 0x904
/* 80CF23D8  38 A1 00 60 */	addi r5, r1, 0x60
/* 80CF23DC  4B 57 47 08 */	b __pl__4cXyzCFRC3Vec
/* 80CF23E0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CF23E4  7C 7C DA 14 */	add r3, r28, r27
/* 80CF23E8  D0 03 09 20 */	stfs f0, 0x920(r3)
/* 80CF23EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF23F0  D0 03 09 24 */	stfs f0, 0x924(r3)
/* 80CF23F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF23F8  D0 03 09 28 */	stfs f0, 0x928(r3)
/* 80CF23FC  3B BD 00 01 */	addi r29, r29, 1
/* 80CF2400  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80CF2404  3B 5A 07 D0 */	addi r26, r26, 0x7d0
lbl_80CF2408:
/* 80CF2408  80 BC 0D 8C */	lwz r5, 0xd8c(r28)
/* 80CF240C  7C 1D 28 00 */	cmpw r29, r5
/* 80CF2410  41 80 FE A4 */	blt lbl_80CF22B4
/* 80CF2414  3B A0 00 00 */	li r29, 0
/* 80CF2418  3B 60 00 00 */	li r27, 0
/* 80CF241C  C3 FE 00 00 */	lfs f31, 0(r30)
/* 80CF2420  48 00 01 68 */	b lbl_80CF2588
lbl_80CF2424:
/* 80CF2424  38 9D 0D 10 */	addi r4, r29, 0xd10
/* 80CF2428  7C 7C 20 AE */	lbzx r3, r28, r4
/* 80CF242C  7C 60 07 75 */	extsb. r0, r3
/* 80CF2430  41 82 00 48 */	beq lbl_80CF2478
/* 80CF2434  38 03 FF FF */	addi r0, r3, -1
/* 80CF2438  7C 1C 21 AE */	stbx r0, r28, r4
/* 80CF243C  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80CF2440  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80CF2444  80 1C 09 1C */	lwz r0, 0x91c(r28)
/* 80CF2448  C8 3E 00 B8 */	lfd f1, 0xb8(r30)
/* 80CF244C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF2450  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CF2454  3C 00 43 30 */	lis r0, 0x4330
/* 80CF2458  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80CF245C  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80CF2460  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CF2464  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CF2468  EC 03 00 2A */	fadds f0, f3, f0
/* 80CF246C  FC 20 00 50 */	fneg f1, f0
/* 80CF2470  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80CF2474  48 00 00 0C */	b lbl_80CF2480
lbl_80CF2478:
/* 80CF2478  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CF247C  C0 7E 00 08 */	lfs f3, 8(r30)
lbl_80CF2480:
/* 80CF2480  7F FC DA 14 */	add r31, r28, r27
/* 80CF2484  38 7F 0C 14 */	addi r3, r31, 0xc14
/* 80CF2488  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80CF248C  4B 57 D5 B0 */	b cLib_addCalc2__FPffff
/* 80CF2490  C0 1F 0C 14 */	lfs f0, 0xc14(r31)
/* 80CF2494  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80CF2498  41 82 00 E8 */	beq lbl_80CF2580
/* 80CF249C  7F A6 EB 78 */	mr r6, r29
/* 80CF24A0  C8 5E 00 B8 */	lfd f2, 0xb8(r30)
/* 80CF24A4  3C 80 43 30 */	lis r4, 0x4330
/* 80CF24A8  1C 7D 00 0C */	mulli r3, r29, 0xc
/* 80CF24AC  48 00 00 5C */	b lbl_80CF2508
lbl_80CF24B0:
/* 80CF24B0  38 A5 FF FF */	addi r5, r5, -1
/* 80CF24B4  7C 06 28 50 */	subf r0, r6, r5
/* 80CF24B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF24BC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CF24C0  90 81 00 C0 */	stw r4, 0xc0(r1)
/* 80CF24C4  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80CF24C8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CF24CC  7C 1D 28 50 */	subf r0, r29, r5
/* 80CF24D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF24D4  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80CF24D8  90 81 00 B8 */	stw r4, 0xb8(r1)
/* 80CF24DC  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80CF24E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CF24E4  EC 61 00 24 */	fdivs f3, f1, f0
/* 80CF24E8  38 03 09 24 */	addi r0, r3, 0x924
/* 80CF24EC  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80CF24F0  C0 1F 0C 14 */	lfs f0, 0xc14(r31)
/* 80CF24F4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CF24F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF24FC  7C 1C 05 2E */	stfsx f0, r28, r0
/* 80CF2500  38 C6 00 01 */	addi r6, r6, 1
/* 80CF2504  38 63 00 0C */	addi r3, r3, 0xc
lbl_80CF2508:
/* 80CF2508  80 BC 0D 8C */	lwz r5, 0xd8c(r28)
/* 80CF250C  7C 06 28 00 */	cmpw r6, r5
/* 80CF2510  41 80 FF A0 */	blt lbl_80CF24B0
/* 80CF2514  34 DD FF FF */	addic. r6, r29, -1
/* 80CF2518  C8 5E 00 B8 */	lfd f2, 0xb8(r30)
/* 80CF251C  3C A0 43 30 */	lis r5, 0x4330
/* 80CF2520  6F A4 80 00 */	xoris r4, r29, 0x8000
/* 80CF2524  1C 66 00 0C */	mulli r3, r6, 0xc
/* 80CF2528  38 06 00 01 */	addi r0, r6, 1
/* 80CF252C  7C 09 03 A6 */	mtctr r0
/* 80CF2530  41 80 00 50 */	blt lbl_80CF2580
lbl_80CF2534:
/* 80CF2534  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80CF2538  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80CF253C  90 A1 00 C0 */	stw r5, 0xc0(r1)
/* 80CF2540  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80CF2544  EC 20 10 28 */	fsubs f1, f0, f2
/* 80CF2548  90 81 00 BC */	stw r4, 0xbc(r1)
/* 80CF254C  90 A1 00 B8 */	stw r5, 0xb8(r1)
/* 80CF2550  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80CF2554  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CF2558  EC 61 00 24 */	fdivs f3, f1, f0
/* 80CF255C  38 03 09 24 */	addi r0, r3, 0x924
/* 80CF2560  7C 3C 04 2E */	lfsx f1, r28, r0
/* 80CF2564  C0 1F 0C 14 */	lfs f0, 0xc14(r31)
/* 80CF2568  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80CF256C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF2570  7C 1C 05 2E */	stfsx f0, r28, r0
/* 80CF2574  38 C6 FF FF */	addi r6, r6, -1
/* 80CF2578  38 63 FF F4 */	addi r3, r3, -12
/* 80CF257C  42 00 FF B8 */	bdnz lbl_80CF2534
lbl_80CF2580:
/* 80CF2580  3B BD 00 01 */	addi r29, r29, 1
/* 80CF2584  3B 7B 00 04 */	addi r27, r27, 4
lbl_80CF2588:
/* 80CF2588  80 1C 0D 8C */	lwz r0, 0xd8c(r28)
/* 80CF258C  7C 1D 00 00 */	cmpw r29, r0
/* 80CF2590  41 80 FE 94 */	blt lbl_80CF2424
/* 80CF2594  C0 3C 09 00 */	lfs f1, 0x900(r28)
/* 80CF2598  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CF259C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF25A0  40 81 00 08 */	ble lbl_80CF25A8
/* 80CF25A4  D0 1C 09 00 */	stfs f0, 0x900(r28)
lbl_80CF25A8:
/* 80CF25A8  38 7C 08 FC */	addi r3, r28, 0x8fc
/* 80CF25AC  C0 3C 09 00 */	lfs f1, 0x900(r28)
/* 80CF25B0  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 80CF25B4  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80CF25B8  4B 57 D4 84 */	b cLib_addCalc2__FPffff
/* 80CF25BC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF25C0  D0 1C 09 00 */	stfs f0, 0x900(r28)
/* 80CF25C4  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 80CF25C8  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80CF25CC  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 80CF25D0  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80CF25D4  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 80CF25D8  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 80CF25DC  E3 81 01 08 */	psq_l f28, 264(r1), 0, 0 /* qr0 */
/* 80CF25E0  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 80CF25E4  E3 61 00 F8 */	psq_l f27, 248(r1), 0, 0 /* qr0 */
/* 80CF25E8  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 80CF25EC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80CF25F0  4B 66 FC 28 */	b _restgpr_25
/* 80CF25F4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80CF25F8  7C 08 03 A6 */	mtlr r0
/* 80CF25FC  38 21 01 40 */	addi r1, r1, 0x140
/* 80CF2600  4E 80 00 20 */	blr 
