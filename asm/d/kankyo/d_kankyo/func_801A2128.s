lbl_801A2128:
/* 801A2128  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 801A212C  7C 08 02 A6 */	mflr r0
/* 801A2130  90 01 01 64 */	stw r0, 0x164(r1)
/* 801A2134  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 801A2138  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 801A213C  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 801A2140  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 801A2144  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 801A2148  F3 A1 01 38 */	psq_st f29, 312(r1), 0, 0 /* qr0 */
/* 801A214C  39 61 01 30 */	addi r11, r1, 0x130
/* 801A2150  48 1C 00 65 */	bl _savegpr_19
/* 801A2154  7C 74 1B 78 */	mr r20, r3
/* 801A2158  7C 95 23 79 */	or. r21, r4, r4
/* 801A215C  7C B6 2B 78 */	mr r22, r5
/* 801A2160  7C D7 33 78 */	mr r23, r6
/* 801A2164  7D 18 43 78 */	mr r24, r8
/* 801A2168  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A216C  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801A2170  3C 60 80 43 */	lis r3, j3dSys@ha
/* 801A2174  38 03 4A C8 */	addi r0, r3, j3dSys@l
/* 801A2178  7C 1C 03 78 */	mr r28, r0
/* 801A217C  3B A0 00 00 */	li r29, 0
/* 801A2180  3B 60 00 00 */	li r27, 0
/* 801A2184  3B 20 00 00 */	li r25, 0
/* 801A2188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A218C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A2190  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 801A2194  41 82 16 00 */	beq lbl_801A3794
/* 801A2198  38 00 00 FF */	li r0, 0xff
/* 801A219C  98 16 00 1B */	stb r0, 0x1b(r22)
/* 801A21A0  C0 15 00 00 */	lfs f0, 0(r21)
/* 801A21A4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801A21A8  C0 15 00 04 */	lfs f0, 4(r21)
/* 801A21AC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801A21B0  C0 15 00 08 */	lfs f0, 8(r21)
/* 801A21B4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801A21B8  38 61 00 74 */	addi r3, r1, 0x74
/* 801A21BC  38 80 00 00 */	li r4, 0
/* 801A21C0  4B FF BB AD */	bl dKy_light_influence_id__F4cXyzi
/* 801A21C4  7C 7A 1B 78 */	mr r26, r3
/* 801A21C8  3A 60 00 00 */	li r19, 0
/* 801A21CC  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A21D0  28 00 00 07 */	cmplwi r0, 7
/* 801A21D4  41 82 00 44 */	beq lbl_801A2218
/* 801A21D8  28 00 00 01 */	cmplwi r0, 1
/* 801A21DC  41 82 00 3C */	beq lbl_801A2218
/* 801A21E0  28 00 00 02 */	cmplwi r0, 2
/* 801A21E4  41 82 00 14 */	beq lbl_801A21F8
/* 801A21E8  28 00 00 06 */	cmplwi r0, 6
/* 801A21EC  41 82 00 0C */	beq lbl_801A21F8
/* 801A21F0  28 00 00 03 */	cmplwi r0, 3
/* 801A21F4  40 82 00 10 */	bne lbl_801A2204
lbl_801A21F8:
/* 801A21F8  48 00 A3 85 */	bl dKy_darkworld_check__Fv
/* 801A21FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2200  40 82 00 18 */	bne lbl_801A2218
lbl_801A2204:
/* 801A2204  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A2208  28 00 00 04 */	cmplwi r0, 4
/* 801A220C  41 82 00 0C */	beq lbl_801A2218
/* 801A2210  28 00 00 05 */	cmplwi r0, 5
/* 801A2214  40 82 00 0C */	bne lbl_801A2220
lbl_801A2218:
/* 801A2218  3B 40 FF FE */	li r26, -2
/* 801A221C  48 00 00 1C */	b lbl_801A2238
lbl_801A2220:
/* 801A2220  28 00 00 09 */	cmplwi r0, 9
/* 801A2224  40 82 00 14 */	bne lbl_801A2238
/* 801A2228  48 00 A3 55 */	bl dKy_darkworld_check__Fv
/* 801A222C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2230  41 82 00 08 */	beq lbl_801A2238
/* 801A2234  3B 40 FF FE */	li r26, -2
lbl_801A2238:
/* 801A2238  2C 1A 00 00 */	cmpwi r26, 0
/* 801A223C  41 80 00 5C */	blt lbl_801A2298
/* 801A2240  C0 15 00 00 */	lfs f0, 0(r21)
/* 801A2244  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801A2248  C0 15 00 04 */	lfs f0, 4(r21)
/* 801A224C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801A2250  C0 15 00 08 */	lfs f0, 8(r21)
/* 801A2254  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801A2258  38 61 00 68 */	addi r3, r1, 0x68
/* 801A225C  7F 44 D3 78 */	mr r4, r26
/* 801A2260  4B FF C3 11 */	bl dKy_light_influence_distance__F4cXyzi
/* 801A2264  FF C0 08 90 */	fmr f30, f1
/* 801A2268  7F 43 D3 78 */	mr r3, r26
/* 801A226C  4B FF C2 B5 */	bl dKy_light_influence_power__Fi
/* 801A2270  FF E0 08 90 */	fmr f31, f1
/* 801A2274  C0 02 A2 9C */	lfs f0, lit_5194(r2)
/* 801A2278  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801A227C  40 80 00 08 */	bge lbl_801A2284
/* 801A2280  FF E0 00 90 */	fmr f31, f0
lbl_801A2284:
/* 801A2284  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 801A2288  EC 00 F8 2A */	fadds f0, f0, f31
/* 801A228C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801A2290  40 80 00 08 */	bge lbl_801A2298
/* 801A2294  3A 60 00 01 */	li r19, 1
lbl_801A2298:
/* 801A2298  2C 13 00 00 */	cmpwi r19, 0
/* 801A229C  40 82 05 5C */	bne lbl_801A27F8
/* 801A22A0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 801A22A4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801A22A8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801A22AC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A22B0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 801A22B4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801A22B8  38 7F 00 18 */	addi r3, r31, 0x18
/* 801A22BC  7E A4 AB 78 */	mr r4, r21
/* 801A22C0  48 1A 50 DD */	bl PSVECSquareDistance
/* 801A22C4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A22C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A22CC  40 81 00 58 */	ble lbl_801A2324
/* 801A22D0  FC 00 08 34 */	frsqrte f0, f1
/* 801A22D4  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A22D8  FC 44 00 32 */	fmul f2, f4, f0
/* 801A22DC  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A22E0  FC 00 00 32 */	fmul f0, f0, f0
/* 801A22E4  FC 01 00 32 */	fmul f0, f1, f0
/* 801A22E8  FC 03 00 28 */	fsub f0, f3, f0
/* 801A22EC  FC 02 00 32 */	fmul f0, f2, f0
/* 801A22F0  FC 44 00 32 */	fmul f2, f4, f0
/* 801A22F4  FC 00 00 32 */	fmul f0, f0, f0
/* 801A22F8  FC 01 00 32 */	fmul f0, f1, f0
/* 801A22FC  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2300  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2304  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2308  FC 00 00 32 */	fmul f0, f0, f0
/* 801A230C  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2310  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2314  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2318  FC 21 00 32 */	fmul f1, f1, f0
/* 801A231C  FC 20 08 18 */	frsp f1, f1
/* 801A2320  48 00 00 88 */	b lbl_801A23A8
lbl_801A2324:
/* 801A2324  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A2328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A232C  40 80 00 10 */	bge lbl_801A233C
/* 801A2330  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A2334  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801A2338  48 00 00 70 */	b lbl_801A23A8
lbl_801A233C:
/* 801A233C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801A2340  80 81 00 20 */	lwz r4, 0x20(r1)
/* 801A2344  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A2348  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A234C  7C 03 00 00 */	cmpw r3, r0
/* 801A2350  41 82 00 14 */	beq lbl_801A2364
/* 801A2354  40 80 00 40 */	bge lbl_801A2394
/* 801A2358  2C 03 00 00 */	cmpwi r3, 0
/* 801A235C  41 82 00 20 */	beq lbl_801A237C
/* 801A2360  48 00 00 34 */	b lbl_801A2394
lbl_801A2364:
/* 801A2364  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A2368  41 82 00 0C */	beq lbl_801A2374
/* 801A236C  38 00 00 01 */	li r0, 1
/* 801A2370  48 00 00 28 */	b lbl_801A2398
lbl_801A2374:
/* 801A2374  38 00 00 02 */	li r0, 2
/* 801A2378  48 00 00 20 */	b lbl_801A2398
lbl_801A237C:
/* 801A237C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A2380  41 82 00 0C */	beq lbl_801A238C
/* 801A2384  38 00 00 05 */	li r0, 5
/* 801A2388  48 00 00 10 */	b lbl_801A2398
lbl_801A238C:
/* 801A238C  38 00 00 03 */	li r0, 3
/* 801A2390  48 00 00 08 */	b lbl_801A2398
lbl_801A2394:
/* 801A2394  38 00 00 04 */	li r0, 4
lbl_801A2398:
/* 801A2398  2C 00 00 01 */	cmpwi r0, 1
/* 801A239C  40 82 00 0C */	bne lbl_801A23A8
/* 801A23A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A23A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801A23A8:
/* 801A23A8  FF C0 08 90 */	fmr f30, f1
/* 801A23AC  C3 FF 00 2C */	lfs f31, 0x2c(r31)
/* 801A23B0  38 00 00 00 */	li r0, 0
/* 801A23B4  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A23B8  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A23BC  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A23C0  2C 1A FF FE */	cmpwi r26, -2
/* 801A23C4  40 81 00 3C */	ble lbl_801A2400
/* 801A23C8  2C 1A FF FF */	cmpwi r26, -1
/* 801A23CC  40 82 00 10 */	bne lbl_801A23DC
/* 801A23D0  48 00 9E 59 */	bl dKy_Outdoor_check__Fv
/* 801A23D4  2C 03 00 01 */	cmpwi r3, 1
/* 801A23D8  41 82 00 28 */	beq lbl_801A2400
lbl_801A23DC:
/* 801A23DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A23E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A23E4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801A23E8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A23EC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A23F0  38 84 00 CA */	addi r4, r4, 0xca
/* 801A23F4  48 1C 65 A1 */	bl strcmp
/* 801A23F8  2C 03 00 00 */	cmpwi r3, 0
/* 801A23FC  40 82 04 58 */	bne lbl_801A2854
lbl_801A2400:
/* 801A2400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A2404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A2408  82 63 5D 74 */	lwz r19, 0x5d74(r3)
/* 801A240C  3B 20 00 01 */	li r25, 1
/* 801A2410  38 73 00 E4 */	addi r3, r19, 0xe4
/* 801A2414  38 93 00 D8 */	addi r4, r19, 0xd8
/* 801A2418  38 A1 00 98 */	addi r5, r1, 0x98
/* 801A241C  4B EB 93 45 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801A2420  38 61 00 5C */	addi r3, r1, 0x5c
/* 801A2424  38 81 00 98 */	addi r4, r1, 0x98
/* 801A2428  C0 22 A1 D8 */	lfs f1, lit_4351(r2)
/* 801A242C  48 0C 47 59 */	bl __ml__4cXyzCFf
/* 801A2430  38 61 00 50 */	addi r3, r1, 0x50
/* 801A2434  7E A4 AB 78 */	mr r4, r21
/* 801A2438  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801A243C  48 0C 46 A9 */	bl __pl__4cXyzCFRC3Vec
/* 801A2440  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801A2444  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801A2448  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801A244C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801A2450  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801A2454  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801A2458  C0 02 A3 14 */	lfs f0, lit_6761(r2)
/* 801A245C  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2460  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A2464  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A2468  28 00 00 01 */	cmplwi r0, 1
/* 801A246C  41 80 00 54 */	blt lbl_801A24C0
/* 801A2470  28 00 00 09 */	cmplwi r0, 9
/* 801A2474  41 81 00 4C */	bgt lbl_801A24C0
/* 801A2478  38 73 00 E4 */	addi r3, r19, 0xe4
/* 801A247C  38 93 00 D8 */	addi r4, r19, 0xd8
/* 801A2480  38 A1 00 98 */	addi r5, r1, 0x98
/* 801A2484  4B EB 92 DD */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801A2488  38 61 00 44 */	addi r3, r1, 0x44
/* 801A248C  38 81 00 98 */	addi r4, r1, 0x98
/* 801A2490  C0 22 A2 40 */	lfs f1, lit_4503(r2)
/* 801A2494  48 0C 46 F1 */	bl __ml__4cXyzCFf
/* 801A2498  38 61 00 38 */	addi r3, r1, 0x38
/* 801A249C  38 93 00 D8 */	addi r4, r19, 0xd8
/* 801A24A0  38 A1 00 44 */	addi r5, r1, 0x44
/* 801A24A4  48 0C 46 41 */	bl __pl__4cXyzCFRC3Vec
/* 801A24A8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801A24AC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801A24B0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801A24B4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A24B8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801A24BC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
lbl_801A24C0:
/* 801A24C0  88 16 00 8C */	lbz r0, 0x8c(r22)
/* 801A24C4  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A24C8  88 16 00 8D */	lbz r0, 0x8d(r22)
/* 801A24CC  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A24D0  88 16 00 8E */	lbz r0, 0x8e(r22)
/* 801A24D4  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A24D8  C3 E2 A2 B8 */	lfs f31, lit_5365(r2)
/* 801A24DC  C3 C2 A2 94 */	lfs f30, lit_5192(r2)
/* 801A24E0  3B A0 00 01 */	li r29, 1
/* 801A24E4  3B 60 00 01 */	li r27, 1
/* 801A24E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A24EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A24F0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801A24F4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A24F8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A24FC  38 84 00 CA */	addi r4, r4, 0xca
/* 801A2500  48 1C 64 95 */	bl strcmp
/* 801A2504  2C 03 00 00 */	cmpwi r3, 0
/* 801A2508  40 82 00 98 */	bne lbl_801A25A0
/* 801A250C  38 60 00 00 */	li r3, 0
/* 801A2510  4B E8 A4 6D */	bl getLayerNo__14dComIfG_play_cFi
/* 801A2514  2C 03 00 00 */	cmpwi r3, 0
/* 801A2518  40 82 00 40 */	bne lbl_801A2558
/* 801A251C  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A2520  28 00 00 00 */	cmplwi r0, 0
/* 801A2524  40 82 00 7C */	bne lbl_801A25A0
/* 801A2528  38 00 00 1E */	li r0, 0x1e
/* 801A252C  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2530  38 00 00 37 */	li r0, 0x37
/* 801A2534  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A2538  38 00 00 6E */	li r0, 0x6e
/* 801A253C  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A2540  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 801A2544  C0 02 A3 18 */	lfs f0, lit_6762(r2)
/* 801A2548  EC 01 00 2A */	fadds f0, f1, f0
/* 801A254C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A2550  C3 E2 A2 78 */	lfs f31, lit_4852(r2)
/* 801A2554  48 00 00 4C */	b lbl_801A25A0
lbl_801A2558:
/* 801A2558  38 60 00 00 */	li r3, 0
/* 801A255C  4B E8 A4 21 */	bl getLayerNo__14dComIfG_play_cFi
/* 801A2560  2C 03 00 01 */	cmpwi r3, 1
/* 801A2564  40 82 00 3C */	bne lbl_801A25A0
/* 801A2568  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A256C  28 00 00 00 */	cmplwi r0, 0
/* 801A2570  40 82 00 30 */	bne lbl_801A25A0
/* 801A2574  38 00 00 3C */	li r0, 0x3c
/* 801A2578  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A257C  38 00 00 5F */	li r0, 0x5f
/* 801A2580  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A2584  38 00 00 64 */	li r0, 0x64
/* 801A2588  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A258C  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 801A2590  C0 02 A3 18 */	lfs f0, lit_6762(r2)
/* 801A2594  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2598  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A259C  C3 E2 A2 C0 */	lfs f31, lit_5555(r2)
lbl_801A25A0:
/* 801A25A0  28 16 00 00 */	cmplwi r22, 0
/* 801A25A4  41 82 00 34 */	beq lbl_801A25D8
/* 801A25A8  88 16 03 67 */	lbz r0, 0x367(r22)
/* 801A25AC  28 00 00 00 */	cmplwi r0, 0
/* 801A25B0  41 82 00 28 */	beq lbl_801A25D8
/* 801A25B4  88 16 03 64 */	lbz r0, 0x364(r22)
/* 801A25B8  54 00 10 3A */	slwi r0, r0, 2
/* 801A25BC  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A25C0  88 16 03 65 */	lbz r0, 0x365(r22)
/* 801A25C4  54 00 10 3A */	slwi r0, r0, 2
/* 801A25C8  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A25CC  88 16 03 66 */	lbz r0, 0x366(r22)
/* 801A25D0  54 00 10 3A */	slwi r0, r0, 2
/* 801A25D4  B0 14 10 FC */	sth r0, 0x10fc(r20)
lbl_801A25D8:
/* 801A25D8  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A25DC  28 00 00 09 */	cmplwi r0, 9
/* 801A25E0  41 81 02 74 */	bgt lbl_801A2854
/* 801A25E4  3C 60 80 3C */	lis r3, lit_6776@ha
/* 801A25E8  38 63 C0 28 */	addi r3, r3, lit_6776@l
/* 801A25EC  54 00 10 3A */	slwi r0, r0, 2
/* 801A25F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 801A25F4  7C 09 03 A6 */	mtctr r0
/* 801A25F8  4E 80 04 20 */	bctr 
/* 801A25FC  38 00 01 F4 */	li r0, 0x1f4
/* 801A2600  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2604  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A2608  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A260C  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A2610  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A2614  48 00 02 40 */	b lbl_801A2854
/* 801A2618  38 00 01 F4 */	li r0, 0x1f4
/* 801A261C  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2620  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A2624  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A2628  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A262C  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A2630  48 00 02 24 */	b lbl_801A2854
/* 801A2634  38 00 00 AA */	li r0, 0xaa
/* 801A2638  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A263C  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A2640  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A2644  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A2648  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A264C  48 00 02 08 */	b lbl_801A2854
/* 801A2650  48 00 9F 2D */	bl dKy_darkworld_check__Fv
/* 801A2654  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2658  41 82 01 FC */	beq lbl_801A2854
/* 801A265C  38 00 00 67 */	li r0, 0x67
/* 801A2660  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2664  38 00 00 81 */	li r0, 0x81
/* 801A2668  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A266C  38 00 00 C7 */	li r0, 0xc7
/* 801A2670  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A2674  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A2678  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A267C  48 00 01 D8 */	b lbl_801A2854
/* 801A2680  48 00 9E FD */	bl dKy_darkworld_check__Fv
/* 801A2684  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2688  41 82 01 CC */	beq lbl_801A2854
/* 801A268C  38 00 00 35 */	li r0, 0x35
/* 801A2690  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2694  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A2698  38 00 00 50 */	li r0, 0x50
/* 801A269C  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A26A0  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A26A4  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A26A8  48 00 01 AC */	b lbl_801A2854
/* 801A26AC  48 00 9E D1 */	bl dKy_darkworld_check__Fv
/* 801A26B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A26B4  41 82 01 A0 */	beq lbl_801A2854
/* 801A26B8  38 00 00 6E */	li r0, 0x6e
/* 801A26BC  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A26C0  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A26C4  38 00 00 8C */	li r0, 0x8c
/* 801A26C8  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A26CC  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A26D0  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A26D4  48 00 01 80 */	b lbl_801A2854
/* 801A26D8  A8 16 03 5E */	lha r0, 0x35e(r22)
/* 801A26DC  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A26E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A26E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801A26E8  3C 00 43 30 */	lis r0, 0x4330
/* 801A26EC  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801A26F0  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 801A26F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A26F8  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A26FC  EF A0 10 24 */	fdivs f29, f0, f2
/* 801A2700  38 00 00 B4 */	li r0, 0xb4
/* 801A2704  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2708  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A270C  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A2710  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A2714  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 801A2718  C0 02 A3 1C */	lfs f0, lit_6763(r2)
/* 801A271C  EC 01 00 2A */	fadds f0, f1, f0
/* 801A2720  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A2724  3C 60 80 43 */	lis r3, g_Counter@ha
/* 801A2728  80 83 0C D8 */	lwz r4, g_Counter@l(r3)
/* 801A272C  1C 04 01 45 */	mulli r0, r4, 0x145
/* 801A2730  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801A2734  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801A2738  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801A273C  7C 03 04 2E */	lfsx f0, r3, r0
/* 801A2740  1C 04 01 1D */	mulli r0, r4, 0x11d
/* 801A2744  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801A2748  7C 63 02 14 */	add r3, r3, r0
/* 801A274C  C3 E3 00 04 */	lfs f31, 4(r3)
/* 801A2750  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A2754  FC 00 02 10 */	fabs f0, f0
/* 801A2758  38 76 00 1B */	addi r3, r22, 0x1b
/* 801A275C  FC 00 00 18 */	frsp f0, f0
/* 801A2760  FC 00 00 1E */	fctiwz f0, f0
/* 801A2764  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 801A2768  80 81 00 CC */	lwz r4, 0xcc(r1)
/* 801A276C  38 A0 00 02 */	li r5, 2
/* 801A2770  38 C0 00 FF */	li r6, 0xff
/* 801A2774  4B FF F9 1D */	bl cLib_addCalcU8__FPUcUcss
/* 801A2778  88 16 00 1B */	lbz r0, 0x1b(r22)
/* 801A277C  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A2780  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801A2784  3C 00 43 30 */	lis r0, 0x4330
/* 801A2788  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 801A278C  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801A2790  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A2794  EC 00 07 72 */	fmuls f0, f0, f29
/* 801A2798  FC 00 00 1E */	fctiwz f0, f0
/* 801A279C  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 801A27A0  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 801A27A4  98 16 00 1B */	stb r0, 0x1b(r22)
/* 801A27A8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 801A27AC  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 801A27B0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A27B4  EC 21 00 2A */	fadds f1, f1, f0
/* 801A27B8  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801A27BC  C0 02 A3 20 */	lfs f0, lit_6764(r2)
/* 801A27C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A27C4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A27C8  C3 E2 A1 F4 */	lfs f31, lit_4358(r2)
/* 801A27CC  48 00 00 88 */	b lbl_801A2854
/* 801A27D0  48 00 9D AD */	bl dKy_darkworld_check__Fv
/* 801A27D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A27D8  41 82 00 7C */	beq lbl_801A2854
/* 801A27DC  38 00 00 FF */	li r0, 0xff
/* 801A27E0  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A27E4  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A27E8  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A27EC  C3 C2 A2 2C */	lfs f30, lit_4442(r2)
/* 801A27F0  C3 E2 A1 C8 */	lfs f31, lit_4347(r2)
/* 801A27F4  48 00 00 60 */	b lbl_801A2854
lbl_801A27F8:
/* 801A27F8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A27FC  7F 44 D3 78 */	mr r4, r26
/* 801A2800  48 00 4E D9 */	bl dKy_light_influence_pos__Fi
/* 801A2804  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801A2808  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801A280C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801A2810  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 801A2814  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801A2818  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801A281C  7F 43 D3 78 */	mr r3, r26
/* 801A2820  4B FF BB E5 */	bl dKy_light_influence_col__Fi
/* 801A2824  90 81 00 28 */	stw r4, 0x28(r1)
/* 801A2828  90 61 00 24 */	stw r3, 0x24(r1)
/* 801A282C  A8 01 00 24 */	lha r0, 0x24(r1)
/* 801A2830  B0 14 10 F8 */	sth r0, 0x10f8(r20)
/* 801A2834  A8 01 00 26 */	lha r0, 0x26(r1)
/* 801A2838  B0 14 10 FA */	sth r0, 0x10fa(r20)
/* 801A283C  A8 01 00 28 */	lha r0, 0x28(r1)
/* 801A2840  B0 14 10 FC */	sth r0, 0x10fc(r20)
/* 801A2844  A8 01 00 2A */	lha r0, 0x2a(r1)
/* 801A2848  B0 14 10 FE */	sth r0, 0x10fe(r20)
/* 801A284C  7F 43 D3 78 */	mr r3, r26
/* 801A2850  4B FF BC F9 */	bl dKy_light_influence_yuragi__Fi
lbl_801A2854:
/* 801A2854  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A2858  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801A285C  4C 40 13 82 */	cror 2, 0, 2
/* 801A2860  40 82 00 14 */	bne lbl_801A2874
/* 801A2864  2C 1B 00 00 */	cmpwi r27, 0
/* 801A2868  40 82 00 0C */	bne lbl_801A2874
/* 801A286C  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A2870  48 00 00 08 */	b lbl_801A2878
lbl_801A2874:
/* 801A2874  EC 3E F8 24 */	fdivs f1, f30, f31
lbl_801A2878:
/* 801A2878  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A287C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2880  40 81 00 08 */	ble lbl_801A2888
/* 801A2884  FC 20 00 90 */	fmr f1, f0
lbl_801A2888:
/* 801A2888  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A288C  EF C0 08 28 */	fsubs f30, f0, f1
/* 801A2890  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A2894  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A2898  C0 03 11 FC */	lfs f0, 0x11fc(r3)
/* 801A289C  EF DE 00 32 */	fmuls f30, f30, f0
/* 801A28A0  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A28A4  28 00 00 0A */	cmplwi r0, 0xa
/* 801A28A8  41 82 00 0C */	beq lbl_801A28B4
/* 801A28AC  28 00 00 09 */	cmplwi r0, 9
/* 801A28B0  40 82 00 10 */	bne lbl_801A28C0
lbl_801A28B4:
/* 801A28B4  A0 16 03 78 */	lhz r0, 0x378(r22)
/* 801A28B8  28 00 00 00 */	cmplwi r0, 0
/* 801A28BC  41 82 00 AC */	beq lbl_801A2968
lbl_801A28C0:
/* 801A28C0  A8 14 10 F8 */	lha r0, 0x10f8(r20)
/* 801A28C4  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A28C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A28CC  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801A28D0  3C 60 43 30 */	lis r3, 0x4330
/* 801A28D4  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 801A28D8  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 801A28DC  EC 20 10 28 */	fsubs f1, f0, f2
/* 801A28E0  C0 1F 12 10 */	lfs f0, 0x1210(r31)
/* 801A28E4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801A28E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A28EC  FC 00 00 1E */	fctiwz f0, f0
/* 801A28F0  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 801A28F4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801A28F8  B0 14 10 F0 */	sth r0, 0x10f0(r20)
/* 801A28FC  A8 14 10 FA */	lha r0, 0x10fa(r20)
/* 801A2900  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A2904  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801A2908  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 801A290C  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801A2910  EC 20 10 28 */	fsubs f1, f0, f2
/* 801A2914  C0 1F 12 10 */	lfs f0, 0x1210(r31)
/* 801A2918  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801A291C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A2920  FC 00 00 1E */	fctiwz f0, f0
/* 801A2924  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 801A2928  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A292C  B0 14 10 F2 */	sth r0, 0x10f2(r20)
/* 801A2930  A8 14 10 FC */	lha r0, 0x10fc(r20)
/* 801A2934  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A2938  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801A293C  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 801A2940  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 801A2944  EC 20 10 28 */	fsubs f1, f0, f2
/* 801A2948  C0 1F 12 10 */	lfs f0, 0x1210(r31)
/* 801A294C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801A2950  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A2954  FC 00 00 1E */	fctiwz f0, f0
/* 801A2958  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 801A295C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 801A2960  B0 14 10 F4 */	sth r0, 0x10f4(r20)
/* 801A2964  48 00 00 90 */	b lbl_801A29F4
lbl_801A2968:
/* 801A2968  A8 14 10 F8 */	lha r0, 0x10f8(r20)
/* 801A296C  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A2970  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A2974  90 01 00 EC */	stw r0, 0xec(r1)
/* 801A2978  3C 60 43 30 */	lis r3, 0x4330
/* 801A297C  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 801A2980  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 801A2984  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A2988  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801A298C  FC 00 00 1E */	fctiwz f0, f0
/* 801A2990  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 801A2994  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801A2998  B0 14 10 F0 */	sth r0, 0x10f0(r20)
/* 801A299C  A8 14 10 FA */	lha r0, 0x10fa(r20)
/* 801A29A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A29A4  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801A29A8  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 801A29AC  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 801A29B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A29B4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801A29B8  FC 00 00 1E */	fctiwz f0, f0
/* 801A29BC  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 801A29C0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801A29C4  B0 14 10 F2 */	sth r0, 0x10f2(r20)
/* 801A29C8  A8 14 10 FC */	lha r0, 0x10fc(r20)
/* 801A29CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A29D0  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801A29D4  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 801A29D8  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801A29DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A29E0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801A29E4  FC 00 00 1E */	fctiwz f0, f0
/* 801A29E8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 801A29EC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A29F0  B0 14 10 F4 */	sth r0, 0x10f4(r20)
lbl_801A29F4:
/* 801A29F4  A8 14 10 F0 */	lha r0, 0x10f0(r20)
/* 801A29F8  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A29FC  40 81 00 0C */	ble lbl_801A2A08
/* 801A2A00  38 00 00 FF */	li r0, 0xff
/* 801A2A04  B0 14 10 F0 */	sth r0, 0x10f0(r20)
lbl_801A2A08:
/* 801A2A08  A8 14 10 F2 */	lha r0, 0x10f2(r20)
/* 801A2A0C  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A2A10  40 81 00 0C */	ble lbl_801A2A1C
/* 801A2A14  38 00 00 FF */	li r0, 0xff
/* 801A2A18  B0 14 10 F2 */	sth r0, 0x10f2(r20)
lbl_801A2A1C:
/* 801A2A1C  A8 14 10 F4 */	lha r0, 0x10f4(r20)
/* 801A2A20  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A2A24  40 81 00 0C */	ble lbl_801A2A30
/* 801A2A28  38 00 00 FF */	li r0, 0xff
/* 801A2A2C  B0 14 10 F4 */	sth r0, 0x10f4(r20)
lbl_801A2A30:
/* 801A2A30  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A2A34  40 82 00 1C */	bne lbl_801A2A50
/* 801A2A38  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A2A3C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801A2A40  4C 40 13 82 */	cror 2, 0, 2
/* 801A2A44  41 82 00 0C */	beq lbl_801A2A50
/* 801A2A48  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 801A2A4C  40 82 00 20 */	bne lbl_801A2A6C
lbl_801A2A50:
/* 801A2A50  A8 14 10 F0 */	lha r0, 0x10f0(r20)
/* 801A2A54  98 16 00 18 */	stb r0, 0x18(r22)
/* 801A2A58  A8 14 10 F2 */	lha r0, 0x10f2(r20)
/* 801A2A5C  98 16 00 19 */	stb r0, 0x19(r22)
/* 801A2A60  A8 14 10 F4 */	lha r0, 0x10f4(r20)
/* 801A2A64  98 16 00 1A */	stb r0, 0x1a(r22)
/* 801A2A68  48 00 00 4C */	b lbl_801A2AB4
lbl_801A2A6C:
/* 801A2A6C  38 76 00 18 */	addi r3, r22, 0x18
/* 801A2A70  A8 14 10 F0 */	lha r0, 0x10f0(r20)
/* 801A2A74  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801A2A78  38 A0 00 0A */	li r5, 0xa
/* 801A2A7C  38 C0 00 80 */	li r6, 0x80
/* 801A2A80  4B FF F6 11 */	bl cLib_addCalcU8__FPUcUcss
/* 801A2A84  38 76 00 19 */	addi r3, r22, 0x19
/* 801A2A88  A8 14 10 F2 */	lha r0, 0x10f2(r20)
/* 801A2A8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801A2A90  38 A0 00 0A */	li r5, 0xa
/* 801A2A94  38 C0 00 80 */	li r6, 0x80
/* 801A2A98  4B FF F5 F9 */	bl cLib_addCalcU8__FPUcUcss
/* 801A2A9C  38 76 00 1A */	addi r3, r22, 0x1a
/* 801A2AA0  A8 14 10 F4 */	lha r0, 0x10f4(r20)
/* 801A2AA4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801A2AA8  38 A0 00 0A */	li r5, 0xa
/* 801A2AAC  38 C0 00 80 */	li r6, 0x80
/* 801A2AB0  4B FF F5 E1 */	bl cLib_addCalcU8__FPUcUcss
lbl_801A2AB4:
/* 801A2AB4  A8 77 00 00 */	lha r3, 0(r23)
/* 801A2AB8  88 16 00 18 */	lbz r0, 0x18(r22)
/* 801A2ABC  C8 42 A2 80 */	lfd f2, lit_4964(r2)
/* 801A2AC0  90 01 00 EC */	stw r0, 0xec(r1)
/* 801A2AC4  3C 80 43 30 */	lis r4, 0x4330
/* 801A2AC8  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 801A2ACC  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 801A2AD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801A2AD4  C0 02 A2 64 */	lfs f0, lit_4730(r2)
/* 801A2AD8  EC 60 07 B2 */	fmuls f3, f0, f30
/* 801A2ADC  EC 01 00 F2 */	fmuls f0, f1, f3
/* 801A2AE0  FC 00 00 1E */	fctiwz f0, f0
/* 801A2AE4  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 801A2AE8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801A2AEC  7C 03 02 14 */	add r0, r3, r0
/* 801A2AF0  B0 14 10 F0 */	sth r0, 0x10f0(r20)
/* 801A2AF4  A8 77 00 02 */	lha r3, 2(r23)
/* 801A2AF8  88 16 00 19 */	lbz r0, 0x19(r22)
/* 801A2AFC  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801A2B00  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 801A2B04  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 801A2B08  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A2B0C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801A2B10  FC 00 00 1E */	fctiwz f0, f0
/* 801A2B14  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 801A2B18  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801A2B1C  7C 03 02 14 */	add r0, r3, r0
/* 801A2B20  B0 14 10 F2 */	sth r0, 0x10f2(r20)
/* 801A2B24  A8 77 00 04 */	lha r3, 4(r23)
/* 801A2B28  88 16 00 1A */	lbz r0, 0x1a(r22)
/* 801A2B2C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801A2B30  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 801A2B34  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801A2B38  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A2B3C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801A2B40  FC 00 00 1E */	fctiwz f0, f0
/* 801A2B44  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 801A2B48  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A2B4C  7C 03 02 14 */	add r0, r3, r0
/* 801A2B50  B0 14 10 F4 */	sth r0, 0x10f4(r20)
/* 801A2B54  A8 14 10 F0 */	lha r0, 0x10f0(r20)
/* 801A2B58  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A2B5C  40 81 00 0C */	ble lbl_801A2B68
/* 801A2B60  38 00 00 FF */	li r0, 0xff
/* 801A2B64  B0 14 10 F0 */	sth r0, 0x10f0(r20)
lbl_801A2B68:
/* 801A2B68  A8 14 10 F2 */	lha r0, 0x10f2(r20)
/* 801A2B6C  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A2B70  40 81 00 0C */	ble lbl_801A2B7C
/* 801A2B74  38 00 00 FF */	li r0, 0xff
/* 801A2B78  B0 14 10 F2 */	sth r0, 0x10f2(r20)
lbl_801A2B7C:
/* 801A2B7C  A8 14 10 F4 */	lha r0, 0x10f4(r20)
/* 801A2B80  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A2B84  40 81 00 0C */	ble lbl_801A2B90
/* 801A2B88  38 00 00 FF */	li r0, 0xff
/* 801A2B8C  B0 14 10 F4 */	sth r0, 0x10f4(r20)
lbl_801A2B90:
/* 801A2B90  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A2B94  40 82 00 18 */	bne lbl_801A2BAC
/* 801A2B98  2C 1D 00 00 */	cmpwi r29, 0
/* 801A2B9C  40 82 00 10 */	bne lbl_801A2BAC
/* 801A2BA0  88 16 03 84 */	lbz r0, 0x384(r22)
/* 801A2BA4  28 00 00 00 */	cmplwi r0, 0
/* 801A2BA8  41 82 00 20 */	beq lbl_801A2BC8
lbl_801A2BAC:
/* 801A2BAC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 801A2BB0  D0 16 03 2C */	stfs f0, 0x32c(r22)
/* 801A2BB4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 801A2BB8  D0 16 03 30 */	stfs f0, 0x330(r22)
/* 801A2BBC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 801A2BC0  D0 16 03 34 */	stfs f0, 0x334(r22)
/* 801A2BC4  48 00 02 8C */	b lbl_801A2E50
lbl_801A2BC8:
/* 801A2BC8  7E A3 AB 78 */	mr r3, r21
/* 801A2BCC  38 96 03 2C */	addi r4, r22, 0x32c
/* 801A2BD0  48 1A 47 CD */	bl PSVECSquareDistance
/* 801A2BD4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A2BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2BDC  40 81 00 58 */	ble lbl_801A2C34
/* 801A2BE0  FC 00 08 34 */	frsqrte f0, f1
/* 801A2BE4  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A2BE8  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2BEC  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A2BF0  FC 00 00 32 */	fmul f0, f0, f0
/* 801A2BF4  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2BF8  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2BFC  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2C00  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2C04  FC 00 00 32 */	fmul f0, f0, f0
/* 801A2C08  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2C0C  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2C10  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2C14  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2C18  FC 00 00 32 */	fmul f0, f0, f0
/* 801A2C1C  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2C20  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2C24  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2C28  FC 21 00 32 */	fmul f1, f1, f0
/* 801A2C2C  FC 20 08 18 */	frsp f1, f1
/* 801A2C30  48 00 00 88 */	b lbl_801A2CB8
lbl_801A2C34:
/* 801A2C34  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A2C38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2C3C  40 80 00 10 */	bge lbl_801A2C4C
/* 801A2C40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A2C44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801A2C48  48 00 00 70 */	b lbl_801A2CB8
lbl_801A2C4C:
/* 801A2C4C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801A2C50  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801A2C54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A2C58  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A2C5C  7C 03 00 00 */	cmpw r3, r0
/* 801A2C60  41 82 00 14 */	beq lbl_801A2C74
/* 801A2C64  40 80 00 40 */	bge lbl_801A2CA4
/* 801A2C68  2C 03 00 00 */	cmpwi r3, 0
/* 801A2C6C  41 82 00 20 */	beq lbl_801A2C8C
/* 801A2C70  48 00 00 34 */	b lbl_801A2CA4
lbl_801A2C74:
/* 801A2C74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A2C78  41 82 00 0C */	beq lbl_801A2C84
/* 801A2C7C  38 00 00 01 */	li r0, 1
/* 801A2C80  48 00 00 28 */	b lbl_801A2CA8
lbl_801A2C84:
/* 801A2C84  38 00 00 02 */	li r0, 2
/* 801A2C88  48 00 00 20 */	b lbl_801A2CA8
lbl_801A2C8C:
/* 801A2C8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A2C90  41 82 00 0C */	beq lbl_801A2C9C
/* 801A2C94  38 00 00 05 */	li r0, 5
/* 801A2C98  48 00 00 10 */	b lbl_801A2CA8
lbl_801A2C9C:
/* 801A2C9C  38 00 00 03 */	li r0, 3
/* 801A2CA0  48 00 00 08 */	b lbl_801A2CA8
lbl_801A2CA4:
/* 801A2CA4  38 00 00 04 */	li r0, 4
lbl_801A2CA8:
/* 801A2CA8  2C 00 00 01 */	cmpwi r0, 1
/* 801A2CAC  40 82 00 0C */	bne lbl_801A2CB8
/* 801A2CB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A2CB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801A2CB8:
/* 801A2CB8  C0 02 A3 24 */	lfs f0, lit_6765(r2)
/* 801A2CBC  EF E1 00 24 */	fdivs f31, f1, f0
/* 801A2CC0  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A2CC4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801A2CC8  40 81 00 08 */	ble lbl_801A2CD0
/* 801A2CCC  FF E0 00 90 */	fmr f31, f0
lbl_801A2CD0:
/* 801A2CD0  EF FF 07 F2 */	fmuls f31, f31, f31
/* 801A2CD4  7E A3 AB 78 */	mr r3, r21
/* 801A2CD8  38 81 00 B0 */	addi r4, r1, 0xb0
/* 801A2CDC  48 1A 46 C1 */	bl PSVECSquareDistance
/* 801A2CE0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A2CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2CE8  40 81 00 58 */	ble lbl_801A2D40
/* 801A2CEC  FC 00 08 34 */	frsqrte f0, f1
/* 801A2CF0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A2CF4  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2CF8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A2CFC  FC 00 00 32 */	fmul f0, f0, f0
/* 801A2D00  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2D04  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2D08  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2D0C  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2D10  FC 00 00 32 */	fmul f0, f0, f0
/* 801A2D14  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2D18  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2D1C  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2D20  FC 44 00 32 */	fmul f2, f4, f0
/* 801A2D24  FC 00 00 32 */	fmul f0, f0, f0
/* 801A2D28  FC 01 00 32 */	fmul f0, f1, f0
/* 801A2D2C  FC 03 00 28 */	fsub f0, f3, f0
/* 801A2D30  FC 02 00 32 */	fmul f0, f2, f0
/* 801A2D34  FC 21 00 32 */	fmul f1, f1, f0
/* 801A2D38  FC 20 08 18 */	frsp f1, f1
/* 801A2D3C  48 00 00 88 */	b lbl_801A2DC4
lbl_801A2D40:
/* 801A2D40  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A2D44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2D48  40 80 00 10 */	bge lbl_801A2D58
/* 801A2D4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A2D50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801A2D54  48 00 00 70 */	b lbl_801A2DC4
lbl_801A2D58:
/* 801A2D58  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801A2D5C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801A2D60  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A2D64  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A2D68  7C 03 00 00 */	cmpw r3, r0
/* 801A2D6C  41 82 00 14 */	beq lbl_801A2D80
/* 801A2D70  40 80 00 40 */	bge lbl_801A2DB0
/* 801A2D74  2C 03 00 00 */	cmpwi r3, 0
/* 801A2D78  41 82 00 20 */	beq lbl_801A2D98
/* 801A2D7C  48 00 00 34 */	b lbl_801A2DB0
lbl_801A2D80:
/* 801A2D80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A2D84  41 82 00 0C */	beq lbl_801A2D90
/* 801A2D88  38 00 00 01 */	li r0, 1
/* 801A2D8C  48 00 00 28 */	b lbl_801A2DB4
lbl_801A2D90:
/* 801A2D90  38 00 00 02 */	li r0, 2
/* 801A2D94  48 00 00 20 */	b lbl_801A2DB4
lbl_801A2D98:
/* 801A2D98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A2D9C  41 82 00 0C */	beq lbl_801A2DA8
/* 801A2DA0  38 00 00 05 */	li r0, 5
/* 801A2DA4  48 00 00 10 */	b lbl_801A2DB4
lbl_801A2DA8:
/* 801A2DA8  38 00 00 03 */	li r0, 3
/* 801A2DAC  48 00 00 08 */	b lbl_801A2DB4
lbl_801A2DB0:
/* 801A2DB0  38 00 00 04 */	li r0, 4
lbl_801A2DB4:
/* 801A2DB4  2C 00 00 01 */	cmpwi r0, 1
/* 801A2DB8  40 82 00 0C */	bne lbl_801A2DC4
/* 801A2DBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A2DC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801A2DC4:
/* 801A2DC4  C0 02 A1 C8 */	lfs f0, lit_4347(r2)
/* 801A2DC8  EC 21 00 24 */	fdivs f1, f1, f0
/* 801A2DCC  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A2DD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2DD4  40 81 00 08 */	ble lbl_801A2DDC
/* 801A2DD8  FC 20 00 90 */	fmr f1, f0
lbl_801A2DDC:
/* 801A2DDC  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A2DE0  EC 40 08 28 */	fsubs f2, f0, f1
/* 801A2DE4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801A2DE8  EC 42 00 32 */	fmuls f2, f2, f0
/* 801A2DEC  C0 22 A3 28 */	lfs f1, lit_6766(r2)
/* 801A2DF0  C0 02 A3 24 */	lfs f0, lit_6765(r2)
/* 801A2DF4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801A2DF8  EC 21 00 2A */	fadds f1, f1, f0
/* 801A2DFC  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A2E00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A2E04  EF A1 00 2A */	fadds f29, f1, f0
/* 801A2E08  38 76 03 2C */	addi r3, r22, 0x32c
/* 801A2E0C  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 801A2E10  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2E14  FC 60 E8 90 */	fmr f3, f29
/* 801A2E18  C0 82 A2 9C */	lfs f4, lit_5194(r2)
/* 801A2E1C  48 0C CB 61 */	bl cLib_addCalc__FPfffff
/* 801A2E20  38 76 03 30 */	addi r3, r22, 0x330
/* 801A2E24  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 801A2E28  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2E2C  FC 60 E8 90 */	fmr f3, f29
/* 801A2E30  C0 82 A2 9C */	lfs f4, lit_5194(r2)
/* 801A2E34  48 0C CB 49 */	bl cLib_addCalc__FPfffff
/* 801A2E38  38 76 03 34 */	addi r3, r22, 0x334
/* 801A2E3C  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 801A2E40  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2E44  FC 60 E8 90 */	fmr f3, f29
/* 801A2E48  C0 82 A2 9C */	lfs f4, lit_5194(r2)
/* 801A2E4C  48 0C CB 31 */	bl cLib_addCalc__FPfffff
lbl_801A2E50:
/* 801A2E50  C0 16 03 2C */	lfs f0, 0x32c(r22)
/* 801A2E54  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801A2E58  C0 16 03 30 */	lfs f0, 0x330(r22)
/* 801A2E5C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801A2E60  C0 16 03 34 */	lfs f0, 0x334(r22)
/* 801A2E64  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 801A2E68  7F 83 E3 78 */	mr r3, r28
/* 801A2E6C  38 81 00 8C */	addi r4, r1, 0x8c
/* 801A2E70  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 801A2E74  48 1A 3E F9 */	bl PSMTXMultVec
/* 801A2E78  38 60 00 04 */	li r3, 4
/* 801A2E7C  48 00 9E 91 */	bl dKy_shadow_mode_check__FUc
/* 801A2E80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A2E84  40 82 08 B8 */	bne lbl_801A373C
/* 801A2E88  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A2E8C  28 00 00 09 */	cmplwi r0, 9
/* 801A2E90  41 82 00 0C */	beq lbl_801A2E9C
/* 801A2E94  28 00 00 0A */	cmplwi r0, 0xa
/* 801A2E98  40 82 00 AC */	bne lbl_801A2F44
lbl_801A2E9C:
/* 801A2E9C  7F C3 F3 78 */	mr r3, r30
/* 801A2EA0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801A2EA4  81 8C 02 8C */	lwz r12, 0x28c(r12)
/* 801A2EA8  7D 89 03 A6 */	mtctr r12
/* 801A2EAC  4E 80 04 21 */	bctrl 
/* 801A2EB0  C0 02 A3 2C */	lfs f0, lit_6767(r2)
/* 801A2EB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A2EB8  41 80 00 38 */	blt lbl_801A2EF0
/* 801A2EBC  7F C3 F3 78 */	mr r3, r30
/* 801A2EC0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801A2EC4  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 801A2EC8  7D 89 03 A6 */	mtctr r12
/* 801A2ECC  4E 80 04 21 */	bctrl 
/* 801A2ED0  2C 03 00 00 */	cmpwi r3, 0
/* 801A2ED4  40 82 00 1C */	bne lbl_801A2EF0
/* 801A2ED8  48 00 83 A9 */	bl dKy_camera_water_in_status_check__Fv
/* 801A2EDC  2C 03 00 00 */	cmpwi r3, 0
/* 801A2EE0  40 82 00 10 */	bne lbl_801A2EF0
/* 801A2EE4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 801A2EE8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801A2EEC  40 82 00 58 */	bne lbl_801A2F44
lbl_801A2EF0:
/* 801A2EF0  38 76 03 38 */	addi r3, r22, 0x338
/* 801A2EF4  C0 35 00 00 */	lfs f1, 0(r21)
/* 801A2EF8  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2EFC  C0 62 A1 C8 */	lfs f3, lit_4347(r2)
/* 801A2F00  C0 82 A2 64 */	lfs f4, lit_4730(r2)
/* 801A2F04  48 0C CA 79 */	bl cLib_addCalc__FPfffff
/* 801A2F08  38 76 03 3C */	addi r3, r22, 0x33c
/* 801A2F0C  C0 22 A1 E0 */	lfs f1, lit_4353(r2)
/* 801A2F10  C0 15 00 04 */	lfs f0, 4(r21)
/* 801A2F14  EC 21 00 2A */	fadds f1, f1, f0
/* 801A2F18  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2F1C  C0 62 A1 C8 */	lfs f3, lit_4347(r2)
/* 801A2F20  C0 82 A2 64 */	lfs f4, lit_4730(r2)
/* 801A2F24  48 0C CA 59 */	bl cLib_addCalc__FPfffff
/* 801A2F28  38 76 03 40 */	addi r3, r22, 0x340
/* 801A2F2C  C0 35 00 08 */	lfs f1, 8(r21)
/* 801A2F30  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2F34  C0 62 A1 C8 */	lfs f3, lit_4347(r2)
/* 801A2F38  C0 82 A2 64 */	lfs f4, lit_4730(r2)
/* 801A2F3C  48 0C CA 41 */	bl cLib_addCalc__FPfffff
/* 801A2F40  48 00 06 8C */	b lbl_801A35CC
lbl_801A2F44:
/* 801A2F44  88 7F 12 D7 */	lbz r3, 0x12d7(r31)
/* 801A2F48  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801A2F4C  40 82 00 0C */	bne lbl_801A2F58
/* 801A2F50  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 801A2F54  41 82 00 68 */	beq lbl_801A2FBC
lbl_801A2F58:
/* 801A2F58  38 76 03 38 */	addi r3, r22, 0x338
/* 801A2F5C  3C 80 80 43 */	lis r4, g_env_light@ha
/* 801A2F60  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 801A2F64  C0 24 10 A0 */	lfs f1, 0x10a0(r4)
/* 801A2F68  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2F6C  C0 62 A1 C8 */	lfs f3, lit_4347(r2)
/* 801A2F70  C0 82 A2 64 */	lfs f4, lit_4730(r2)
/* 801A2F74  48 0C CA 09 */	bl cLib_addCalc__FPfffff
/* 801A2F78  38 76 03 3C */	addi r3, r22, 0x33c
/* 801A2F7C  3C 80 80 43 */	lis r4, g_env_light@ha
/* 801A2F80  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 801A2F84  C0 24 10 A4 */	lfs f1, 0x10a4(r4)
/* 801A2F88  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2F8C  C0 62 A1 C8 */	lfs f3, lit_4347(r2)
/* 801A2F90  C0 82 A2 64 */	lfs f4, lit_4730(r2)
/* 801A2F94  48 0C C9 E9 */	bl cLib_addCalc__FPfffff
/* 801A2F98  38 76 03 40 */	addi r3, r22, 0x340
/* 801A2F9C  3C 80 80 43 */	lis r4, g_env_light@ha
/* 801A2FA0  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 801A2FA4  C0 24 10 A8 */	lfs f1, 0x10a8(r4)
/* 801A2FA8  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A2FAC  C0 62 A1 C8 */	lfs f3, lit_4347(r2)
/* 801A2FB0  C0 82 A2 64 */	lfs f4, lit_4730(r2)
/* 801A2FB4  48 0C C9 C9 */	bl cLib_addCalc__FPfffff
/* 801A2FB8  48 00 06 14 */	b lbl_801A35CC
lbl_801A2FBC:
/* 801A2FBC  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 801A2FC0  41 82 00 80 */	beq lbl_801A3040
/* 801A2FC4  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A2FC8  40 82 00 10 */	bne lbl_801A2FD8
/* 801A2FCC  88 16 03 84 */	lbz r0, 0x384(r22)
/* 801A2FD0  28 00 00 00 */	cmplwi r0, 0
/* 801A2FD4  41 82 00 20 */	beq lbl_801A2FF4
lbl_801A2FD8:
/* 801A2FD8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 801A2FDC  D0 16 03 38 */	stfs f0, 0x338(r22)
/* 801A2FE0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 801A2FE4  D0 16 03 3C */	stfs f0, 0x33c(r22)
/* 801A2FE8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 801A2FEC  D0 16 03 40 */	stfs f0, 0x340(r22)
/* 801A2FF0  48 00 05 DC */	b lbl_801A35CC
lbl_801A2FF4:
/* 801A2FF4  38 76 03 38 */	addi r3, r22, 0x338
/* 801A2FF8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 801A2FFC  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A3000  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A3004  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A3008  48 0C C9 75 */	bl cLib_addCalc__FPfffff
/* 801A300C  38 76 03 3C */	addi r3, r22, 0x33c
/* 801A3010  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 801A3014  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A3018  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A301C  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A3020  48 0C C9 5D */	bl cLib_addCalc__FPfffff
/* 801A3024  38 76 03 40 */	addi r3, r22, 0x340
/* 801A3028  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 801A302C  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A3030  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A3034  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A3038  48 0C C9 45 */	bl cLib_addCalc__FPfffff
/* 801A303C  48 00 05 90 */	b lbl_801A35CC
lbl_801A3040:
/* 801A3040  3B 20 00 00 */	li r25, 0
/* 801A3044  C0 16 03 2C */	lfs f0, 0x32c(r22)
/* 801A3048  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801A304C  C0 16 03 30 */	lfs f0, 0x330(r22)
/* 801A3050  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801A3054  C0 16 03 34 */	lfs f0, 0x334(r22)
/* 801A3058  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801A305C  3B 40 00 00 */	li r26, 0
/* 801A3060  3A 80 00 00 */	li r20, 0
lbl_801A3064:
/* 801A3064  7F BF A2 14 */	add r29, r31, r20
/* 801A3068  88 1D 0C 3E */	lbz r0, 0xc3e(r29)
/* 801A306C  28 00 00 01 */	cmplwi r0, 1
/* 801A3070  40 82 03 14 */	bne lbl_801A3384
/* 801A3074  3B 9D 0C 18 */	addi r28, r29, 0xc18
/* 801A3078  7F 83 E3 78 */	mr r3, r28
/* 801A307C  7E A4 AB 78 */	mr r4, r21
/* 801A3080  48 1A 43 1D */	bl PSVECSquareDistance
/* 801A3084  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A308C  40 81 00 58 */	ble lbl_801A30E4
/* 801A3090  FC 00 08 34 */	frsqrte f0, f1
/* 801A3094  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A3098  FC 44 00 32 */	fmul f2, f4, f0
/* 801A309C  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A30A0  FC 00 00 32 */	fmul f0, f0, f0
/* 801A30A4  FC 01 00 32 */	fmul f0, f1, f0
/* 801A30A8  FC 03 00 28 */	fsub f0, f3, f0
/* 801A30AC  FC 02 00 32 */	fmul f0, f2, f0
/* 801A30B0  FC 44 00 32 */	fmul f2, f4, f0
/* 801A30B4  FC 00 00 32 */	fmul f0, f0, f0
/* 801A30B8  FC 01 00 32 */	fmul f0, f1, f0
/* 801A30BC  FC 03 00 28 */	fsub f0, f3, f0
/* 801A30C0  FC 02 00 32 */	fmul f0, f2, f0
/* 801A30C4  FC 44 00 32 */	fmul f2, f4, f0
/* 801A30C8  FC 00 00 32 */	fmul f0, f0, f0
/* 801A30CC  FC 01 00 32 */	fmul f0, f1, f0
/* 801A30D0  FC 03 00 28 */	fsub f0, f3, f0
/* 801A30D4  FC 02 00 32 */	fmul f0, f2, f0
/* 801A30D8  FF E1 00 32 */	fmul f31, f1, f0
/* 801A30DC  FF E0 F8 18 */	frsp f31, f31
/* 801A30E0  48 00 00 90 */	b lbl_801A3170
lbl_801A30E4:
/* 801A30E4  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A30E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A30EC  40 80 00 10 */	bge lbl_801A30FC
/* 801A30F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A30F4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 801A30F8  48 00 00 78 */	b lbl_801A3170
lbl_801A30FC:
/* 801A30FC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801A3100  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801A3104  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A3108  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A310C  7C 03 00 00 */	cmpw r3, r0
/* 801A3110  41 82 00 14 */	beq lbl_801A3124
/* 801A3114  40 80 00 40 */	bge lbl_801A3154
/* 801A3118  2C 03 00 00 */	cmpwi r3, 0
/* 801A311C  41 82 00 20 */	beq lbl_801A313C
/* 801A3120  48 00 00 34 */	b lbl_801A3154
lbl_801A3124:
/* 801A3124  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3128  41 82 00 0C */	beq lbl_801A3134
/* 801A312C  38 00 00 01 */	li r0, 1
/* 801A3130  48 00 00 28 */	b lbl_801A3158
lbl_801A3134:
/* 801A3134  38 00 00 02 */	li r0, 2
/* 801A3138  48 00 00 20 */	b lbl_801A3158
lbl_801A313C:
/* 801A313C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3140  41 82 00 0C */	beq lbl_801A314C
/* 801A3144  38 00 00 05 */	li r0, 5
/* 801A3148  48 00 00 10 */	b lbl_801A3158
lbl_801A314C:
/* 801A314C  38 00 00 03 */	li r0, 3
/* 801A3150  48 00 00 08 */	b lbl_801A3158
lbl_801A3154:
/* 801A3154  38 00 00 04 */	li r0, 4
lbl_801A3158:
/* 801A3158  2C 00 00 01 */	cmpwi r0, 1
/* 801A315C  40 82 00 10 */	bne lbl_801A316C
/* 801A3160  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A3164  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 801A3168  48 00 00 08 */	b lbl_801A3170
lbl_801A316C:
/* 801A316C  FF E0 08 90 */	fmr f31, f1
lbl_801A3170:
/* 801A3170  38 61 00 80 */	addi r3, r1, 0x80
/* 801A3174  7E A4 AB 78 */	mr r4, r21
/* 801A3178  48 1A 42 25 */	bl PSVECSquareDistance
/* 801A317C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3180  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3184  40 81 00 58 */	ble lbl_801A31DC
/* 801A3188  FC 00 08 34 */	frsqrte f0, f1
/* 801A318C  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A3190  FC 44 00 32 */	fmul f2, f4, f0
/* 801A3194  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A3198  FC 00 00 32 */	fmul f0, f0, f0
/* 801A319C  FC 01 00 32 */	fmul f0, f1, f0
/* 801A31A0  FC 03 00 28 */	fsub f0, f3, f0
/* 801A31A4  FC 02 00 32 */	fmul f0, f2, f0
/* 801A31A8  FC 44 00 32 */	fmul f2, f4, f0
/* 801A31AC  FC 00 00 32 */	fmul f0, f0, f0
/* 801A31B0  FC 01 00 32 */	fmul f0, f1, f0
/* 801A31B4  FC 03 00 28 */	fsub f0, f3, f0
/* 801A31B8  FC 02 00 32 */	fmul f0, f2, f0
/* 801A31BC  FC 44 00 32 */	fmul f2, f4, f0
/* 801A31C0  FC 00 00 32 */	fmul f0, f0, f0
/* 801A31C4  FC 01 00 32 */	fmul f0, f1, f0
/* 801A31C8  FC 03 00 28 */	fsub f0, f3, f0
/* 801A31CC  FC 02 00 32 */	fmul f0, f2, f0
/* 801A31D0  FC 21 00 32 */	fmul f1, f1, f0
/* 801A31D4  FC 20 08 18 */	frsp f1, f1
/* 801A31D8  48 00 00 88 */	b lbl_801A3260
lbl_801A31DC:
/* 801A31DC  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A31E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A31E4  40 80 00 10 */	bge lbl_801A31F4
/* 801A31E8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A31EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801A31F0  48 00 00 70 */	b lbl_801A3260
lbl_801A31F4:
/* 801A31F4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801A31F8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 801A31FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A3200  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A3204  7C 03 00 00 */	cmpw r3, r0
/* 801A3208  41 82 00 14 */	beq lbl_801A321C
/* 801A320C  40 80 00 40 */	bge lbl_801A324C
/* 801A3210  2C 03 00 00 */	cmpwi r3, 0
/* 801A3214  41 82 00 20 */	beq lbl_801A3234
/* 801A3218  48 00 00 34 */	b lbl_801A324C
lbl_801A321C:
/* 801A321C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3220  41 82 00 0C */	beq lbl_801A322C
/* 801A3224  38 00 00 01 */	li r0, 1
/* 801A3228  48 00 00 28 */	b lbl_801A3250
lbl_801A322C:
/* 801A322C  38 00 00 02 */	li r0, 2
/* 801A3230  48 00 00 20 */	b lbl_801A3250
lbl_801A3234:
/* 801A3234  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3238  41 82 00 0C */	beq lbl_801A3244
/* 801A323C  38 00 00 05 */	li r0, 5
/* 801A3240  48 00 00 10 */	b lbl_801A3250
lbl_801A3244:
/* 801A3244  38 00 00 03 */	li r0, 3
/* 801A3248  48 00 00 08 */	b lbl_801A3250
lbl_801A324C:
/* 801A324C  38 00 00 04 */	li r0, 4
lbl_801A3250:
/* 801A3250  2C 00 00 01 */	cmpwi r0, 1
/* 801A3254  40 82 00 0C */	bne lbl_801A3260
/* 801A3258  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A325C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801A3260:
/* 801A3260  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 801A3264  40 80 01 20 */	bge lbl_801A3384
/* 801A3268  7F 83 E3 78 */	mr r3, r28
/* 801A326C  7E A4 AB 78 */	mr r4, r21
/* 801A3270  48 1A 41 2D */	bl PSVECSquareDistance
/* 801A3274  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A327C  40 81 00 58 */	ble lbl_801A32D4
/* 801A3280  FC 00 08 34 */	frsqrte f0, f1
/* 801A3284  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A3288  FC 44 00 32 */	fmul f2, f4, f0
/* 801A328C  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A3290  FC 00 00 32 */	fmul f0, f0, f0
/* 801A3294  FC 01 00 32 */	fmul f0, f1, f0
/* 801A3298  FC 03 00 28 */	fsub f0, f3, f0
/* 801A329C  FC 02 00 32 */	fmul f0, f2, f0
/* 801A32A0  FC 44 00 32 */	fmul f2, f4, f0
/* 801A32A4  FC 00 00 32 */	fmul f0, f0, f0
/* 801A32A8  FC 01 00 32 */	fmul f0, f1, f0
/* 801A32AC  FC 03 00 28 */	fsub f0, f3, f0
/* 801A32B0  FC 02 00 32 */	fmul f0, f2, f0
/* 801A32B4  FC 44 00 32 */	fmul f2, f4, f0
/* 801A32B8  FC 00 00 32 */	fmul f0, f0, f0
/* 801A32BC  FC 01 00 32 */	fmul f0, f1, f0
/* 801A32C0  FC 03 00 28 */	fsub f0, f3, f0
/* 801A32C4  FC 02 00 32 */	fmul f0, f2, f0
/* 801A32C8  FC 21 00 32 */	fmul f1, f1, f0
/* 801A32CC  FC 20 08 18 */	frsp f1, f1
/* 801A32D0  48 00 00 88 */	b lbl_801A3358
lbl_801A32D4:
/* 801A32D4  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A32D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A32DC  40 80 00 10 */	bge lbl_801A32EC
/* 801A32E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A32E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801A32E8  48 00 00 70 */	b lbl_801A3358
lbl_801A32EC:
/* 801A32EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801A32F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801A32F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A32F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A32FC  7C 03 00 00 */	cmpw r3, r0
/* 801A3300  41 82 00 14 */	beq lbl_801A3314
/* 801A3304  40 80 00 40 */	bge lbl_801A3344
/* 801A3308  2C 03 00 00 */	cmpwi r3, 0
/* 801A330C  41 82 00 20 */	beq lbl_801A332C
/* 801A3310  48 00 00 34 */	b lbl_801A3344
lbl_801A3314:
/* 801A3314  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3318  41 82 00 0C */	beq lbl_801A3324
/* 801A331C  38 00 00 01 */	li r0, 1
/* 801A3320  48 00 00 28 */	b lbl_801A3348
lbl_801A3324:
/* 801A3324  38 00 00 02 */	li r0, 2
/* 801A3328  48 00 00 20 */	b lbl_801A3348
lbl_801A332C:
/* 801A332C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3330  41 82 00 0C */	beq lbl_801A333C
/* 801A3334  38 00 00 05 */	li r0, 5
/* 801A3338  48 00 00 10 */	b lbl_801A3348
lbl_801A333C:
/* 801A333C  38 00 00 03 */	li r0, 3
/* 801A3340  48 00 00 08 */	b lbl_801A3348
lbl_801A3344:
/* 801A3344  38 00 00 04 */	li r0, 4
lbl_801A3348:
/* 801A3348  2C 00 00 01 */	cmpwi r0, 1
/* 801A334C  40 82 00 0C */	bne lbl_801A3358
/* 801A3350  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A3354  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801A3358:
/* 801A3358  C0 02 A1 E0 */	lfs f0, lit_4353(r2)
/* 801A335C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3360  40 80 00 24 */	bge lbl_801A3384
/* 801A3364  C0 1D 0C 18 */	lfs f0, 0xc18(r29)
/* 801A3368  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801A336C  C0 1D 0C 1C */	lfs f0, 0xc1c(r29)
/* 801A3370  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801A3374  C0 1D 0C 20 */	lfs f0, 0xc20(r29)
/* 801A3378  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801A337C  38 1A 00 01 */	addi r0, r26, 1
/* 801A3380  54 19 06 3E */	clrlwi r25, r0, 0x18
lbl_801A3384:
/* 801A3384  3B 5A 00 01 */	addi r26, r26, 1
/* 801A3388  2C 1A 00 06 */	cmpwi r26, 6
/* 801A338C  3A 94 00 28 */	addi r20, r20, 0x28
/* 801A3390  41 80 FC D4 */	blt lbl_801A3064
/* 801A3394  57 24 06 3F */	clrlwi. r4, r25, 0x18
/* 801A3398  40 82 00 80 */	bne lbl_801A3418
/* 801A339C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A33A0  40 82 00 10 */	bne lbl_801A33B0
/* 801A33A4  88 16 03 84 */	lbz r0, 0x384(r22)
/* 801A33A8  28 00 00 00 */	cmplwi r0, 0
/* 801A33AC  41 82 00 20 */	beq lbl_801A33CC
lbl_801A33B0:
/* 801A33B0  C0 16 03 2C */	lfs f0, 0x32c(r22)
/* 801A33B4  D0 16 03 38 */	stfs f0, 0x338(r22)
/* 801A33B8  C0 16 03 30 */	lfs f0, 0x330(r22)
/* 801A33BC  D0 16 03 3C */	stfs f0, 0x33c(r22)
/* 801A33C0  C0 16 03 34 */	lfs f0, 0x334(r22)
/* 801A33C4  D0 16 03 40 */	stfs f0, 0x340(r22)
/* 801A33C8  48 00 02 04 */	b lbl_801A35CC
lbl_801A33CC:
/* 801A33CC  38 76 03 38 */	addi r3, r22, 0x338
/* 801A33D0  C0 36 03 2C */	lfs f1, 0x32c(r22)
/* 801A33D4  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A33D8  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A33DC  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A33E0  48 0C C5 9D */	bl cLib_addCalc__FPfffff
/* 801A33E4  38 76 03 3C */	addi r3, r22, 0x33c
/* 801A33E8  C0 36 03 30 */	lfs f1, 0x330(r22)
/* 801A33EC  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A33F0  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A33F4  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A33F8  48 0C C5 85 */	bl cLib_addCalc__FPfffff
/* 801A33FC  38 76 03 40 */	addi r3, r22, 0x340
/* 801A3400  C0 36 03 34 */	lfs f1, 0x334(r22)
/* 801A3404  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A3408  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A340C  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A3410  48 0C C5 6D */	bl cLib_addCalc__FPfffff
/* 801A3414  48 00 01 B8 */	b lbl_801A35CC
lbl_801A3418:
/* 801A3418  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A341C  40 82 00 10 */	bne lbl_801A342C
/* 801A3420  88 16 03 84 */	lbz r0, 0x384(r22)
/* 801A3424  28 00 00 00 */	cmplwi r0, 0
/* 801A3428  41 82 00 2C */	beq lbl_801A3454
lbl_801A342C:
/* 801A342C  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 801A3430  1C 00 00 28 */	mulli r0, r0, 0x28
/* 801A3434  7C 7F 02 14 */	add r3, r31, r0
/* 801A3438  C0 03 0B F0 */	lfs f0, 0xbf0(r3)
/* 801A343C  D0 16 03 38 */	stfs f0, 0x338(r22)
/* 801A3440  C0 03 0B F4 */	lfs f0, 0xbf4(r3)
/* 801A3444  D0 16 03 3C */	stfs f0, 0x33c(r22)
/* 801A3448  C0 03 0B F8 */	lfs f0, 0xbf8(r3)
/* 801A344C  D0 16 03 40 */	stfs f0, 0x340(r22)
/* 801A3450  48 00 00 5C */	b lbl_801A34AC
lbl_801A3454:
/* 801A3454  38 76 03 38 */	addi r3, r22, 0x338
/* 801A3458  1E 84 00 28 */	mulli r20, r4, 0x28
/* 801A345C  7C 9F A2 14 */	add r4, r31, r20
/* 801A3460  C0 24 0B F0 */	lfs f1, 0xbf0(r4)
/* 801A3464  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A3468  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A346C  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A3470  48 0C C5 0D */	bl cLib_addCalc__FPfffff
/* 801A3474  38 76 03 3C */	addi r3, r22, 0x33c
/* 801A3478  7C 9F A2 14 */	add r4, r31, r20
/* 801A347C  C0 24 0B F4 */	lfs f1, 0xbf4(r4)
/* 801A3480  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A3484  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A3488  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A348C  48 0C C4 F1 */	bl cLib_addCalc__FPfffff
/* 801A3490  38 76 03 40 */	addi r3, r22, 0x340
/* 801A3494  7C 9F A2 14 */	add r4, r31, r20
/* 801A3498  C0 24 0B F8 */	lfs f1, 0xbf8(r4)
/* 801A349C  C0 42 A2 EC */	lfs f2, lit_6033(r2)
/* 801A34A0  C0 62 A1 E0 */	lfs f3, lit_4353(r2)
/* 801A34A4  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A34A8  48 0C C4 D5 */	bl cLib_addCalc__FPfffff
lbl_801A34AC:
/* 801A34AC  57 23 06 3E */	clrlwi r3, r25, 0x18
/* 801A34B0  38 03 FF FF */	addi r0, r3, -1
/* 801A34B4  1C 60 00 28 */	mulli r3, r0, 0x28
/* 801A34B8  38 63 0C 18 */	addi r3, r3, 0xc18
/* 801A34BC  7C 7F 1A 14 */	add r3, r31, r3
/* 801A34C0  7E A4 AB 78 */	mr r4, r21
/* 801A34C4  48 1A 3E D9 */	bl PSVECSquareDistance
/* 801A34C8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A34CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A34D0  40 81 00 58 */	ble lbl_801A3528
/* 801A34D4  FC 00 08 34 */	frsqrte f0, f1
/* 801A34D8  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A34DC  FC 44 00 32 */	fmul f2, f4, f0
/* 801A34E0  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A34E4  FC 00 00 32 */	fmul f0, f0, f0
/* 801A34E8  FC 01 00 32 */	fmul f0, f1, f0
/* 801A34EC  FC 03 00 28 */	fsub f0, f3, f0
/* 801A34F0  FC 02 00 32 */	fmul f0, f2, f0
/* 801A34F4  FC 44 00 32 */	fmul f2, f4, f0
/* 801A34F8  FC 00 00 32 */	fmul f0, f0, f0
/* 801A34FC  FC 01 00 32 */	fmul f0, f1, f0
/* 801A3500  FC 03 00 28 */	fsub f0, f3, f0
/* 801A3504  FC 02 00 32 */	fmul f0, f2, f0
/* 801A3508  FC 44 00 32 */	fmul f2, f4, f0
/* 801A350C  FC 00 00 32 */	fmul f0, f0, f0
/* 801A3510  FC 01 00 32 */	fmul f0, f1, f0
/* 801A3514  FC 03 00 28 */	fsub f0, f3, f0
/* 801A3518  FC 02 00 32 */	fmul f0, f2, f0
/* 801A351C  FC 21 00 32 */	fmul f1, f1, f0
/* 801A3520  FC 20 08 18 */	frsp f1, f1
/* 801A3524  48 00 00 88 */	b lbl_801A35AC
lbl_801A3528:
/* 801A3528  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A352C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3530  40 80 00 10 */	bge lbl_801A3540
/* 801A3534  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A3538  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 801A353C  48 00 00 70 */	b lbl_801A35AC
lbl_801A3540:
/* 801A3540  D0 21 00 08 */	stfs f1, 8(r1)
/* 801A3544  80 81 00 08 */	lwz r4, 8(r1)
/* 801A3548  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A354C  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A3550  7C 03 00 00 */	cmpw r3, r0
/* 801A3554  41 82 00 14 */	beq lbl_801A3568
/* 801A3558  40 80 00 40 */	bge lbl_801A3598
/* 801A355C  2C 03 00 00 */	cmpwi r3, 0
/* 801A3560  41 82 00 20 */	beq lbl_801A3580
/* 801A3564  48 00 00 34 */	b lbl_801A3598
lbl_801A3568:
/* 801A3568  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A356C  41 82 00 0C */	beq lbl_801A3578
/* 801A3570  38 00 00 01 */	li r0, 1
/* 801A3574  48 00 00 28 */	b lbl_801A359C
lbl_801A3578:
/* 801A3578  38 00 00 02 */	li r0, 2
/* 801A357C  48 00 00 20 */	b lbl_801A359C
lbl_801A3580:
/* 801A3580  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A3584  41 82 00 0C */	beq lbl_801A3590
/* 801A3588  38 00 00 05 */	li r0, 5
/* 801A358C  48 00 00 10 */	b lbl_801A359C
lbl_801A3590:
/* 801A3590  38 00 00 03 */	li r0, 3
/* 801A3594  48 00 00 08 */	b lbl_801A359C
lbl_801A3598:
/* 801A3598  38 00 00 04 */	li r0, 4
lbl_801A359C:
/* 801A359C  2C 00 00 01 */	cmpwi r0, 1
/* 801A35A0  40 82 00 0C */	bne lbl_801A35AC
/* 801A35A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801A35A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801A35AC:
/* 801A35AC  C0 02 A1 D8 */	lfs f0, lit_4351(r2)
/* 801A35B0  EC 21 00 24 */	fdivs f1, f1, f0
/* 801A35B4  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A35B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A35BC  40 81 00 08 */	ble lbl_801A35C4
/* 801A35C0  FC 20 00 90 */	fmr f1, f0
lbl_801A35C4:
/* 801A35C4  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A35C8  EF C0 08 28 */	fsubs f30, f0, f1
lbl_801A35CC:
/* 801A35CC  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A35D0  28 00 00 09 */	cmplwi r0, 9
/* 801A35D4  41 82 00 0C */	beq lbl_801A35E0
/* 801A35D8  28 00 00 0A */	cmplwi r0, 0xa
/* 801A35DC  40 82 00 70 */	bne lbl_801A364C
lbl_801A35E0:
/* 801A35E0  7F C3 F3 78 */	mr r3, r30
/* 801A35E4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801A35E8  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 801A35EC  7D 89 03 A6 */	mtctr r12
/* 801A35F0  4E 80 04 21 */	bctrl 
/* 801A35F4  2C 03 00 00 */	cmpwi r3, 0
/* 801A35F8  40 82 00 38 */	bne lbl_801A3630
/* 801A35FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A3600  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 801A3604  80 85 5F 18 */	lwz r4, 0x5f18(r5)
/* 801A3608  3C 60 02 00 */	lis r3, 0x0200 /* 0x02000308@ha */
/* 801A360C  38 03 03 08 */	addi r0, r3, 0x0308 /* 0x02000308@l */
/* 801A3610  7C 80 00 39 */	and. r0, r4, r0
/* 801A3614  40 82 00 1C */	bne lbl_801A3630
/* 801A3618  80 05 5F 1C */	lwz r0, 0x5f1c(r5)
/* 801A361C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801A3620  40 82 00 10 */	bne lbl_801A3630
/* 801A3624  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 801A3628  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801A362C  41 82 00 20 */	beq lbl_801A364C
lbl_801A3630:
/* 801A3630  38 76 03 44 */	addi r3, r22, 0x344
/* 801A3634  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A3638  C0 42 A3 34 */	lfs f2, lit_6769(r2)
/* 801A363C  C0 62 A3 38 */	lfs f3, lit_6770(r2)
/* 801A3640  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A3644  48 0C C3 39 */	bl cLib_addCalc__FPfffff
/* 801A3648  48 00 00 E0 */	b lbl_801A3728
lbl_801A364C:
/* 801A364C  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A3650  28 00 00 09 */	cmplwi r0, 9
/* 801A3654  40 82 00 40 */	bne lbl_801A3694
/* 801A3658  7F C3 F3 78 */	mr r3, r30
/* 801A365C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801A3660  81 8C 02 8C */	lwz r12, 0x28c(r12)
/* 801A3664  7D 89 03 A6 */	mtctr r12
/* 801A3668  4E 80 04 21 */	bctrl 
/* 801A366C  C0 02 A3 3C */	lfs f0, lit_6771(r2)
/* 801A3670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3674  40 80 00 20 */	bge lbl_801A3694
/* 801A3678  38 76 03 44 */	addi r3, r22, 0x344
/* 801A367C  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A3680  C0 42 A2 64 */	lfs f2, lit_4730(r2)
/* 801A3684  C0 62 A2 68 */	lfs f3, lit_4731(r2)
/* 801A3688  C0 82 A3 40 */	lfs f4, lit_6772(r2)
/* 801A368C  48 0C C2 F1 */	bl cLib_addCalc__FPfffff
/* 801A3690  48 00 00 98 */	b lbl_801A3728
lbl_801A3694:
/* 801A3694  88 16 03 7A */	lbz r0, 0x37a(r22)
/* 801A3698  28 00 00 0A */	cmplwi r0, 0xa
/* 801A369C  40 82 00 40 */	bne lbl_801A36DC
/* 801A36A0  7F C3 F3 78 */	mr r3, r30
/* 801A36A4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 801A36A8  81 8C 02 8C */	lwz r12, 0x28c(r12)
/* 801A36AC  7D 89 03 A6 */	mtctr r12
/* 801A36B0  4E 80 04 21 */	bctrl 
/* 801A36B4  C0 02 A3 44 */	lfs f0, lit_6773(r2)
/* 801A36B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A36BC  40 80 00 20 */	bge lbl_801A36DC
/* 801A36C0  38 76 03 44 */	addi r3, r22, 0x344
/* 801A36C4  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A36C8  C0 42 A2 64 */	lfs f2, lit_4730(r2)
/* 801A36CC  C0 62 A2 68 */	lfs f3, lit_4731(r2)
/* 801A36D0  C0 82 A3 40 */	lfs f4, lit_6772(r2)
/* 801A36D4  48 0C C2 A9 */	bl cLib_addCalc__FPfffff
/* 801A36D8  48 00 00 50 */	b lbl_801A3728
lbl_801A36DC:
/* 801A36DC  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A36E0  41 82 00 20 */	beq lbl_801A3700
/* 801A36E4  C0 3F 12 38 */	lfs f1, 0x1238(r31)
/* 801A36E8  C0 1F 12 3C */	lfs f0, 0x123c(r31)
/* 801A36EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A36F0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801A36F4  EC 01 00 2A */	fadds f0, f1, f0
/* 801A36F8  D0 16 03 44 */	stfs f0, 0x344(r22)
/* 801A36FC  48 00 00 2C */	b lbl_801A3728
lbl_801A3700:
/* 801A3700  38 76 03 44 */	addi r3, r22, 0x344
/* 801A3704  C0 3F 12 38 */	lfs f1, 0x1238(r31)
/* 801A3708  C0 1F 12 3C */	lfs f0, 0x123c(r31)
/* 801A370C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A3710  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801A3714  EC 21 00 2A */	fadds f1, f1, f0
/* 801A3718  C0 42 A3 34 */	lfs f2, lit_6769(r2)
/* 801A371C  C0 62 A3 48 */	lfs f3, lit_6774(r2)
/* 801A3720  C0 82 A3 10 */	lfs f4, lit_6042(r2)
/* 801A3724  48 0C C2 59 */	bl cLib_addCalc__FPfffff
lbl_801A3728:
/* 801A3728  C0 36 03 44 */	lfs f1, 0x344(r22)
/* 801A372C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A3730  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A3734  40 81 00 08 */	ble lbl_801A373C
/* 801A3738  D0 16 03 44 */	stfs f0, 0x344(r22)
lbl_801A373C:
/* 801A373C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 801A3740  D0 16 00 00 */	stfs f0, 0(r22)
/* 801A3744  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 801A3748  D0 16 00 04 */	stfs f0, 4(r22)
/* 801A374C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 801A3750  D0 16 00 08 */	stfs f0, 8(r22)
/* 801A3754  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A3758  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A375C  C0 03 10 64 */	lfs f0, 0x1064(r3)
/* 801A3760  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 801A3764  C0 03 10 68 */	lfs f0, 0x1068(r3)
/* 801A3768  D0 16 00 10 */	stfs f0, 0x10(r22)
/* 801A376C  C0 03 10 6C */	lfs f0, 0x106c(r3)
/* 801A3770  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 801A3774  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A3778  D0 36 00 1C */	stfs f1, 0x1c(r22)
/* 801A377C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A3780  D0 16 00 20 */	stfs f0, 0x20(r22)
/* 801A3784  D0 16 00 24 */	stfs f0, 0x24(r22)
/* 801A3788  D0 36 00 28 */	stfs f1, 0x28(r22)
/* 801A378C  D0 16 00 2C */	stfs f0, 0x2c(r22)
/* 801A3790  D0 16 00 30 */	stfs f0, 0x30(r22)
lbl_801A3794:
/* 801A3794  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 801A3798  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 801A379C  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 801A37A0  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 801A37A4  E3 A1 01 38 */	psq_l f29, 312(r1), 0, 0 /* qr0 */
/* 801A37A8  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 801A37AC  39 61 01 30 */	addi r11, r1, 0x130
/* 801A37B0  48 1B EA 51 */	bl _restgpr_19
/* 801A37B4  80 01 01 64 */	lwz r0, 0x164(r1)
/* 801A37B8  7C 08 03 A6 */	mtlr r0
/* 801A37BC  38 21 01 60 */	addi r1, r1, 0x160
/* 801A37C0  4E 80 00 20 */	blr 
