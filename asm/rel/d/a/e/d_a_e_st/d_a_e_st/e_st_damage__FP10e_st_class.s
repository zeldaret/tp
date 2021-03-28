lbl_807A2110:
/* 807A2110  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807A2114  7C 08 02 A6 */	mflr r0
/* 807A2118  90 01 00 54 */	stw r0, 0x54(r1)
/* 807A211C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807A2120  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807A2124  39 61 00 40 */	addi r11, r1, 0x40
/* 807A2128  4B BC 00 B4 */	b _savegpr_29
/* 807A212C  7C 7E 1B 78 */	mr r30, r3
/* 807A2130  3C 80 80 7A */	lis r4, lit_3903@ha
/* 807A2134  3B E4 68 24 */	addi r31, r4, lit_3903@l
/* 807A2138  3B A0 02 00 */	li r29, 0x200
/* 807A213C  38 00 00 06 */	li r0, 6
/* 807A2140  B0 03 06 8A */	sth r0, 0x68a(r3)
/* 807A2144  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A2148  D0 03 07 EC */	stfs f0, 0x7ec(r3)
/* 807A214C  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807A2150  2C 00 00 02 */	cmpwi r0, 2
/* 807A2154  41 82 01 88 */	beq lbl_807A22DC
/* 807A2158  40 80 00 14 */	bge lbl_807A216C
/* 807A215C  2C 00 00 00 */	cmpwi r0, 0
/* 807A2160  41 82 00 18 */	beq lbl_807A2178
/* 807A2164  40 80 01 2C */	bge lbl_807A2290
/* 807A2168  48 00 04 50 */	b lbl_807A25B8
lbl_807A216C:
/* 807A216C  2C 00 00 06 */	cmpwi r0, 6
/* 807A2170  40 80 04 48 */	bge lbl_807A25B8
/* 807A2174  48 00 02 5C */	b lbl_807A23D0
lbl_807A2178:
/* 807A2178  38 00 00 01 */	li r0, 1
/* 807A217C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2180  38 80 00 18 */	li r4, 0x18
/* 807A2184  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807A2188  38 A0 00 00 */	li r5, 0
/* 807A218C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A2190  4B FF BC BD */	bl anm_init__FP10e_st_classifUcf
/* 807A2194  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 807A2198  D0 1E 07 F4 */	stfs f0, 0x7f4(r30)
/* 807A219C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 807A21A0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 807A21A4  40 80 00 9C */	bge lbl_807A2240
/* 807A21A8  2C 00 F0 00 */	cmpwi r0, -4096
/* 807A21AC  40 81 00 94 */	ble lbl_807A2240
/* 807A21B0  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 807A21B4  7C 80 07 35 */	extsh. r0, r4
/* 807A21B8  40 82 00 10 */	bne lbl_807A21C8
/* 807A21BC  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807A21C0  2C 00 00 00 */	cmpwi r0, 0
/* 807A21C4  41 82 00 40 */	beq lbl_807A2204
lbl_807A21C8:
/* 807A21C8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A21CC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A21D0  80 63 00 00 */	lwz r3, 0(r3)
/* 807A21D4  4B 86 A2 08 */	b mDoMtx_YrotS__FPA4_fs
/* 807A21D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A21DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A21E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807A21E4  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 807A21E8  4B 86 A1 B4 */	b mDoMtx_XrotM__FPA4_fs
/* 807A21EC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A21F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A21F4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807A21F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A21FC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A2200  48 00 00 30 */	b lbl_807A2230
lbl_807A2204:
/* 807A2204  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A2208  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A220C  80 63 00 00 */	lwz r3, 0(r3)
/* 807A2210  A8 9E 07 DE */	lha r4, 0x7de(r30)
/* 807A2214  4B 86 A1 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 807A2218  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A221C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A2220  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 807A2224  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A2228  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 807A222C  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_807A2230:
/* 807A2230  38 61 00 0C */	addi r3, r1, 0xc
/* 807A2234  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807A2238  4B AC EC B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A223C  48 00 00 3C */	b lbl_807A2278
lbl_807A2240:
/* 807A2240  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A2244  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A2248  80 63 00 00 */	lwz r3, 0(r3)
/* 807A224C  A8 9E 07 DE */	lha r4, 0x7de(r30)
/* 807A2250  4B 86 A1 8C */	b mDoMtx_YrotS__FPA4_fs
/* 807A2254  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A2258  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A225C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 807A2260  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A2264  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 807A2268  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807A226C  38 61 00 0C */	addi r3, r1, 0xc
/* 807A2270  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807A2274  4B AC EC 78 */	b MtxPosition__FP4cXyzP4cXyz
lbl_807A2278:
/* 807A2278  38 00 00 00 */	li r0, 0
/* 807A227C  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 807A2280  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807A2284  38 00 00 0A */	li r0, 0xa
/* 807A2288  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807A228C  48 00 03 2C */	b lbl_807A25B8
lbl_807A2290:
/* 807A2290  80 1E 08 6C */	lwz r0, 0x86c(r30)
/* 807A2294  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807A2298  40 82 00 1C */	bne lbl_807A22B4
/* 807A229C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A22A0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807A22A4  C0 1E 07 F4 */	lfs f0, 0x7f4(r30)
/* 807A22A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A22AC  4C 41 13 82 */	cror 2, 1, 2
/* 807A22B0  40 82 00 2C */	bne lbl_807A22DC
lbl_807A22B4:
/* 807A22B4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807A22B8  D0 1E 07 F4 */	stfs f0, 0x7f4(r30)
/* 807A22BC  7F C3 F3 78 */	mr r3, r30
/* 807A22C0  38 80 00 0E */	li r4, 0xe
/* 807A22C4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807A22C8  38 A0 00 02 */	li r5, 2
/* 807A22CC  C0 5E 07 F4 */	lfs f2, 0x7f4(r30)
/* 807A22D0  4B FF BB 7D */	bl anm_init__FP10e_st_classifUcf
/* 807A22D4  38 00 00 02 */	li r0, 2
/* 807A22D8  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A22DC:
/* 807A22DC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807A22E0  A8 1E 07 D4 */	lha r0, 0x7d4(r30)
/* 807A22E4  7C 03 02 14 */	add r0, r3, r0
/* 807A22E8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807A22EC  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807A22F0  38 80 80 00 */	li r4, -32768
/* 807A22F4  38 A0 00 04 */	li r5, 4
/* 807A22F8  38 C0 07 00 */	li r6, 0x700
/* 807A22FC  4B AC E3 0C */	b cLib_addCalcAngleS2__FPssss
/* 807A2300  80 1E 08 6C */	lwz r0, 0x86c(r30)
/* 807A2304  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807A2308  41 82 00 88 */	beq lbl_807A2390
/* 807A230C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 807A2310  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 807A2314  90 01 00 08 */	stw r0, 8(r1)
/* 807A2318  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 807A231C  38 81 00 08 */	addi r4, r1, 8
/* 807A2320  38 A0 00 00 */	li r5, 0
/* 807A2324  38 C0 FF FF */	li r6, -1
/* 807A2328  81 9E 05 D0 */	lwz r12, 0x5d0(r30)
/* 807A232C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A2330  7D 89 03 A6 */	mtctr r12
/* 807A2334  4E 80 04 21 */	bctrl 
/* 807A2338  38 00 00 03 */	li r0, 3
/* 807A233C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2340  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807A2344  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 807A2348  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A234C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807A2350  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807A2354  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A2358  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807A235C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807A2360  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A2364  3B A0 10 00 */	li r29, 0x1000
/* 807A2368  38 7E 0F 6C */	addi r3, r30, 0xf6c
/* 807A236C  38 9E 0F 70 */	addi r4, r30, 0xf70
/* 807A2370  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807A2374  38 C0 00 00 */	li r6, 0
/* 807A2378  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A237C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807A2380  39 00 00 01 */	li r8, 1
/* 807A2384  4B 87 AC 9C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 807A2388  38 00 00 3C */	li r0, 0x3c
/* 807A238C  B0 1E 06 84 */	sth r0, 0x684(r30)
lbl_807A2390:
/* 807A2390  A8 1E 06 86 */	lha r0, 0x686(r30)
/* 807A2394  2C 00 00 00 */	cmpwi r0, 0
/* 807A2398  40 82 02 20 */	bne lbl_807A25B8
/* 807A239C  80 1E 08 6C */	lwz r0, 0x86c(r30)
/* 807A23A0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807A23A4  41 82 02 14 */	beq lbl_807A25B8
/* 807A23A8  38 00 00 0A */	li r0, 0xa
/* 807A23AC  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807A23B0  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807A23B4  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 807A23B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A23BC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807A23C0  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807A23C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A23C8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807A23CC  48 00 01 EC */	b lbl_807A25B8
lbl_807A23D0:
/* 807A23D0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807A23D4  A8 1E 07 D4 */	lha r0, 0x7d4(r30)
/* 807A23D8  7C 03 02 14 */	add r0, r3, r0
/* 807A23DC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807A23E0  3B A0 08 00 */	li r29, 0x800
/* 807A23E4  80 1E 08 6C */	lwz r0, 0x86c(r30)
/* 807A23E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807A23EC  41 82 00 AC */	beq lbl_807A2498
/* 807A23F0  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A23F4  2C 00 00 03 */	cmpwi r0, 3
/* 807A23F8  40 82 00 14 */	bne lbl_807A240C
/* 807A23FC  38 00 00 3C */	li r0, 0x3c
/* 807A2400  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 807A2404  38 00 00 04 */	li r0, 4
/* 807A2408  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807A240C:
/* 807A240C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 807A2410  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807A2414  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A2418  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807A241C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 807A2420  EC 00 00 72 */	fmuls f0, f0, f1
/* 807A2424  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807A2428  3B A0 10 00 */	li r29, 0x1000
/* 807A242C  80 1E 06 74 */	lwz r0, 0x674(r30)
/* 807A2430  2C 00 00 0D */	cmpwi r0, 0xd
/* 807A2434  40 82 00 64 */	bne lbl_807A2498
/* 807A2438  A8 1E 06 82 */	lha r0, 0x682(r30)
/* 807A243C  2C 00 00 00 */	cmpwi r0, 0
/* 807A2440  40 82 00 58 */	bne lbl_807A2498
/* 807A2444  7F C3 F3 78 */	mr r3, r30
/* 807A2448  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A244C  3C A0 80 7A */	lis r5, small@ha
/* 807A2450  80 05 6D E0 */	lwz r0, small@l(r5)
/* 807A2454  2C 00 00 00 */	cmpwi r0, 0
/* 807A2458  38 A0 00 10 */	li r5, 0x10
/* 807A245C  41 82 00 08 */	beq lbl_807A2464
/* 807A2460  38 A0 00 07 */	li r5, 7
lbl_807A2464:
/* 807A2464  38 C0 00 00 */	li r6, 0
/* 807A2468  38 E0 00 06 */	li r7, 6
/* 807A246C  4B 87 A6 6C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807A2470  7F C3 F3 78 */	mr r3, r30
/* 807A2474  4B 87 78 08 */	b fopAcM_delete__FP10fopAc_ac_c
/* 807A2478  88 9E 05 B8 */	lbz r4, 0x5b8(r30)
/* 807A247C  28 04 00 FF */	cmplwi r4, 0xff
/* 807A2480  41 82 00 18 */	beq lbl_807A2498
/* 807A2484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A2488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A248C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807A2490  7C 05 07 74 */	extsb r5, r0
/* 807A2494  4B 89 2D 6C */	b onSwitch__10dSv_info_cFii
lbl_807A2498:
/* 807A2498  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807A249C  A8 7E 06 84 */	lha r3, 0x684(r30)
/* 807A24A0  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 807A24A4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 807A24A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807A24AC  3C 00 43 30 */	lis r0, 0x4330
/* 807A24B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 807A24B4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807A24B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A24BC  EF E2 00 32 */	fmuls f31, f2, f0
/* 807A24C0  1C 03 0F A0 */	mulli r0, r3, 0xfa0
/* 807A24C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A24C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807A24CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807A24D0  7C 03 04 2E */	lfsx f0, r3, r0
/* 807A24D4  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807A24D8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 807A24DC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807A24E0  EC 01 00 2A */	fadds f0, f1, f0
/* 807A24E4  FC 00 00 1E */	fctiwz f0, f0
/* 807A24E8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807A24EC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 807A24F0  38 A0 00 04 */	li r5, 4
/* 807A24F4  7F A6 EB 78 */	mr r6, r29
/* 807A24F8  4B AC E1 10 */	b cLib_addCalcAngleS2__FPssss
/* 807A24FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807A2500  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807A2504  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 807A2508  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 807A250C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A2510  7C 63 02 14 */	add r3, r3, r0
/* 807A2514  C0 03 00 04 */	lfs f0, 4(r3)
/* 807A2518  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 807A251C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 807A2520  FC 00 00 1E */	fctiwz f0, f0
/* 807A2524  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807A2528  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 807A252C  38 A0 00 04 */	li r5, 4
/* 807A2530  7F A6 EB 78 */	mr r6, r29
/* 807A2534  4B AC E0 D4 */	b cLib_addCalcAngleS2__FPssss
/* 807A2538  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A253C  2C 00 00 04 */	cmpwi r0, 4
/* 807A2540  40 82 00 58 */	bne lbl_807A2598
/* 807A2544  38 7E 07 F4 */	addi r3, r30, 0x7f4
/* 807A2548  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A254C  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 807A2550  4B AC D5 30 */	b cLib_addCalc0__FPfff
/* 807A2554  C0 1E 07 F4 */	lfs f0, 0x7f4(r30)
/* 807A2558  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A255C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807A2560  C0 3E 07 F4 */	lfs f1, 0x7f4(r30)
/* 807A2564  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807A2568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A256C  40 80 00 2C */	bge lbl_807A2598
/* 807A2570  38 00 00 05 */	li r0, 5
/* 807A2574  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A2578  7F C3 F3 78 */	mr r3, r30
/* 807A257C  38 80 00 0D */	li r4, 0xd
/* 807A2580  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A2584  38 A0 00 00 */	li r5, 0
/* 807A2588  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A258C  4B FF B8 C1 */	bl anm_init__FP10e_st_classifUcf
/* 807A2590  38 00 00 28 */	li r0, 0x28
/* 807A2594  B0 1E 06 82 */	sth r0, 0x682(r30)
lbl_807A2598:
/* 807A2598  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A259C  2C 00 00 04 */	cmpwi r0, 4
/* 807A25A0  41 80 00 18 */	blt lbl_807A25B8
/* 807A25A4  38 7E 07 D4 */	addi r3, r30, 0x7d4
/* 807A25A8  38 80 00 00 */	li r4, 0
/* 807A25AC  38 A0 00 01 */	li r5, 1
/* 807A25B0  38 C0 00 50 */	li r6, 0x50
/* 807A25B4  4B AC E0 54 */	b cLib_addCalcAngleS2__FPssss
lbl_807A25B8:
/* 807A25B8  38 7E 06 9E */	addi r3, r30, 0x69e
/* 807A25BC  38 80 00 00 */	li r4, 0
/* 807A25C0  38 A0 00 04 */	li r5, 4
/* 807A25C4  7F A6 EB 78 */	mr r6, r29
/* 807A25C8  4B AC E0 40 */	b cLib_addCalcAngleS2__FPssss
/* 807A25CC  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807A25D0  38 80 00 00 */	li r4, 0
/* 807A25D4  38 A0 00 04 */	li r5, 4
/* 807A25D8  7F A6 EB 78 */	mr r6, r29
/* 807A25DC  4B AC E0 2C */	b cLib_addCalcAngleS2__FPssss
/* 807A25E0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807A25E4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807A25E8  7C 65 1B 78 */	mr r5, r3
/* 807A25EC  4B BA 4A A4 */	b PSVECAdd
/* 807A25F0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807A25F4  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 807A25F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A25FC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A2600  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A2604  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A2608  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A260C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807A2610  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 807A2614  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A2618  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 807A261C  38 7E 08 40 */	addi r3, r30, 0x840
/* 807A2620  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A2624  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A2628  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807A262C  4B 8D 44 80 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 807A2630  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A2634  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A2638  EC 00 08 2A */	fadds f0, f0, f1
/* 807A263C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807A2640  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 807A2644  EC 00 08 2A */	fadds f0, f0, f1
/* 807A2648  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 807A264C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807A2650  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807A2654  39 61 00 40 */	addi r11, r1, 0x40
/* 807A2658  4B BB FB D0 */	b _restgpr_29
/* 807A265C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807A2660  7C 08 03 A6 */	mtlr r0
/* 807A2664  38 21 00 50 */	addi r1, r1, 0x50
/* 807A2668  4E 80 00 20 */	blr 
