lbl_806F2054:
/* 806F2054  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806F2058  7C 08 02 A6 */	mflr r0
/* 806F205C  90 01 00 84 */	stw r0, 0x84(r1)
/* 806F2060  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806F2064  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806F2068  39 61 00 70 */	addi r11, r1, 0x70
/* 806F206C  4B C7 01 71 */	bl _savegpr_29
/* 806F2070  7C 7D 1B 78 */	mr r29, r3
/* 806F2074  3C 60 80 6F */	lis r3, lit_3767@ha /* 0x806F5514@ha */
/* 806F2078  3B E3 55 14 */	addi r31, r3, lit_3767@l /* 0x806F5514@l */
/* 806F207C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F2080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F2084  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 806F2088  38 00 00 05 */	li r0, 5
/* 806F208C  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 806F2090  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E2@ha */
/* 806F2094  38 03 04 E2 */	addi r0, r3, 0x04E2 /* 0x000704E2@l */
/* 806F2098  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806F209C  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806F20A0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806F20A4  38 A0 00 00 */	li r5, 0
/* 806F20A8  38 C0 FF FF */	li r6, -1
/* 806F20AC  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 806F20B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F20B4  7D 89 03 A6 */	mtctr r12
/* 806F20B8  4E 80 04 21 */	bctrl 
/* 806F20BC  38 61 00 44 */	addi r3, r1, 0x44
/* 806F20C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F20C4  38 BD 06 F8 */	addi r5, r29, 0x6f8
/* 806F20C8  4B B7 4A 6D */	bl __mi__4cXyzCFRC3Vec
/* 806F20CC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806F20D0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F20D4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 806F20D8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806F20DC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806F20E0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F20E4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806F20E8  EC 01 00 2A */	fadds f0, f1, f0
/* 806F20EC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F20F0  38 61 00 50 */	addi r3, r1, 0x50
/* 806F20F4  4B C5 50 45 */	bl PSVECSquareMag
/* 806F20F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F20FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2100  40 81 00 58 */	ble lbl_806F2158
/* 806F2104  FC 00 08 34 */	frsqrte f0, f1
/* 806F2108  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 806F210C  FC 44 00 32 */	fmul f2, f4, f0
/* 806F2110  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 806F2114  FC 00 00 32 */	fmul f0, f0, f0
/* 806F2118  FC 01 00 32 */	fmul f0, f1, f0
/* 806F211C  FC 03 00 28 */	fsub f0, f3, f0
/* 806F2120  FC 02 00 32 */	fmul f0, f2, f0
/* 806F2124  FC 44 00 32 */	fmul f2, f4, f0
/* 806F2128  FC 00 00 32 */	fmul f0, f0, f0
/* 806F212C  FC 01 00 32 */	fmul f0, f1, f0
/* 806F2130  FC 03 00 28 */	fsub f0, f3, f0
/* 806F2134  FC 02 00 32 */	fmul f0, f2, f0
/* 806F2138  FC 44 00 32 */	fmul f2, f4, f0
/* 806F213C  FC 00 00 32 */	fmul f0, f0, f0
/* 806F2140  FC 01 00 32 */	fmul f0, f1, f0
/* 806F2144  FC 03 00 28 */	fsub f0, f3, f0
/* 806F2148  FC 02 00 32 */	fmul f0, f2, f0
/* 806F214C  FF E1 00 32 */	fmul f31, f1, f0
/* 806F2150  FF E0 F8 18 */	frsp f31, f31
/* 806F2154  48 00 00 90 */	b lbl_806F21E4
lbl_806F2158:
/* 806F2158  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 806F215C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2160  40 80 00 10 */	bge lbl_806F2170
/* 806F2164  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806F2168  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806F216C  48 00 00 78 */	b lbl_806F21E4
lbl_806F2170:
/* 806F2170  D0 21 00 08 */	stfs f1, 8(r1)
/* 806F2174  80 81 00 08 */	lwz r4, 8(r1)
/* 806F2178  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806F217C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806F2180  7C 03 00 00 */	cmpw r3, r0
/* 806F2184  41 82 00 14 */	beq lbl_806F2198
/* 806F2188  40 80 00 40 */	bge lbl_806F21C8
/* 806F218C  2C 03 00 00 */	cmpwi r3, 0
/* 806F2190  41 82 00 20 */	beq lbl_806F21B0
/* 806F2194  48 00 00 34 */	b lbl_806F21C8
lbl_806F2198:
/* 806F2198  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F219C  41 82 00 0C */	beq lbl_806F21A8
/* 806F21A0  38 00 00 01 */	li r0, 1
/* 806F21A4  48 00 00 28 */	b lbl_806F21CC
lbl_806F21A8:
/* 806F21A8  38 00 00 02 */	li r0, 2
/* 806F21AC  48 00 00 20 */	b lbl_806F21CC
lbl_806F21B0:
/* 806F21B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F21B4  41 82 00 0C */	beq lbl_806F21C0
/* 806F21B8  38 00 00 05 */	li r0, 5
/* 806F21BC  48 00 00 10 */	b lbl_806F21CC
lbl_806F21C0:
/* 806F21C0  38 00 00 03 */	li r0, 3
/* 806F21C4  48 00 00 08 */	b lbl_806F21CC
lbl_806F21C8:
/* 806F21C8  38 00 00 04 */	li r0, 4
lbl_806F21CC:
/* 806F21CC  2C 00 00 01 */	cmpwi r0, 1
/* 806F21D0  40 82 00 10 */	bne lbl_806F21E0
/* 806F21D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806F21D8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806F21DC  48 00 00 08 */	b lbl_806F21E4
lbl_806F21E0:
/* 806F21E0  FF E0 08 90 */	fmr f31, f1
lbl_806F21E4:
/* 806F21E4  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 806F21E8  2C 00 00 03 */	cmpwi r0, 3
/* 806F21EC  41 82 01 24 */	beq lbl_806F2310
/* 806F21F0  40 80 00 1C */	bge lbl_806F220C
/* 806F21F4  2C 00 00 01 */	cmpwi r0, 1
/* 806F21F8  41 82 00 70 */	beq lbl_806F2268
/* 806F21FC  40 80 00 DC */	bge lbl_806F22D8
/* 806F2200  2C 00 00 00 */	cmpwi r0, 0
/* 806F2204  40 80 00 18 */	bge lbl_806F221C
/* 806F2208  48 00 04 68 */	b lbl_806F2670
lbl_806F220C:
/* 806F220C  2C 00 00 05 */	cmpwi r0, 5
/* 806F2210  41 82 02 E0 */	beq lbl_806F24F0
/* 806F2214  40 80 04 5C */	bge lbl_806F2670
/* 806F2218  48 00 02 44 */	b lbl_806F245C
lbl_806F221C:
/* 806F221C  7F A3 EB 78 */	mr r3, r29
/* 806F2220  38 80 00 0F */	li r4, 0xf
/* 806F2224  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F2228  38 A0 00 00 */	li r5, 0
/* 806F222C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F2230  4B FF EB 41 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F2234  38 00 00 01 */	li r0, 1
/* 806F2238  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F223C  88 7D 14 10 */	lbz r3, 0x1410(r29)
/* 806F2240  28 03 00 00 */	cmplwi r3, 0
/* 806F2244  41 82 00 24 */	beq lbl_806F2268
/* 806F2248  38 03 00 01 */	addi r0, r3, 1
/* 806F224C  98 1D 14 10 */	stb r0, 0x1410(r29)
/* 806F2250  88 1D 14 10 */	lbz r0, 0x1410(r29)
/* 806F2254  28 00 00 06 */	cmplwi r0, 6
/* 806F2258  41 80 00 10 */	blt lbl_806F2268
/* 806F225C  38 60 00 03 */	li r3, 3
/* 806F2260  38 80 FF FF */	li r4, -1
/* 806F2264  4B 93 B8 39 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_806F2268:
/* 806F2268  38 80 00 01 */	li r4, 1
/* 806F226C  90 9D 06 8C */	stw r4, 0x68c(r29)
/* 806F2270  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F2274  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F2278  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F227C  40 82 00 18 */	bne lbl_806F2294
/* 806F2280  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F2284  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F2288  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F228C  41 82 00 08 */	beq lbl_806F2294
/* 806F2290  38 80 00 00 */	li r4, 0
lbl_806F2294:
/* 806F2294  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F2298  41 82 03 D8 */	beq lbl_806F2670
/* 806F229C  38 00 00 02 */	li r0, 2
/* 806F22A0  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F22A4  7F A3 EB 78 */	mr r3, r29
/* 806F22A8  38 80 00 0E */	li r4, 0xe
/* 806F22AC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F22B0  38 A0 00 02 */	li r5, 2
/* 806F22B4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F22B8  4B FF EA B9 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F22BC  38 00 00 3C */	li r0, 0x3c
/* 806F22C0  B0 1D 06 AC */	sth r0, 0x6ac(r29)
/* 806F22C4  38 00 00 01 */	li r0, 1
/* 806F22C8  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 806F22CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F22D0  D0 1D 06 E8 */	stfs f0, 0x6e8(r29)
/* 806F22D4  48 00 03 9C */	b lbl_806F2670
lbl_806F22D8:
/* 806F22D8  38 00 00 01 */	li r0, 1
/* 806F22DC  90 1D 06 8C */	stw r0, 0x68c(r29)
/* 806F22E0  A8 1D 06 AC */	lha r0, 0x6ac(r29)
/* 806F22E4  2C 00 00 00 */	cmpwi r0, 0
/* 806F22E8  40 82 03 88 */	bne lbl_806F2670
/* 806F22EC  38 00 00 03 */	li r0, 3
/* 806F22F0  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F22F4  7F A3 EB 78 */	mr r3, r29
/* 806F22F8  38 80 00 0D */	li r4, 0xd
/* 806F22FC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F2300  38 A0 00 00 */	li r5, 0
/* 806F2304  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F2308  4B FF EA 69 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F230C  48 00 03 64 */	b lbl_806F2670
lbl_806F2310:
/* 806F2310  38 00 00 01 */	li r0, 1
/* 806F2314  90 1D 06 8C */	stw r0, 0x68c(r29)
/* 806F2318  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F231C  38 63 00 0C */	addi r3, r3, 0xc
/* 806F2320  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806F2324  4B C3 61 09 */	bl checkPass__12J3DFrameCtrlFf
/* 806F2328  2C 03 00 00 */	cmpwi r3, 0
/* 806F232C  41 82 00 DC */	beq lbl_806F2408
/* 806F2330  38 00 00 02 */	li r0, 2
/* 806F2334  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 806F2338  38 61 00 38 */	addi r3, r1, 0x38
/* 806F233C  38 9E 05 38 */	addi r4, r30, 0x538
/* 806F2340  38 BD 06 F8 */	addi r5, r29, 0x6f8
/* 806F2344  4B B7 47 F1 */	bl __mi__4cXyzCFRC3Vec
/* 806F2348  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806F234C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F2350  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 806F2354  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806F2358  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806F235C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F2360  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806F2364  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F2368  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F236C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806F2370  D0 1D 07 10 */	stfs f0, 0x710(r29)
/* 806F2374  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 806F2378  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 806F237C  4B B7 52 F9 */	bl cM_atan2s__Fff
/* 806F2380  7C 64 1B 78 */	mr r4, r3
/* 806F2384  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F2388  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F238C  80 63 00 00 */	lwz r3, 0(r3)
/* 806F2390  4B 91 A0 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 806F2394  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806F2398  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F239C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806F23A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F23A4  EC 41 00 2A */	fadds f2, f1, f0
/* 806F23A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F23AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F23B0  40 81 00 0C */	ble lbl_806F23BC
/* 806F23B4  FC 00 10 34 */	frsqrte f0, f2
/* 806F23B8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F23BC:
/* 806F23BC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806F23C0  4B B7 52 B5 */	bl cM_atan2s__Fff
/* 806F23C4  7C 03 00 D0 */	neg r0, r3
/* 806F23C8  7C 04 07 34 */	extsh r4, r0
/* 806F23CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F23D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F23D4  80 63 00 00 */	lwz r3, 0(r3)
/* 806F23D8  4B 91 9F C5 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F23DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F23E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F23E4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F23E8  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 806F23EC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F23F0  38 61 00 50 */	addi r3, r1, 0x50
/* 806F23F4  38 9D 07 04 */	addi r4, r29, 0x704
/* 806F23F8  4B B7 EA F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F23FC  38 7D 10 0C */	addi r3, r29, 0x100c
/* 806F2400  38 9D 06 F8 */	addi r4, r29, 0x6f8
/* 806F2404  4B 99 26 75 */	bl StartCAt__8dCcD_SphFR4cXyz
lbl_806F2408:
/* 806F2408  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F240C  38 80 00 01 */	li r4, 1
/* 806F2410  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F2414  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F2418  40 82 00 18 */	bne lbl_806F2430
/* 806F241C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F2420  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F2424  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F2428  41 82 00 08 */	beq lbl_806F2430
/* 806F242C  38 80 00 00 */	li r4, 0
lbl_806F2430:
/* 806F2430  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F2434  41 82 02 3C */	beq lbl_806F2670
/* 806F2438  7F A3 EB 78 */	mr r3, r29
/* 806F243C  38 80 00 09 */	li r4, 9
/* 806F2440  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F2444  38 A0 00 02 */	li r5, 2
/* 806F2448  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F244C  4B FF E9 25 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F2450  38 00 00 04 */	li r0, 4
/* 806F2454  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F2458  48 00 02 18 */	b lbl_806F2670
lbl_806F245C:
/* 806F245C  88 7D 06 E4 */	lbz r3, 0x6e4(r29)
/* 806F2460  7C 60 07 75 */	extsb. r0, r3
/* 806F2464  41 81 00 14 */	bgt lbl_806F2478
/* 806F2468  38 00 00 00 */	li r0, 0
/* 806F246C  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 806F2470  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F2474  48 00 01 FC */	b lbl_806F2670
lbl_806F2478:
/* 806F2478  7C 60 07 74 */	extsb r0, r3
/* 806F247C  2C 00 00 03 */	cmpwi r0, 3
/* 806F2480  40 82 01 F0 */	bne lbl_806F2670
/* 806F2484  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806F2488  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806F248C  40 80 01 E4 */	bge lbl_806F2670
/* 806F2490  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F2494  4B B7 54 C1 */	bl cM_rndF__Ff
/* 806F2498  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806F249C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F24A0  40 80 00 20 */	bge lbl_806F24C0
/* 806F24A4  7F A3 EB 78 */	mr r3, r29
/* 806F24A8  38 80 00 07 */	li r4, 7
/* 806F24AC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F24B0  38 A0 00 00 */	li r5, 0
/* 806F24B4  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806F24B8  4B FF E8 B9 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F24BC  48 00 00 1C */	b lbl_806F24D8
lbl_806F24C0:
/* 806F24C0  7F A3 EB 78 */	mr r3, r29
/* 806F24C4  38 80 00 08 */	li r4, 8
/* 806F24C8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F24CC  38 A0 00 00 */	li r5, 0
/* 806F24D0  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806F24D4  4B FF E8 9D */	bl anm_init__FP14e_hzelda_classifUcf
lbl_806F24D8:
/* 806F24D8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806F24DC  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F24E0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806F24E4  38 00 00 05 */	li r0, 5
/* 806F24E8  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F24EC  48 00 01 84 */	b lbl_806F2670
lbl_806F24F0:
/* 806F24F0  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F24F4  38 63 00 0C */	addi r3, r3, 0xc
/* 806F24F8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806F24FC  4B C3 5F 31 */	bl checkPass__12J3DFrameCtrlFf
/* 806F2500  2C 03 00 00 */	cmpwi r3, 0
/* 806F2504  41 82 01 1C */	beq lbl_806F2620
/* 806F2508  38 00 00 02 */	li r0, 2
/* 806F250C  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 806F2510  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F2514  38 9E 05 38 */	addi r4, r30, 0x538
/* 806F2518  38 BD 06 F8 */	addi r5, r29, 0x6f8
/* 806F251C  4B B7 46 19 */	bl __mi__4cXyzCFRC3Vec
/* 806F2520  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806F2524  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F2528  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806F252C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806F2530  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806F2534  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F2538  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806F253C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806F2540  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F2544  C0 3D 07 10 */	lfs f1, 0x710(r29)
/* 806F2548  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806F254C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F2550  40 80 00 10 */	bge lbl_806F2560
/* 806F2554  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806F2558  EC 01 00 2A */	fadds f0, f1, f0
/* 806F255C  D0 1D 07 10 */	stfs f0, 0x710(r29)
lbl_806F2560:
/* 806F2560  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 806F2564  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 806F2568  4B B7 51 0D */	bl cM_atan2s__Fff
/* 806F256C  7C 64 1B 78 */	mr r4, r3
/* 806F2570  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F2574  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F2578  80 63 00 00 */	lwz r3, 0(r3)
/* 806F257C  4B 91 9E 61 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F2580  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806F2584  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F2588  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806F258C  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F2590  EC 41 00 2A */	fadds f2, f1, f0
/* 806F2594  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F2598  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F259C  40 81 00 0C */	ble lbl_806F25A8
/* 806F25A0  FC 00 10 34 */	frsqrte f0, f2
/* 806F25A4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F25A8:
/* 806F25A8  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806F25AC  4B B7 50 C9 */	bl cM_atan2s__Fff
/* 806F25B0  7C 03 00 D0 */	neg r0, r3
/* 806F25B4  7C 04 07 34 */	extsh r4, r0
/* 806F25B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F25BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F25C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806F25C4  4B 91 9D D9 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F25C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F25CC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F25D0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F25D4  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 806F25D8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F25DC  38 61 00 50 */	addi r3, r1, 0x50
/* 806F25E0  38 9D 07 04 */	addi r4, r29, 0x704
/* 806F25E4  4B B7 E9 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F25E8  7F A3 EB 78 */	mr r3, r29
/* 806F25EC  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 806F25F0  4B FF F9 B5 */	bl ball_crash_eff_set__FP14e_hzelda_classf
/* 806F25F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704ED@ha */
/* 806F25F8  38 03 04 ED */	addi r0, r3, 0x04ED /* 0x000704ED@l */
/* 806F25FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 806F2600  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806F2604  38 81 00 18 */	addi r4, r1, 0x18
/* 806F2608  38 A0 00 00 */	li r5, 0
/* 806F260C  38 C0 FF FF */	li r6, -1
/* 806F2610  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 806F2614  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F2618  7D 89 03 A6 */	mtctr r12
/* 806F261C  4E 80 04 21 */	bctrl 
lbl_806F2620:
/* 806F2620  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 806F2624  38 80 00 01 */	li r4, 1
/* 806F2628  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F262C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F2630  40 82 00 18 */	bne lbl_806F2648
/* 806F2634  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F2638  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F263C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F2640  41 82 00 08 */	beq lbl_806F2648
/* 806F2644  38 80 00 00 */	li r4, 0
lbl_806F2648:
/* 806F2648  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F264C  41 82 00 24 */	beq lbl_806F2670
/* 806F2650  7F A3 EB 78 */	mr r3, r29
/* 806F2654  38 80 00 09 */	li r4, 9
/* 806F2658  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F265C  38 A0 00 02 */	li r5, 2
/* 806F2660  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F2664  4B FF E7 0D */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F2668  38 00 00 04 */	li r0, 4
/* 806F266C  B0 1D 06 98 */	sth r0, 0x698(r29)
lbl_806F2670:
/* 806F2670  88 1D 06 E4 */	lbz r0, 0x6e4(r29)
/* 806F2674  2C 00 00 03 */	cmpwi r0, 3
/* 806F2678  40 82 01 C0 */	bne lbl_806F2838
/* 806F267C  38 61 00 20 */	addi r3, r1, 0x20
/* 806F2680  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F2684  38 BD 06 F8 */	addi r5, r29, 0x6f8
/* 806F2688  4B B7 44 AD */	bl __mi__4cXyzCFRC3Vec
/* 806F268C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806F2690  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 806F2694  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 806F2698  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 806F269C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 806F26A0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 806F26A4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806F26A8  EC 03 00 2A */	fadds f0, f3, f0
/* 806F26AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F26B0  4B B7 4F C5 */	bl cM_atan2s__Fff
/* 806F26B4  7C 64 1B 78 */	mr r4, r3
/* 806F26B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F26BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F26C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806F26C4  4B 91 9D 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F26C8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806F26CC  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F26D0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806F26D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F26D8  EC 41 00 2A */	fadds f2, f1, f0
/* 806F26DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F26E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F26E4  40 81 00 0C */	ble lbl_806F26F0
/* 806F26E8  FC 00 10 34 */	frsqrte f0, f2
/* 806F26EC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F26F0:
/* 806F26F0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806F26F4  4B B7 4F 81 */	bl cM_atan2s__Fff
/* 806F26F8  7C 03 00 D0 */	neg r0, r3
/* 806F26FC  7C 04 07 34 */	extsh r4, r0
/* 806F2700  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F2704  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F2708  80 63 00 00 */	lwz r3, 0(r3)
/* 806F270C  4B 91 9C 91 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F2710  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F2714  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F2718  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F271C  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 806F2720  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F2724  38 61 00 50 */	addi r3, r1, 0x50
/* 806F2728  38 9D 07 04 */	addi r4, r29, 0x704
/* 806F272C  4B B7 E7 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F2730  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806F2734  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806F2738  40 80 01 00 */	bge lbl_806F2838
/* 806F273C  38 00 FF FF */	li r0, -1
/* 806F2740  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 806F2744  38 00 00 05 */	li r0, 5
/* 806F2748  B0 1D 06 96 */	sth r0, 0x696(r29)
/* 806F274C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704EE@ha */
/* 806F2750  38 03 04 EE */	addi r0, r3, 0x04EE /* 0x000704EE@l */
/* 806F2754  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F2758  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806F275C  38 81 00 14 */	addi r4, r1, 0x14
/* 806F2760  38 A0 FF FF */	li r5, -1
/* 806F2764  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 806F2768  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F276C  7D 89 03 A6 */	mtctr r12
/* 806F2770  4E 80 04 21 */	bctrl 
/* 806F2774  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704EC@ha */
/* 806F2778  38 03 04 EC */	addi r0, r3, 0x04EC /* 0x000704EC@l */
/* 806F277C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F2780  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806F2784  38 81 00 10 */	addi r4, r1, 0x10
/* 806F2788  38 A0 00 00 */	li r5, 0
/* 806F278C  38 C0 FF FF */	li r6, -1
/* 806F2790  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 806F2794  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F2798  7D 89 03 A6 */	mtctr r12
/* 806F279C  4E 80 04 21 */	bctrl 
/* 806F27A0  A8 7D 05 62 */	lha r3, 0x562(r29)
/* 806F27A4  38 03 FF FF */	addi r0, r3, -1
/* 806F27A8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806F27AC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806F27B0  2C 00 00 01 */	cmpwi r0, 1
/* 806F27B4  40 82 00 10 */	bne lbl_806F27C4
/* 806F27B8  38 00 00 03 */	li r0, 3
/* 806F27BC  98 1D 14 13 */	stb r0, 0x1413(r29)
/* 806F27C0  48 00 00 0C */	b lbl_806F27CC
lbl_806F27C4:
/* 806F27C4  38 00 00 01 */	li r0, 1
/* 806F27C8  98 1D 14 13 */	stb r0, 0x1413(r29)
lbl_806F27CC:
/* 806F27CC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806F27D0  2C 00 00 00 */	cmpwi r0, 0
/* 806F27D4  41 81 00 5C */	bgt lbl_806F2830
/* 806F27D8  38 00 00 01 */	li r0, 1
/* 806F27DC  B0 1D 14 40 */	sth r0, 0x1440(r29)
/* 806F27E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806F27E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806F27E8  80 63 00 00 */	lwz r3, 0(r3)
/* 806F27EC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806F27F0  38 80 00 1E */	li r4, 0x1e
/* 806F27F4  38 A0 00 00 */	li r5, 0
/* 806F27F8  4B BB CC 11 */	bl bgmStop__8Z2SeqMgrFUll
/* 806F27FC  38 00 00 0A */	li r0, 0xa
/* 806F2800  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 806F2804  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F1@ha */
/* 806F2808  38 03 04 F1 */	addi r0, r3, 0x04F1 /* 0x000704F1@l */
/* 806F280C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F2810  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 806F2814  38 81 00 0C */	addi r4, r1, 0xc
/* 806F2818  38 A0 FF FF */	li r5, -1
/* 806F281C  81 9D 05 D8 */	lwz r12, 0x5d8(r29)
/* 806F2820  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F2824  7D 89 03 A6 */	mtctr r12
/* 806F2828  4E 80 04 21 */	bctrl 
/* 806F282C  48 00 00 0C */	b lbl_806F2838
lbl_806F2830:
/* 806F2830  38 00 00 00 */	li r0, 0
/* 806F2834  B0 1D 06 98 */	sth r0, 0x698(r29)
lbl_806F2838:
/* 806F2838  38 7D 04 DE */	addi r3, r29, 0x4de
/* 806F283C  A8 9D 06 A4 */	lha r4, 0x6a4(r29)
/* 806F2840  38 A0 00 02 */	li r5, 2
/* 806F2844  38 C0 04 00 */	li r6, 0x400
/* 806F2848  4B B7 DD C1 */	bl cLib_addCalcAngleS2__FPssss
/* 806F284C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806F2850  C0 3D 05 B8 */	lfs f1, 0x5b8(r29)
/* 806F2854  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F2858  C0 7D 06 9C */	lfs f3, 0x69c(r29)
/* 806F285C  4B B7 D1 E1 */	bl cLib_addCalc2__FPffff
/* 806F2860  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 806F2864  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 806F2868  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806F286C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806F2870  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806F2874  7C 03 04 2E */	lfsx f0, r3, r0
/* 806F2878  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 806F287C  C0 3D 05 BC */	lfs f1, 0x5bc(r29)
/* 806F2880  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806F2884  EC 03 00 32 */	fmuls f0, f3, f0
/* 806F2888  EC 21 00 2A */	fadds f1, f1, f0
/* 806F288C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 806F2890  4B B7 D1 AD */	bl cLib_addCalc2__FPffff
/* 806F2894  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 806F2898  C0 3D 05 C0 */	lfs f1, 0x5c0(r29)
/* 806F289C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F28A0  C0 7D 06 9C */	lfs f3, 0x69c(r29)
/* 806F28A4  4B B7 D1 99 */	bl cLib_addCalc2__FPffff
/* 806F28A8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806F28AC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806F28B0  39 61 00 70 */	addi r11, r1, 0x70
/* 806F28B4  4B C6 F9 75 */	bl _restgpr_29
/* 806F28B8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806F28BC  7C 08 03 A6 */	mtlr r0
/* 806F28C0  38 21 00 80 */	addi r1, r1, 0x80
/* 806F28C4  4E 80 00 20 */	blr 
