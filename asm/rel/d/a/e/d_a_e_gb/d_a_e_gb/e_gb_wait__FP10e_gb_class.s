lbl_806C2078:
/* 806C2078  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806C207C  7C 08 02 A6 */	mflr r0
/* 806C2080  90 01 00 74 */	stw r0, 0x74(r1)
/* 806C2084  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806C2088  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806C208C  39 61 00 60 */	addi r11, r1, 0x60
/* 806C2090  4B CA 01 48 */	b _savegpr_28
/* 806C2094  7C 7D 1B 78 */	mr r29, r3
/* 806C2098  3C 60 80 6C */	lis r3, lit_3906@ha
/* 806C209C  3B E3 74 E8 */	addi r31, r3, lit_3906@l
/* 806C20A0  38 61 00 0C */	addi r3, r1, 0xc
/* 806C20A4  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 806C20A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806C20AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806C20B0  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 806C20B4  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 806C20B8  4B BA 4A 7C */	b __mi__4cXyzCFRC3Vec
/* 806C20BC  38 61 00 0C */	addi r3, r1, 0xc
/* 806C20C0  4B C8 50 78 */	b PSVECSquareMag
/* 806C20C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C20C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C20CC  40 81 00 58 */	ble lbl_806C2124
/* 806C20D0  FC 00 08 34 */	frsqrte f0, f1
/* 806C20D4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C20D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C20DC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C20E0  FC 00 00 32 */	fmul f0, f0, f0
/* 806C20E4  FC 01 00 32 */	fmul f0, f1, f0
/* 806C20E8  FC 03 00 28 */	fsub f0, f3, f0
/* 806C20EC  FC 02 00 32 */	fmul f0, f2, f0
/* 806C20F0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C20F4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C20F8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C20FC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C2100  FC 02 00 32 */	fmul f0, f2, f0
/* 806C2104  FC 44 00 32 */	fmul f2, f4, f0
/* 806C2108  FC 00 00 32 */	fmul f0, f0, f0
/* 806C210C  FC 01 00 32 */	fmul f0, f1, f0
/* 806C2110  FC 03 00 28 */	fsub f0, f3, f0
/* 806C2114  FC 02 00 32 */	fmul f0, f2, f0
/* 806C2118  FF E1 00 32 */	fmul f31, f1, f0
/* 806C211C  FF E0 F8 18 */	frsp f31, f31
/* 806C2120  48 00 00 90 */	b lbl_806C21B0
lbl_806C2124:
/* 806C2124  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C2128  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C212C  40 80 00 10 */	bge lbl_806C213C
/* 806C2130  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C2134  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806C2138  48 00 00 78 */	b lbl_806C21B0
lbl_806C213C:
/* 806C213C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C2140  80 81 00 08 */	lwz r4, 8(r1)
/* 806C2144  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C2148  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C214C  7C 03 00 00 */	cmpw r3, r0
/* 806C2150  41 82 00 14 */	beq lbl_806C2164
/* 806C2154  40 80 00 40 */	bge lbl_806C2194
/* 806C2158  2C 03 00 00 */	cmpwi r3, 0
/* 806C215C  41 82 00 20 */	beq lbl_806C217C
/* 806C2160  48 00 00 34 */	b lbl_806C2194
lbl_806C2164:
/* 806C2164  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C2168  41 82 00 0C */	beq lbl_806C2174
/* 806C216C  38 00 00 01 */	li r0, 1
/* 806C2170  48 00 00 28 */	b lbl_806C2198
lbl_806C2174:
/* 806C2174  38 00 00 02 */	li r0, 2
/* 806C2178  48 00 00 20 */	b lbl_806C2198
lbl_806C217C:
/* 806C217C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C2180  41 82 00 0C */	beq lbl_806C218C
/* 806C2184  38 00 00 05 */	li r0, 5
/* 806C2188  48 00 00 10 */	b lbl_806C2198
lbl_806C218C:
/* 806C218C  38 00 00 03 */	li r0, 3
/* 806C2190  48 00 00 08 */	b lbl_806C2198
lbl_806C2194:
/* 806C2194  38 00 00 04 */	li r0, 4
lbl_806C2198:
/* 806C2198  2C 00 00 01 */	cmpwi r0, 1
/* 806C219C  40 82 00 10 */	bne lbl_806C21AC
/* 806C21A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C21A4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 806C21A8  48 00 00 08 */	b lbl_806C21B0
lbl_806C21AC:
/* 806C21AC  FF E0 08 90 */	fmr f31, f1
lbl_806C21B0:
/* 806C21B0  3B C0 00 00 */	li r30, 0
/* 806C21B4  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 806C21B8  2C 00 00 00 */	cmpwi r0, 0
/* 806C21BC  41 82 00 AC */	beq lbl_806C2268
/* 806C21C0  40 80 00 10 */	bge lbl_806C21D0
/* 806C21C4  2C 00 FF FE */	cmpwi r0, -2
/* 806C21C8  41 82 00 14 */	beq lbl_806C21DC
/* 806C21CC  48 00 03 18 */	b lbl_806C24E4
lbl_806C21D0:
/* 806C21D0  2C 00 00 02 */	cmpwi r0, 2
/* 806C21D4  40 80 03 10 */	bge lbl_806C24E4
/* 806C21D8  48 00 01 10 */	b lbl_806C22E8
lbl_806C21DC:
/* 806C21DC  7F A3 EB 78 */	mr r3, r29
/* 806C21E0  38 80 00 10 */	li r4, 0x10
/* 806C21E4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806C21E8  38 A0 00 00 */	li r5, 0
/* 806C21EC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C21F0  4B FF FB 4D */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C21F4  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C21F8  3B 83 79 38 */	addi r28, r3, l_HIO@l
/* 806C21FC  A8 1C 00 14 */	lha r0, 0x14(r28)
/* 806C2200  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 806C2204  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806C2208  90 01 00 34 */	stw r0, 0x34(r1)
/* 806C220C  3C 00 43 30 */	lis r0, 0x4330
/* 806C2210  90 01 00 30 */	stw r0, 0x30(r1)
/* 806C2214  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 806C2218  EC 20 08 28 */	fsubs f1, f0, f1
/* 806C221C  4B BA 57 38 */	b cM_rndF__Ff
/* 806C2220  A8 1C 00 14 */	lha r0, 0x14(r28)
/* 806C2224  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 806C2228  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806C222C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806C2230  3C 00 43 30 */	lis r0, 0x4330
/* 806C2234  90 01 00 38 */	stw r0, 0x38(r1)
/* 806C2238  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 806C223C  EC 00 10 28 */	fsubs f0, f0, f2
/* 806C2240  EC 00 08 2A */	fadds f0, f0, f1
/* 806C2244  FC 00 00 1E */	fctiwz f0, f0
/* 806C2248  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806C224C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C2250  B0 1D 06 C6 */	sth r0, 0x6c6(r29)
/* 806C2254  38 00 00 01 */	li r0, 1
/* 806C2258  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 806C225C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806C2260  D0 1D 06 C0 */	stfs f0, 0x6c0(r29)
/* 806C2264  48 00 02 80 */	b lbl_806C24E4
lbl_806C2268:
/* 806C2268  7F A3 EB 78 */	mr r3, r29
/* 806C226C  38 80 00 11 */	li r4, 0x11
/* 806C2270  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C2274  38 A0 00 02 */	li r5, 2
/* 806C2278  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C227C  4B FF FA C1 */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C2280  38 00 00 01 */	li r0, 1
/* 806C2284  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 806C2288  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C228C  3B 83 79 38 */	addi r28, r3, l_HIO@l
/* 806C2290  A8 1C 00 14 */	lha r0, 0x14(r28)
/* 806C2294  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 806C2298  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806C229C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806C22A0  3C 00 43 30 */	lis r0, 0x4330
/* 806C22A4  90 01 00 40 */	stw r0, 0x40(r1)
/* 806C22A8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 806C22AC  EC 20 08 28 */	fsubs f1, f0, f1
/* 806C22B0  4B BA 56 A4 */	b cM_rndF__Ff
/* 806C22B4  A8 1C 00 14 */	lha r0, 0x14(r28)
/* 806C22B8  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 806C22BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806C22C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806C22C4  3C 00 43 30 */	lis r0, 0x4330
/* 806C22C8  90 01 00 38 */	stw r0, 0x38(r1)
/* 806C22CC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 806C22D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 806C22D4  EC 00 08 2A */	fadds f0, f0, f1
/* 806C22D8  FC 00 00 1E */	fctiwz f0, f0
/* 806C22DC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806C22E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806C22E4  B0 1D 06 C6 */	sth r0, 0x6c6(r29)
lbl_806C22E8:
/* 806C22E8  80 1D 06 88 */	lwz r0, 0x688(r29)
/* 806C22EC  2C 00 00 11 */	cmpwi r0, 0x11
/* 806C22F0  41 82 00 4C */	beq lbl_806C233C
/* 806C22F4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806C22F8  38 80 00 01 */	li r4, 1
/* 806C22FC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C2300  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C2304  40 82 00 18 */	bne lbl_806C231C
/* 806C2308  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C230C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C2310  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C2314  41 82 00 08 */	beq lbl_806C231C
/* 806C2318  38 80 00 00 */	li r4, 0
lbl_806C231C:
/* 806C231C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C2320  41 82 00 1C */	beq lbl_806C233C
/* 806C2324  7F A3 EB 78 */	mr r3, r29
/* 806C2328  38 80 00 11 */	li r4, 0x11
/* 806C232C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C2330  38 A0 00 02 */	li r5, 2
/* 806C2334  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C2338  4B FF FA 05 */	bl head_anm_init__FP10e_gb_classifUcf
lbl_806C233C:
/* 806C233C  A8 1D 06 C6 */	lha r0, 0x6c6(r29)
/* 806C2340  2C 00 00 00 */	cmpwi r0, 0
/* 806C2344  40 82 00 14 */	bne lbl_806C2358
/* 806C2348  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806C234C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806C2350  40 80 00 08 */	bge lbl_806C2358
/* 806C2354  3B C0 00 01 */	li r30, 1
lbl_806C2358:
/* 806C2358  A8 1D 06 C4 */	lha r0, 0x6c4(r29)
/* 806C235C  2C 00 00 00 */	cmpwi r0, 0
/* 806C2360  40 82 00 BC */	bne lbl_806C241C
/* 806C2364  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806C2368  4B BA 55 EC */	b cM_rndF__Ff
/* 806C236C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C2370  EC 00 08 2A */	fadds f0, f0, f1
/* 806C2374  FC 00 00 1E */	fctiwz f0, f0
/* 806C2378  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806C237C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C2380  B0 1D 06 C4 */	sth r0, 0x6c4(r29)
/* 806C2384  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C2388  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C238C  80 63 00 00 */	lwz r3, 0(r3)
/* 806C2390  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 806C2394  4B 94 A0 48 */	b mDoMtx_YrotS__FPA4_fs
/* 806C2398  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806C239C  4B BA 55 F0 */	b cM_rndFX__Ff
/* 806C23A0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806C23A4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806C23A8  4B BA 55 E4 */	b cM_rndFX__Ff
/* 806C23AC  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 806C23B0  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C23B4  38 63 79 38 */	addi r3, r3, l_HIO@l
/* 806C23B8  C0 03 00 08 */	lfs f0, 8(r3)
/* 806C23BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 806C23C0  EC 00 08 2A */	fadds f0, f0, f1
/* 806C23C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806C23C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806C23CC  4B BA 55 C0 */	b cM_rndFX__Ff
/* 806C23D0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806C23D4  EC 00 08 2A */	fadds f0, f0, f1
/* 806C23D8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806C23DC  38 61 00 24 */	addi r3, r1, 0x24
/* 806C23E0  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 806C23E4  4B BA EB 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C23E8  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 806C23EC  38 9D 06 D4 */	addi r4, r29, 0x6d4
/* 806C23F0  7C 65 1B 78 */	mr r5, r3
/* 806C23F4  4B C8 4C 9C */	b PSVECAdd
/* 806C23F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C23FC  D0 1D 06 C0 */	stfs f0, 0x6c0(r29)
/* 806C2400  A8 1D 06 C6 */	lha r0, 0x6c6(r29)
/* 806C2404  2C 00 00 00 */	cmpwi r0, 0
/* 806C2408  40 82 00 14 */	bne lbl_806C241C
/* 806C240C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806C2410  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806C2414  40 80 00 08 */	bge lbl_806C241C
/* 806C2418  3B C0 00 01 */	li r30, 1
lbl_806C241C:
/* 806C241C  A8 9D 06 98 */	lha r4, 0x698(r29)
/* 806C2420  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 806C2424  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C2428  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806C242C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806C2430  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C2434  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C2438  EC 23 00 32 */	fmuls f1, f3, f0
/* 806C243C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806C2440  1C 04 08 98 */	mulli r0, r4, 0x898
/* 806C2444  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C2448  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C244C  EC 03 00 32 */	fmuls f0, f3, f0
/* 806C2450  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806C2454  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 806C2458  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C245C  7C 63 02 14 */	add r3, r3, r0
/* 806C2460  C0 03 00 04 */	lfs f0, 4(r3)
/* 806C2464  EC 03 00 32 */	fmuls f0, f3, f0
/* 806C2468  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806C246C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806C2470  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 806C2474  EC 20 08 2A */	fadds f1, f0, f1
/* 806C2478  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C247C  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 806C2480  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C2484  4B BA D5 B8 */	b cLib_addCalc2__FPffff
/* 806C2488  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 806C248C  C0 3D 06 B0 */	lfs f1, 0x6b0(r29)
/* 806C2490  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806C2494  EC 21 00 2A */	fadds f1, f1, f0
/* 806C2498  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C249C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C24A0  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 806C24A4  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C24A8  4B BA D5 94 */	b cLib_addCalc2__FPffff
/* 806C24AC  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 806C24B0  C0 3D 06 AC */	lfs f1, 0x6ac(r29)
/* 806C24B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806C24B8  EC 21 00 2A */	fadds f1, f1, f0
/* 806C24BC  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 806C24C0  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806C24C4  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 806C24C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C24CC  4B BA D5 70 */	b cLib_addCalc2__FPffff
/* 806C24D0  38 7D 06 C0 */	addi r3, r29, 0x6c0
/* 806C24D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C24D8  FC 40 08 90 */	fmr f2, f1
/* 806C24DC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806C24E0  4B BA D5 5C */	b cLib_addCalc2__FPffff
lbl_806C24E4:
/* 806C24E4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 806C24E8  A8 9D 06 B8 */	lha r4, 0x6b8(r29)
/* 806C24EC  38 A0 00 08 */	li r5, 8
/* 806C24F0  38 C0 01 00 */	li r6, 0x100
/* 806C24F4  4B BA E1 14 */	b cLib_addCalcAngleS2__FPssss
/* 806C24F8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 806C24FC  A8 9D 06 B8 */	lha r4, 0x6b8(r29)
/* 806C2500  38 A0 00 08 */	li r5, 8
/* 806C2504  38 C0 08 00 */	li r6, 0x800
/* 806C2508  4B BA E1 00 */	b cLib_addCalcAngleS2__FPssss
/* 806C250C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 806C2510  A8 9D 06 BA */	lha r4, 0x6ba(r29)
/* 806C2514  38 A0 00 08 */	li r5, 8
/* 806C2518  38 C0 04 00 */	li r6, 0x400
/* 806C251C  4B BA E0 EC */	b cLib_addCalcAngleS2__FPssss
/* 806C2520  7F C0 07 75 */	extsb. r0, r30
/* 806C2524  41 82 00 1C */	beq lbl_806C2540
/* 806C2528  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C252C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806C2530  38 00 00 01 */	li r0, 1
/* 806C2534  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 806C2538  38 00 00 00 */	li r0, 0
/* 806C253C  B0 1D 06 9C */	sth r0, 0x69c(r29)
lbl_806C2540:
/* 806C2540  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806C2544  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806C2548  39 61 00 60 */	addi r11, r1, 0x60
/* 806C254C  4B C9 FC D8 */	b _restgpr_28
/* 806C2550  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806C2554  7C 08 03 A6 */	mtlr r0
/* 806C2558  38 21 00 70 */	addi r1, r1, 0x70
/* 806C255C  4E 80 00 20 */	blr 
