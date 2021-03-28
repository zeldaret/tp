lbl_805B2110:
/* 805B2110  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805B2114  7C 08 02 A6 */	mflr r0
/* 805B2118  90 01 00 84 */	stw r0, 0x84(r1)
/* 805B211C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805B2120  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805B2124  39 61 00 70 */	addi r11, r1, 0x70
/* 805B2128  4B DB 00 94 */	b _savegpr_21
/* 805B212C  7C 7F 1B 78 */	mr r31, r3
/* 805B2130  3C 60 80 5B */	lis r3, lit_3764@ha
/* 805B2134  3B 83 31 40 */	addi r28, r3, lit_3764@l
/* 805B2138  4B A6 61 70 */	b cDmrNowMidnaTalk__Fv
/* 805B213C  2C 03 00 00 */	cmpwi r3, 0
/* 805B2140  41 82 00 0C */	beq lbl_805B214C
/* 805B2144  38 60 00 01 */	li r3, 1
/* 805B2148  48 00 06 D8 */	b lbl_805B2820
lbl_805B214C:
/* 805B214C  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 805B2150  90 01 00 08 */	stw r0, 8(r1)
/* 805B2154  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805B2158  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805B215C  38 81 00 08 */	addi r4, r1, 8
/* 805B2160  4B A6 76 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805B2164  7C 7D 1B 78 */	mr r29, r3
/* 805B2168  88 03 06 F8 */	lbz r0, 0x6f8(r3)
/* 805B216C  7C 00 07 75 */	extsb. r0, r0
/* 805B2170  40 82 00 20 */	bne lbl_805B2190
/* 805B2174  38 00 00 01 */	li r0, 1
/* 805B2178  98 1F 0A 25 */	stb r0, 0xa25(r31)
/* 805B217C  A8 1F 06 6A */	lha r0, 0x66a(r31)
/* 805B2180  2C 00 00 00 */	cmpwi r0, 0
/* 805B2184  40 82 00 0C */	bne lbl_805B2190
/* 805B2188  38 00 00 14 */	li r0, 0x14
/* 805B218C  B0 1F 06 6A */	sth r0, 0x66a(r31)
lbl_805B2190:
/* 805B2190  A8 7F 06 68 */	lha r3, 0x668(r31)
/* 805B2194  38 03 00 01 */	addi r0, r3, 1
/* 805B2198  B0 1F 06 68 */	sth r0, 0x668(r31)
/* 805B219C  38 60 00 00 */	li r3, 0
/* 805B21A0  38 00 00 05 */	li r0, 5
/* 805B21A4  7C 09 03 A6 */	mtctr r0
lbl_805B21A8:
/* 805B21A8  38 A3 06 94 */	addi r5, r3, 0x694
/* 805B21AC  7C 9F 2A AE */	lhax r4, r31, r5
/* 805B21B0  2C 04 00 00 */	cmpwi r4, 0
/* 805B21B4  41 82 00 0C */	beq lbl_805B21C0
/* 805B21B8  38 04 FF FF */	addi r0, r4, -1
/* 805B21BC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_805B21C0:
/* 805B21C0  38 63 00 02 */	addi r3, r3, 2
/* 805B21C4  42 00 FF E4 */	bdnz lbl_805B21A8
/* 805B21C8  A8 7F 06 9E */	lha r3, 0x69e(r31)
/* 805B21CC  2C 03 00 00 */	cmpwi r3, 0
/* 805B21D0  41 82 00 0C */	beq lbl_805B21DC
/* 805B21D4  38 03 FF FF */	addi r0, r3, -1
/* 805B21D8  B0 1F 06 9E */	sth r0, 0x69e(r31)
lbl_805B21DC:
/* 805B21DC  88 1F 0A 25 */	lbz r0, 0xa25(r31)
/* 805B21E0  7C 00 07 75 */	extsb. r0, r0
/* 805B21E4  41 82 01 24 */	beq lbl_805B2308
/* 805B21E8  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 805B21EC  B0 1F 0A 26 */	sth r0, 0xa26(r31)
/* 805B21F0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805B21F4  B0 1F 0A 28 */	sth r0, 0xa28(r31)
/* 805B21F8  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 805B21FC  B0 1F 0A 2A */	sth r0, 0xa2a(r31)
/* 805B2200  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B2204  82 A3 00 04 */	lwz r21, 4(r3)
/* 805B2208  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B220C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B2210  38 95 00 24 */	addi r4, r21, 0x24
/* 805B2214  4B D9 42 9C */	b PSMTXCopy
/* 805B2218  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 805B221C  28 00 00 00 */	cmplwi r0, 0
/* 805B2220  40 82 00 30 */	bne lbl_805B2250
/* 805B2224  80 75 00 84 */	lwz r3, 0x84(r21)
/* 805B2228  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B222C  38 63 05 70 */	addi r3, r3, 0x570
/* 805B2230  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B2234  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B2238  80 84 00 00 */	lwz r4, 0(r4)
/* 805B223C  4B D9 42 74 */	b PSMTXCopy
/* 805B2240  A8 7F 0A 2A */	lha r3, 0xa2a(r31)
/* 805B2244  38 03 30 00 */	addi r0, r3, 0x3000
/* 805B2248  B0 1F 0A 2A */	sth r0, 0xa2a(r31)
/* 805B224C  48 00 00 2C */	b lbl_805B2278
lbl_805B2250:
/* 805B2250  80 75 00 84 */	lwz r3, 0x84(r21)
/* 805B2254  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B2258  38 63 07 20 */	addi r3, r3, 0x720
/* 805B225C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B2260  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B2264  80 84 00 00 */	lwz r4, 0(r4)
/* 805B2268  4B D9 42 48 */	b PSMTXCopy
/* 805B226C  A8 7F 0A 2A */	lha r3, 0xa2a(r31)
/* 805B2270  38 03 D0 00 */	addi r0, r3, -12288
/* 805B2274  B0 1F 0A 2A */	sth r0, 0xa2a(r31)
lbl_805B2278:
/* 805B2278  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B227C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B2280  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805B2284  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B2288  38 61 00 28 */	addi r3, r1, 0x28
/* 805B228C  38 9F 06 A4 */	addi r4, r31, 0x6a4
/* 805B2290  4B CB EC 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 805B2294  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B2298  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B229C  80 63 00 00 */	lwz r3, 0(r3)
/* 805B22A0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805B22A4  4B A5 A1 38 */	b mDoMtx_YrotS__FPA4_fs
/* 805B22A8  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 805B22AC  28 00 00 00 */	cmplwi r0, 0
/* 805B22B0  40 82 00 0C */	bne lbl_805B22BC
/* 805B22B4  C0 1C 00 8C */	lfs f0, 0x8c(r28)
/* 805B22B8  48 00 00 08 */	b lbl_805B22C0
lbl_805B22BC:
/* 805B22BC  C0 1C 00 D0 */	lfs f0, 0xd0(r28)
lbl_805B22C0:
/* 805B22C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B22C4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B22C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805B22CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B22D0  38 61 00 28 */	addi r3, r1, 0x28
/* 805B22D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 805B22D8  4B CB EC 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B22DC  38 61 00 10 */	addi r3, r1, 0x10
/* 805B22E0  38 81 00 1C */	addi r4, r1, 0x1c
/* 805B22E4  38 BF 06 A4 */	addi r5, r31, 0x6a4
/* 805B22E8  4B CB 47 FC */	b __pl__4cXyzCFRC3Vec
/* 805B22EC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805B22F0  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
/* 805B22F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805B22F8  D0 1F 06 B4 */	stfs f0, 0x6b4(r31)
/* 805B22FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805B2300  D0 1F 06 B8 */	stfs f0, 0x6b8(r31)
/* 805B2304  48 00 00 1C */	b lbl_805B2320
lbl_805B2308:
/* 805B2308  C0 1F 06 A4 */	lfs f0, 0x6a4(r31)
/* 805B230C  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
/* 805B2310  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 805B2314  D0 1F 06 B4 */	stfs f0, 0x6b4(r31)
/* 805B2318  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 805B231C  D0 1F 06 B8 */	stfs f0, 0x6b8(r31)
lbl_805B2320:
/* 805B2320  7F E3 FB 78 */	mr r3, r31
/* 805B2324  4B FF F2 85 */	bl action__FP10b_bh_class
/* 805B2328  7F E3 FB 78 */	mr r3, r31
/* 805B232C  4B FF FC 21 */	bl anm_se_set__FP10b_bh_class
/* 805B2330  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B2334  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B2338  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805B233C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805B2340  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805B2344  4B D9 45 A4 */	b PSMTXTrans
/* 805B2348  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B234C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B2350  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805B2354  4B A5 A0 E0 */	b mDoMtx_YrotM__FPA4_fs
/* 805B2358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B235C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B2360  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805B2364  4B A5 A0 38 */	b mDoMtx_XrotM__FPA4_fs
/* 805B2368  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B236C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B2370  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 805B2374  4B A5 A1 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 805B2378  3C 60 80 5B */	lis r3, l_HIO@ha
/* 805B237C  3B A3 33 FC */	addi r29, r3, l_HIO@l
/* 805B2380  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805B2384  FC 40 08 90 */	fmr f2, f1
/* 805B2388  FC 60 08 90 */	fmr f3, f1
/* 805B238C  4B A5 AA AC */	b scaleM__14mDoMtx_stack_cFfff
/* 805B2390  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805B2394  82 A3 00 04 */	lwz r21, 4(r3)
/* 805B2398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805B239C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805B23A0  38 95 00 24 */	addi r4, r21, 0x24
/* 805B23A4  4B D9 41 0C */	b PSMTXCopy
/* 805B23A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805B23AC  7C 03 07 74 */	extsb r3, r0
/* 805B23B0  4B A7 AC BC */	b dComIfGp_getReverb__Fi
/* 805B23B4  7C 65 1B 78 */	mr r5, r3
/* 805B23B8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805B23BC  38 80 00 00 */	li r4, 0
/* 805B23C0  4B A5 EC F0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 805B23C4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805B23C8  4B A5 EE 24 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805B23CC  80 75 00 84 */	lwz r3, 0x84(r21)
/* 805B23D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B23D4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 805B23D8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 805B23DC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805B23E0  80 84 00 00 */	lwz r4, 0(r4)
/* 805B23E4  4B D9 40 CC */	b PSMTXCopy
/* 805B23E8  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 805B23EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B23F0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B23F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805B23F8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B23FC  38 61 00 28 */	addi r3, r1, 0x28
/* 805B2400  38 9F 05 38 */	addi r4, r31, 0x538
/* 805B2404  4B CB EA E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B2408  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805B240C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805B2410  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805B2414  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805B2418  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805B241C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805B2420  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805B2424  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 805B2428  EC 01 00 2A */	fadds f0, f1, f0
/* 805B242C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805B2430  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 805B2434  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B2438  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B243C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805B2440  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B2444  38 61 00 28 */	addi r3, r1, 0x28
/* 805B2448  38 81 00 1C */	addi r4, r1, 0x1c
/* 805B244C  4B CB EA A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B2450  38 7F 0B 94 */	addi r3, r31, 0xb94
/* 805B2454  38 81 00 1C */	addi r4, r1, 0x1c
/* 805B2458  4B CB D1 F0 */	b SetC__8cM3dGSphFRC4cXyz
/* 805B245C  38 7F 0B 94 */	addi r3, r31, 0xb94
/* 805B2460  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 805B2464  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805B2468  EC 21 00 32 */	fmuls f1, f1, f0
/* 805B246C  4B CB D2 9C */	b SetR__8cM3dGSphFf
/* 805B2470  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 805B2474  C0 1C 00 B4 */	lfs f0, 0xb4(r28)
/* 805B2478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B247C  40 81 00 38 */	ble lbl_805B24B4
/* 805B2480  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B2484  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B2488  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 805B248C  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 805B2490  41 82 00 24 */	beq lbl_805B24B4
/* 805B2494  38 7F 0C CC */	addi r3, r31, 0xccc
/* 805B2498  C0 5C 00 D4 */	lfs f2, 0xd4(r28)
/* 805B249C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 805B24A0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805B24A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B24A8  EC 22 00 32 */	fmuls f1, f2, f0
/* 805B24AC  4B CB D2 5C */	b SetR__8cM3dGSphFf
/* 805B24B0  48 00 00 14 */	b lbl_805B24C4
lbl_805B24B4:
/* 805B24B4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805B24B8  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 805B24BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B24C0  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_805B24C4:
/* 805B24C4  38 7F 0C CC */	addi r3, r31, 0xccc
/* 805B24C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 805B24CC  4B CB D1 7C */	b SetC__8cM3dGSphFRC4cXyz
/* 805B24D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B24D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B24D8  3A A3 23 3C */	addi r21, r3, 0x233c
/* 805B24DC  7E A3 AB 78 */	mr r3, r21
/* 805B24E0  38 9F 0A 70 */	addi r4, r31, 0xa70
/* 805B24E4  4B CB 26 C4 */	b Set__4cCcSFP8cCcD_Obj
/* 805B24E8  7E A3 AB 78 */	mr r3, r21
/* 805B24EC  38 9F 0B A8 */	addi r4, r31, 0xba8
/* 805B24F0  4B CB 26 B8 */	b Set__4cCcSFP8cCcD_Obj
/* 805B24F4  88 1F 0C E0 */	lbz r0, 0xce0(r31)
/* 805B24F8  7C 00 07 75 */	extsb. r0, r0
/* 805B24FC  41 82 00 1C */	beq lbl_805B2518
/* 805B2500  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 805B2504  60 00 00 01 */	ori r0, r0, 1
/* 805B2508  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 805B250C  38 00 00 00 */	li r0, 0
/* 805B2510  98 1F 0C E0 */	stb r0, 0xce0(r31)
/* 805B2514  48 00 00 10 */	b lbl_805B2524
lbl_805B2518:
/* 805B2518  80 1F 0A 70 */	lwz r0, 0xa70(r31)
/* 805B251C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805B2520  90 1F 0A 70 */	stw r0, 0xa70(r31)
lbl_805B2524:
/* 805B2524  C0 3C 00 D8 */	lfs f1, 0xd8(r28)
/* 805B2528  C0 1F 0A 20 */	lfs f0, 0xa20(r31)
/* 805B252C  EF E1 00 32 */	fmuls f31, f1, f0
/* 805B2530  3B 40 00 00 */	li r26, 0
/* 805B2534  3A A0 00 00 */	li r21, 0
lbl_805B2538:
/* 805B2538  3B D5 09 00 */	addi r30, r21, 0x900
/* 805B253C  7C 7F F2 AE */	lhax r3, r31, r30
/* 805B2540  7C 60 07 35 */	extsh. r0, r3
/* 805B2544  40 82 00 44 */	bne lbl_805B2588
/* 805B2548  88 1F 09 0C */	lbz r0, 0x90c(r31)
/* 805B254C  2C 00 00 02 */	cmpwi r0, 2
/* 805B2550  40 82 01 28 */	bne lbl_805B2678
/* 805B2554  38 00 00 00 */	li r0, 0
/* 805B2558  98 1F 09 0C */	stb r0, 0x90c(r31)
/* 805B255C  38 00 00 02 */	li r0, 2
/* 805B2560  7C 7F AA 14 */	add r3, r31, r21
/* 805B2564  B0 03 09 00 */	sth r0, 0x900(r3)
/* 805B2568  38 00 00 11 */	li r0, 0x11
/* 805B256C  7C 7F D2 14 */	add r3, r31, r26
/* 805B2570  98 03 09 06 */	stb r0, 0x906(r3)
/* 805B2574  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 805B2578  D0 1F 08 FC */	stfs f0, 0x8fc(r31)
/* 805B257C  38 00 0F A0 */	li r0, 0xfa0
/* 805B2580  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 805B2584  48 00 01 04 */	b lbl_805B2688
lbl_805B2588:
/* 805B2588  2C 03 00 01 */	cmpwi r3, 1
/* 805B258C  40 82 00 5C */	bne lbl_805B25E8
/* 805B2590  7C BF D2 14 */	add r5, r31, r26
/* 805B2594  88 05 09 09 */	lbz r0, 0x909(r5)
/* 805B2598  7C 00 07 75 */	extsb. r0, r0
/* 805B259C  40 82 00 C4 */	bne lbl_805B2660
/* 805B25A0  38 00 00 02 */	li r0, 2
/* 805B25A4  98 05 09 09 */	stb r0, 0x909(r5)
/* 805B25A8  38 80 00 01 */	li r4, 1
/* 805B25AC  88 05 09 06 */	lbz r0, 0x906(r5)
/* 805B25B0  7C 00 07 74 */	extsb r0, r0
/* 805B25B4  54 03 08 3C */	slwi r3, r0, 1
/* 805B25B8  38 03 08 D4 */	addi r0, r3, 0x8d4
/* 805B25BC  7C 9F 03 2E */	sthx r4, r31, r0
/* 805B25C0  88 65 09 06 */	lbz r3, 0x906(r5)
/* 805B25C4  38 03 00 01 */	addi r0, r3, 1
/* 805B25C8  98 05 09 06 */	stb r0, 0x906(r5)
/* 805B25CC  88 05 09 06 */	lbz r0, 0x906(r5)
/* 805B25D0  7C 00 07 74 */	extsb r0, r0
/* 805B25D4  2C 00 00 12 */	cmpwi r0, 0x12
/* 805B25D8  41 80 00 88 */	blt lbl_805B2660
/* 805B25DC  38 00 00 00 */	li r0, 0
/* 805B25E0  7C 1F F3 2E */	sthx r0, r31, r30
/* 805B25E4  48 00 00 7C */	b lbl_805B2660
lbl_805B25E8:
/* 805B25E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070109@ha */
/* 805B25EC  38 03 01 09 */	addi r0, r3, 0x0109 /* 0x00070109@l */
/* 805B25F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B25F4  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 805B25F8  38 81 00 0C */	addi r4, r1, 0xc
/* 805B25FC  38 A0 00 00 */	li r5, 0
/* 805B2600  38 C0 FF FF */	li r6, -1
/* 805B2604  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 805B2608  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805B260C  7D 89 03 A6 */	mtctr r12
/* 805B2610  4E 80 04 21 */	bctrl 
/* 805B2614  7C BF D2 14 */	add r5, r31, r26
/* 805B2618  88 05 09 09 */	lbz r0, 0x909(r5)
/* 805B261C  7C 00 07 75 */	extsb. r0, r0
/* 805B2620  40 82 00 40 */	bne lbl_805B2660
/* 805B2624  38 80 00 01 */	li r4, 1
/* 805B2628  98 85 09 09 */	stb r4, 0x909(r5)
/* 805B262C  88 05 09 06 */	lbz r0, 0x906(r5)
/* 805B2630  7C 00 07 74 */	extsb r0, r0
/* 805B2634  54 03 08 3C */	slwi r3, r0, 1
/* 805B2638  38 03 08 D4 */	addi r0, r3, 0x8d4
/* 805B263C  7C 9F 03 2E */	sthx r4, r31, r0
/* 805B2640  88 65 09 06 */	lbz r3, 0x906(r5)
/* 805B2644  38 03 FF FF */	addi r0, r3, -1
/* 805B2648  98 05 09 06 */	stb r0, 0x906(r5)
/* 805B264C  88 05 09 06 */	lbz r0, 0x906(r5)
/* 805B2650  7C 00 07 75 */	extsb. r0, r0
/* 805B2654  40 80 00 0C */	bge lbl_805B2660
/* 805B2658  38 00 00 00 */	li r0, 0
/* 805B265C  7C 1F F3 2E */	sthx r0, r31, r30
lbl_805B2660:
/* 805B2660  38 9A 09 09 */	addi r4, r26, 0x909
/* 805B2664  7C 7F 20 AE */	lbzx r3, r31, r4
/* 805B2668  7C 60 07 75 */	extsb. r0, r3
/* 805B266C  41 82 00 0C */	beq lbl_805B2678
/* 805B2670  38 03 FF FF */	addi r0, r3, -1
/* 805B2674  7C 1F 21 AE */	stbx r0, r31, r4
lbl_805B2678:
/* 805B2678  3B 5A 00 01 */	addi r26, r26, 1
/* 805B267C  2C 1A 00 03 */	cmpwi r26, 3
/* 805B2680  3A B5 00 02 */	addi r21, r21, 2
/* 805B2684  41 80 FE B4 */	blt lbl_805B2538
lbl_805B2688:
/* 805B2688  3B 20 00 00 */	li r25, 0
/* 805B268C  3B 00 00 00 */	li r24, 0
/* 805B2690  3A E0 00 00 */	li r23, 0
/* 805B2694  3A C0 00 00 */	li r22, 0
/* 805B2698  3A A0 00 00 */	li r21, 0
/* 805B269C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B26A0  3B C3 07 68 */	addi r30, r3, calc_mtx@l
lbl_805B26A4:
/* 805B26A4  38 95 08 D4 */	addi r4, r21, 0x8d4
/* 805B26A8  7C 7F 22 AE */	lhax r3, r31, r4
/* 805B26AC  2C 03 00 00 */	cmpwi r3, 0
/* 805B26B0  41 82 00 50 */	beq lbl_805B2700
/* 805B26B4  A8 1F 08 F8 */	lha r0, 0x8f8(r31)
/* 805B26B8  7C 03 02 14 */	add r0, r3, r0
/* 805B26BC  7C 1F 23 2E */	sthx r0, r31, r4
/* 805B26C0  7C 1F 22 AE */	lhax r0, r31, r4
/* 805B26C4  2C 00 00 00 */	cmpwi r0, 0
/* 805B26C8  40 80 00 0C */	bge lbl_805B26D4
/* 805B26CC  38 00 00 00 */	li r0, 0
/* 805B26D0  7C 1F 23 2E */	sthx r0, r31, r4
lbl_805B26D4:
/* 805B26D4  7C 1F 22 AE */	lhax r0, r31, r4
/* 805B26D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B26DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805B26E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805B26E4  7C 43 04 2E */	lfsx f2, r3, r0
/* 805B26E8  C0 3C 00 20 */	lfs f1, 0x20(r28)
/* 805B26EC  C0 1F 08 FC */	lfs f0, 0x8fc(r31)
/* 805B26F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805B26F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805B26F8  38 16 08 8C */	addi r0, r22, 0x88c
/* 805B26FC  7C 1F 05 2E */	stfsx f0, r31, r0
lbl_805B2700:
/* 805B2700  7C 7F BA 14 */	add r3, r31, r23
/* 805B2704  C0 23 06 BC */	lfs f1, 0x6bc(r3)
/* 805B2708  C0 43 06 C0 */	lfs f2, 0x6c0(r3)
/* 805B270C  C0 63 06 C4 */	lfs f3, 0x6c4(r3)
/* 805B2710  38 60 00 00 */	li r3, 0
/* 805B2714  4B CB E7 48 */	b MtxTrans__FfffUc
/* 805B2718  80 7E 00 00 */	lwz r3, 0(r30)
/* 805B271C  7F 7F C2 14 */	add r27, r31, r24
/* 805B2720  A8 9B 07 94 */	lha r4, 0x794(r27)
/* 805B2724  4B A5 9C 78 */	b mDoMtx_XrotM__FPA4_fs
/* 805B2728  80 7E 00 00 */	lwz r3, 0(r30)
/* 805B272C  A8 9B 07 96 */	lha r4, 0x796(r27)
/* 805B2730  3C 84 00 01 */	addis r4, r4, 1
/* 805B2734  38 04 80 00 */	addi r0, r4, -32768
/* 805B2738  7C 04 07 34 */	extsh r4, r0
/* 805B273C  4B A5 9C F8 */	b mDoMtx_YrotM__FPA4_fs
/* 805B2740  4B CB E7 DC */	b MtxPush__Fv
/* 805B2744  C0 7D 00 08 */	lfs f3, 8(r29)
/* 805B2748  7F 5F B2 14 */	add r26, r31, r22
/* 805B274C  C0 1A 08 8C */	lfs f0, 0x88c(r26)
/* 805B2750  EC 23 00 32 */	fmuls f1, f3, f0
/* 805B2754  FC 40 08 90 */	fmr f2, f1
/* 805B2758  EC 63 F8 2A */	fadds f3, f3, f31
/* 805B275C  38 60 00 01 */	li r3, 1
/* 805B2760  4B CB E7 44 */	b MtxScale__FfffUc
/* 805B2764  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805B2768  FC 40 08 90 */	fmr f2, f1
/* 805B276C  C0 7C 00 DC */	lfs f3, 0xdc(r28)
/* 805B2770  38 60 00 01 */	li r3, 1
/* 805B2774  4B CB E6 E8 */	b MtxTrans__FfffUc
/* 805B2778  80 7E 00 00 */	lwz r3, 0(r30)
/* 805B277C  80 9A 08 00 */	lwz r4, 0x800(r26)
/* 805B2780  38 84 00 24 */	addi r4, r4, 0x24
/* 805B2784  4B D9 3D 2C */	b PSMTXCopy
/* 805B2788  4B CB E7 D0 */	b MtxPull__Fv
/* 805B278C  80 1A 09 1C */	lwz r0, 0x91c(r26)
/* 805B2790  28 00 00 00 */	cmplwi r0, 0
/* 805B2794  41 82 00 6C */	beq lbl_805B2800
/* 805B2798  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805B279C  FC 40 08 90 */	fmr f2, f1
/* 805B27A0  FC 60 08 90 */	fmr f3, f1
/* 805B27A4  38 60 00 01 */	li r3, 1
/* 805B27A8  4B CB E6 FC */	b MtxScale__FfffUc
/* 805B27AC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805B27B0  FC 40 08 90 */	fmr f2, f1
/* 805B27B4  C0 7C 00 DC */	lfs f3, 0xdc(r28)
/* 805B27B8  38 60 00 01 */	li r3, 1
/* 805B27BC  4B CB E6 A0 */	b MtxTrans__FfffUc
/* 805B27C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B27C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B27C8  80 63 00 00 */	lwz r3, 0(r3)
/* 805B27CC  A8 9B 09 AA */	lha r4, 0x9aa(r27)
/* 805B27D0  4B A5 9C 64 */	b mDoMtx_YrotM__FPA4_fs
/* 805B27D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B27D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B27DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805B27E0  A8 9B 09 AC */	lha r4, 0x9ac(r27)
/* 805B27E4  4B A5 9C E8 */	b mDoMtx_ZrotM__FPA4_fs
/* 805B27E8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B27EC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B27F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B27F4  80 9A 09 1C */	lwz r4, 0x91c(r26)
/* 805B27F8  38 84 00 24 */	addi r4, r4, 0x24
/* 805B27FC  4B D9 3C B4 */	b PSMTXCopy
lbl_805B2800:
/* 805B2800  3B 39 00 01 */	addi r25, r25, 1
/* 805B2804  2C 19 00 11 */	cmpwi r25, 0x11
/* 805B2808  3B 18 00 06 */	addi r24, r24, 6
/* 805B280C  3A F7 00 0C */	addi r23, r23, 0xc
/* 805B2810  3A D6 00 04 */	addi r22, r22, 4
/* 805B2814  3A B5 00 02 */	addi r21, r21, 2
/* 805B2818  41 80 FE 8C */	blt lbl_805B26A4
/* 805B281C  38 60 00 01 */	li r3, 1
lbl_805B2820:
/* 805B2820  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805B2824  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805B2828  39 61 00 70 */	addi r11, r1, 0x70
/* 805B282C  4B DA F9 DC */	b _restgpr_21
/* 805B2830  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805B2834  7C 08 03 A6 */	mtlr r0
/* 805B2838  38 21 00 80 */	addi r1, r1, 0x80
/* 805B283C  4E 80 00 20 */	blr 
