lbl_801D2100:
/* 801D2100  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801D2104  7C 08 02 A6 */	mflr r0
/* 801D2108  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801D210C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801D2110  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 801D2114  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801D2118  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 801D211C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801D2120  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 801D2124  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 801D2128  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 801D212C  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 801D2130  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 801D2134  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 801D2138  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 801D213C  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 801D2140  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 801D2144  39 61 00 40 */	addi r11, r1, 0x40
/* 801D2148  48 19 00 8D */	bl _savegpr_27
/* 801D214C  7C 7B 1B 78 */	mr r27, r3
/* 801D2150  7C 9C 23 78 */	mr r28, r4
/* 801D2154  FF 20 08 90 */	fmr f25, f1
/* 801D2158  FF 60 10 90 */	fmr f27, f2
/* 801D215C  FF 80 18 90 */	fmr f28, f3
/* 801D2160  7C BD 2B 78 */	mr r29, r5
/* 801D2164  7C DE 33 78 */	mr r30, r6
/* 801D2168  C3 E3 0F A0 */	lfs f31, 0xfa0(r3)
/* 801D216C  3B E0 00 01 */	li r31, 1
/* 801D2170  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801D2174  28 00 00 11 */	cmplwi r0, 0x11
/* 801D2178  40 82 01 E0 */	bne lbl_801D2358
/* 801D217C  3B E0 00 02 */	li r31, 2
/* 801D2180  48 00 07 51 */	bl getMapScissorAreaCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D2184  FF 40 08 90 */	fmr f26, f1
/* 801D2188  7F 63 DB 78 */	mr r3, r27
/* 801D218C  48 00 06 F5 */	bl getMapScissorAreaCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D2190  7F 63 DB 78 */	mr r3, r27
/* 801D2194  FC 40 D0 90 */	fmr f2, f26
/* 801D2198  38 81 00 14 */	addi r4, r1, 0x14
/* 801D219C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D21A0  4B FF ED DD */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D21A4  7F 63 DB 78 */	mr r3, r27
/* 801D21A8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801D21AC  C0 1B 0F C8 */	lfs f0, 0xfc8(r27)
/* 801D21B0  EC 21 00 2A */	fadds f1, f1, f0
/* 801D21B4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801D21B8  C0 1B 0F CC */	lfs f0, 0xfcc(r27)
/* 801D21BC  EC 42 00 2A */	fadds f2, f2, f0
/* 801D21C0  38 81 00 0C */	addi r4, r1, 0xc
/* 801D21C4  38 A1 00 08 */	addi r5, r1, 8
/* 801D21C8  4B FF EB 51 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D21CC  7F 63 DB 78 */	mr r3, r27
/* 801D21D0  48 00 06 B1 */	bl getMapScissorAreaCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D21D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801D21D8  EF C1 00 28 */	fsubs f30, f1, f0
/* 801D21DC  7F 63 DB 78 */	mr r3, r27
/* 801D21E0  48 00 06 F1 */	bl getMapScissorAreaCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D21E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801D21E8  EF A1 00 28 */	fsubs f29, f1, f0
/* 801D21EC  4B E5 CC 75 */	bl dComIfGp_getNowLevel__Fv
/* 801D21F0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801D21F4  88 7B 12 27 */	lbz r3, 0x1227(r27)
/* 801D21F8  38 03 00 01 */	addi r0, r3, 1
/* 801D21FC  7C 00 20 00 */	cmpw r0, r4
/* 801D2200  40 82 00 94 */	bne lbl_801D2294
/* 801D2204  7F 63 DB 78 */	mr r3, r27
/* 801D2208  C0 1B 0F C8 */	lfs f0, 0xfc8(r27)
/* 801D220C  EC 39 00 28 */	fsubs f1, f25, f0
/* 801D2210  C0 1B 0F CC */	lfs f0, 0xfcc(r27)
/* 801D2214  EC 5B 00 28 */	fsubs f2, f27, f0
/* 801D2218  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D221C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D2220  4B FF EA F9 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D2224  88 1B 12 27 */	lbz r0, 0x1227(r27)
/* 801D2228  54 00 10 3A */	slwi r0, r0, 2
/* 801D222C  7C 7B 02 14 */	add r3, r27, r0
/* 801D2230  C0 23 0E AC */	lfs f1, 0xeac(r3)
/* 801D2234  C0 03 0F 2C */	lfs f0, 0xf2c(r3)
/* 801D2238  EC 01 00 2A */	fadds f0, f1, f0
/* 801D223C  EC 3D 00 2A */	fadds f1, f29, f0
/* 801D2240  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D2244  C0 9B 0F 9C */	lfs f4, 0xf9c(r27)
/* 801D2248  EC 00 01 32 */	fmuls f0, f0, f4
/* 801D224C  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D2250  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801D2254  EC A1 00 2A */	fadds f5, f1, f0
/* 801D2258  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801D225C  C0 23 0E 8C */	lfs f1, 0xe8c(r3)
/* 801D2260  C0 03 0F 0C */	lfs f0, 0xf0c(r3)
/* 801D2264  EC 01 00 2A */	fadds f0, f1, f0
/* 801D2268  EC 3E 00 2A */	fadds f1, f30, f0
/* 801D226C  C0 03 0E CC */	lfs f0, 0xecc(r3)
/* 801D2270  EC 00 01 32 */	fmuls f0, f0, f4
/* 801D2274  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801D2278  EC 01 00 2A */	fadds f0, f1, f0
/* 801D227C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D2280  D0 1B 11 E8 */	stfs f0, 0x11e8(r27)
/* 801D2284  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801D2288  EC 00 28 28 */	fsubs f0, f0, f5
/* 801D228C  D0 1B 11 EC */	stfs f0, 0x11ec(r27)
/* 801D2290  48 00 00 E4 */	b lbl_801D2374
lbl_801D2294:
/* 801D2294  4B E5 CB CD */	bl dComIfGp_getNowLevel__Fv
/* 801D2298  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801D229C  7C 7B 02 14 */	add r3, r27, r0
/* 801D22A0  C0 23 0E C8 */	lfs f1, 0xec8(r3)
/* 801D22A4  C0 1B 0F 9C */	lfs f0, 0xf9c(r27)
/* 801D22A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D22AC  C0 02 A7 E8 */	lfs f0, lit_4202(r2)
/* 801D22B0  EF 41 00 32 */	fmuls f26, f1, f0
/* 801D22B4  4B E5 CB AD */	bl dComIfGp_getNowLevel__Fv
/* 801D22B8  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801D22BC  7C 7B 02 14 */	add r3, r27, r0
/* 801D22C0  C3 63 0F 08 */	lfs f27, 0xf08(r3)
/* 801D22C4  4B E5 CB 9D */	bl dComIfGp_getNowLevel__Fv
/* 801D22C8  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801D22CC  7C 7B 02 14 */	add r3, r27, r0
/* 801D22D0  C0 03 0E 88 */	lfs f0, 0xe88(r3)
/* 801D22D4  EC 00 D8 2A */	fadds f0, f0, f27
/* 801D22D8  EC 1E 00 2A */	fadds f0, f30, f0
/* 801D22DC  EF 40 D0 2A */	fadds f26, f0, f26
/* 801D22E0  4B E5 CB 81 */	bl dComIfGp_getNowLevel__Fv
/* 801D22E4  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801D22E8  7C 7B 02 14 */	add r3, r27, r0
/* 801D22EC  C0 23 0E E8 */	lfs f1, 0xee8(r3)
/* 801D22F0  C0 1B 0F 9C */	lfs f0, 0xf9c(r27)
/* 801D22F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D22F8  C0 02 A7 E8 */	lfs f0, lit_4202(r2)
/* 801D22FC  EF 61 00 32 */	fmuls f27, f1, f0
/* 801D2300  4B E5 CB 61 */	bl dComIfGp_getNowLevel__Fv
/* 801D2304  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801D2308  7C 7B 02 14 */	add r3, r27, r0
/* 801D230C  C3 C3 0F 28 */	lfs f30, 0xf28(r3)
/* 801D2310  4B E5 CB 51 */	bl dComIfGp_getNowLevel__Fv
/* 801D2314  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801D2318  7C 7B 02 14 */	add r3, r27, r0
/* 801D231C  C0 03 0E A8 */	lfs f0, 0xea8(r3)
/* 801D2320  EC 00 F0 2A */	fadds f0, f0, f30
/* 801D2324  EC 1D 00 2A */	fadds f0, f29, f0
/* 801D2328  EC 40 D8 2A */	fadds f2, f0, f27
/* 801D232C  C0 3B 11 E8 */	lfs f1, 0x11e8(r27)
/* 801D2330  C0 1B 0F 9C */	lfs f0, 0xf9c(r27)
/* 801D2334  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D2338  EC 1A 00 2A */	fadds f0, f26, f0
/* 801D233C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801D2340  C0 3B 11 EC */	lfs f1, 0x11ec(r27)
/* 801D2344  C0 1B 0F 9C */	lfs f0, 0xf9c(r27)
/* 801D2348  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D234C  EC 02 00 2A */	fadds f0, f2, f0
/* 801D2350  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D2354  48 00 00 20 */	b lbl_801D2374
lbl_801D2358:
/* 801D2358  C0 1B 0F C8 */	lfs f0, 0xfc8(r27)
/* 801D235C  EC 39 00 28 */	fsubs f1, f25, f0
/* 801D2360  C0 1B 0F CC */	lfs f0, 0xfcc(r27)
/* 801D2364  EC 5B 00 28 */	fsubs f2, f27, f0
/* 801D2368  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D236C  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D2370  4B FF E9 A9 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
lbl_801D2374:
/* 801D2374  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801D2378  40 82 00 54 */	bne lbl_801D23CC
/* 801D237C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801D2380  28 00 00 01 */	cmplwi r0, 1
/* 801D2384  40 82 00 18 */	bne lbl_801D239C
/* 801D2388  C0 22 A7 E8 */	lfs f1, lit_4202(r2)
/* 801D238C  C0 1B 0F A0 */	lfs f0, 0xfa0(r27)
/* 801D2390  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D2394  EF E1 00 2A */	fadds f31, f1, f0
/* 801D2398  3B E0 00 02 */	li r31, 2
lbl_801D239C:
/* 801D239C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801D23A0  41 82 00 08 */	beq lbl_801D23A8
/* 801D23A4  3B E0 00 03 */	li r31, 3
lbl_801D23A8:
/* 801D23A8  38 7B 00 04 */	addi r3, r27, 4
/* 801D23AC  7F 84 E3 78 */	mr r4, r28
/* 801D23B0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801D23B4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801D23B8  C0 62 A7 D4 */	lfs f3, lit_3971(r2)
/* 801D23BC  FC 80 E0 90 */	fmr f4, f28
/* 801D23C0  FC A0 F8 90 */	fmr f5, f31
/* 801D23C4  7F E5 FB 78 */	mr r5, r31
/* 801D23C8  4B FF 1F E1 */	bl setIconInfo__16dMenuMapCommon_cFUcfffffUc
lbl_801D23CC:
/* 801D23CC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801D23D0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801D23D4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 801D23D8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801D23DC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 801D23E0  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801D23E4  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 801D23E8  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 801D23EC  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 801D23F0  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 801D23F4  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 801D23F8  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 801D23FC  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 801D2400  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 801D2404  39 61 00 40 */	addi r11, r1, 0x40
/* 801D2408  48 18 FE 19 */	bl _restgpr_27
/* 801D240C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801D2410  7C 08 03 A6 */	mtlr r0
/* 801D2414  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801D2418  4E 80 00 20 */	blr 
