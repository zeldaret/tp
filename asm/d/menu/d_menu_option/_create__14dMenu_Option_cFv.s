lbl_801E205C:
/* 801E205C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801E2060  7C 08 02 A6 */	mflr r0
/* 801E2064  90 01 00 64 */	stw r0, 0x64(r1)
/* 801E2068  39 61 00 60 */	addi r11, r1, 0x60
/* 801E206C  48 18 01 5D */	bl _savegpr_24
/* 801E2070  7C 7F 1B 78 */	mr r31, r3
/* 801E2074  3C 60 80 39 */	lis r3, dMo_soundMode@ha /* 0x80396EA8@ha */
/* 801E2078  3B C3 6E A8 */	addi r30, r3, dMo_soundMode@l /* 0x80396EA8@l */
/* 801E207C  4B E3 29 75 */	bl mDoExt_getMesgFont__Fv
/* 801E2080  90 7F 00 54 */	stw r3, 0x54(r31)
/* 801E2084  38 60 00 2C */	li r3, 0x2c
/* 801E2088  48 0E CB C5 */	bl __nw__FUl
/* 801E208C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2090  41 82 00 0C */	beq lbl_801E209C
/* 801E2094  48 06 7B 8D */	bl __ct__12dMsgString_cFv
/* 801E2098  7C 60 1B 78 */	mr r0, r3
lbl_801E209C:
/* 801E209C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 801E20A0  38 60 00 2C */	li r3, 0x2c
/* 801E20A4  48 0E CB A9 */	bl __nw__FUl
/* 801E20A8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E20AC  41 82 00 10 */	beq lbl_801E20BC
/* 801E20B0  38 80 00 03 */	li r4, 3
/* 801E20B4  48 02 8D D9 */	bl __ct__14dMeterHaihai_cFUc
/* 801E20B8  7C 60 1B 78 */	mr r0, r3
lbl_801E20BC:
/* 801E20BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801E20C0  38 00 00 00 */	li r0, 0
/* 801E20C4  98 1F 03 F6 */	stb r0, 0x3f6(r31)
/* 801E20C8  38 60 01 18 */	li r3, 0x118
/* 801E20CC  48 0E CB 81 */	bl __nw__FUl
/* 801E20D0  7C 60 1B 79 */	or. r0, r3, r3
/* 801E20D4  41 82 00 0C */	beq lbl_801E20E0
/* 801E20D8  48 11 63 C1 */	bl __ct__9J2DScreenFv
/* 801E20DC  7C 60 1B 78 */	mr r0, r3
lbl_801E20E0:
/* 801E20E0  90 1F 00 08 */	stw r0, 8(r31)
/* 801E20E4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E20E8  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E20EC  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E20F0  3C A0 00 02 */	lis r5, 2
/* 801E20F4  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E20F8  48 11 65 51 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E20FC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E2100  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F615F6E@ha */
/* 801E2104  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F615F6E@l */
/* 801E2108  3C 80 62 61 */	lis r4, 0x6261 /* 0x62617365@ha */
/* 801E210C  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x62617365@l */
/* 801E2110  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2114  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2118  7D 89 03 A6 */	mtctr r12
/* 801E211C  4E 80 04 21 */	bctrl 
/* 801E2120  38 00 00 00 */	li r0, 0
/* 801E2124  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E2128  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E212C  3C 80 74 5F */	lis r4, 0x745F /* 0x745F7034@ha */
/* 801E2130  38 C4 70 34 */	addi r6, r4, 0x7034 /* 0x745F7034@l */
/* 801E2134  3C 80 79 5F */	lis r4, 0x795F /* 0x795F7365@ha */
/* 801E2138  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x795F7365@l */
/* 801E213C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2140  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2144  7D 89 03 A6 */	mtctr r12
/* 801E2148  4E 80 04 21 */	bctrl 
/* 801E214C  38 00 00 00 */	li r0, 0
/* 801E2150  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E2154  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E2158  3C 80 74 5F */	lis r4, 0x745F /* 0x745F7033@ha */
/* 801E215C  38 C4 70 33 */	addi r6, r4, 0x7033 /* 0x745F7033@l */
/* 801E2160  3C 80 79 5F */	lis r4, 0x795F /* 0x795F7365@ha */
/* 801E2164  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x795F7365@l */
/* 801E2168  81 83 00 00 */	lwz r12, 0(r3)
/* 801E216C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2170  7D 89 03 A6 */	mtctr r12
/* 801E2174  4E 80 04 21 */	bctrl 
/* 801E2178  38 00 00 00 */	li r0, 0
/* 801E217C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E2180  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E2184  3C 80 74 5F */	lis r4, 0x745F /* 0x745F7032@ha */
/* 801E2188  38 C4 70 32 */	addi r6, r4, 0x7032 /* 0x745F7032@l */
/* 801E218C  3C 80 79 5F */	lis r4, 0x795F /* 0x795F7365@ha */
/* 801E2190  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x795F7365@l */
/* 801E2194  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2198  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E219C  7D 89 03 A6 */	mtctr r12
/* 801E21A0  4E 80 04 21 */	bctrl 
/* 801E21A4  38 00 00 00 */	li r0, 0
/* 801E21A8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E21AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E21B0  3C 80 74 5F */	lis r4, 0x745F /* 0x745F7031@ha */
/* 801E21B4  38 C4 70 31 */	addi r6, r4, 0x7031 /* 0x745F7031@l */
/* 801E21B8  3C 80 79 5F */	lis r4, 0x795F /* 0x795F7365@ha */
/* 801E21BC  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x795F7365@l */
/* 801E21C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E21C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E21C8  7D 89 03 A6 */	mtctr r12
/* 801E21CC  4E 80 04 21 */	bctrl 
/* 801E21D0  38 00 00 00 */	li r0, 0
/* 801E21D4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E21D8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E21DC  3C 80 74 5F */	lis r4, 0x745F /* 0x745F7030@ha */
/* 801E21E0  38 C4 70 30 */	addi r6, r4, 0x7030 /* 0x745F7030@l */
/* 801E21E4  3C 80 79 5F */	lis r4, 0x795F /* 0x795F7365@ha */
/* 801E21E8  38 A4 73 65 */	addi r5, r4, 0x7365 /* 0x795F7365@l */
/* 801E21EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E21F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E21F4  7D 89 03 A6 */	mtctr r12
/* 801E21F8  4E 80 04 21 */	bctrl 
/* 801E21FC  38 00 00 00 */	li r0, 0
/* 801E2200  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E2204  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E2208  3C 80 74 5F */	lis r4, 0x745F /* 0x745F7473@ha */
/* 801E220C  38 C4 74 73 */	addi r6, r4, 0x7473 /* 0x745F7473@l */
/* 801E2210  3C 80 00 63 */	lis r4, 0x0063 /* 0x00636F6E@ha */
/* 801E2214  38 A4 6F 6E */	addi r5, r4, 0x6F6E /* 0x00636F6E@l */
/* 801E2218  81 83 00 00 */	lwz r12, 0(r3)
/* 801E221C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2220  7D 89 03 A6 */	mtctr r12
/* 801E2224  4E 80 04 21 */	bctrl 
/* 801E2228  90 7F 02 54 */	stw r3, 0x254(r31)
/* 801E222C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801E2230  3C 80 6E 74 */	lis r4, 0x6E74 /* 0x6E745F74@ha */
/* 801E2234  38 C4 5F 74 */	addi r6, r4, 0x5F74 /* 0x6E745F74@l */
/* 801E2238  38 A0 63 6F */	li r5, 0x636f
/* 801E223C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2240  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2244  7D 89 03 A6 */	mtctr r12
/* 801E2248  4E 80 04 21 */	bctrl 
/* 801E224C  90 7F 02 58 */	stw r3, 0x258(r31)
/* 801E2250  3B 20 00 00 */	li r25, 0
/* 801E2254  3B 40 00 00 */	li r26, 0
/* 801E2258  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E225C  3B 63 75 D8 */	addi r27, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
lbl_801E2260:
/* 801E2260  4B E3 27 91 */	bl mDoExt_getMesgFont__Fv
/* 801E2264  7C 64 1B 78 */	mr r4, r3
/* 801E2268  3B 9A 02 54 */	addi r28, r26, 0x254
/* 801E226C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801E2270  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2274  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E2278  7D 89 03 A6 */	mtctr r12
/* 801E227C  4E 80 04 21 */	bctrl 
/* 801E2280  7C 7F E0 2E */	lwzx r3, r31, r28
/* 801E2284  38 80 00 20 */	li r4, 0x20
/* 801E2288  38 BB 00 1D */	addi r5, r27, 0x1d
/* 801E228C  4C C6 31 82 */	crclr 6
/* 801E2290  48 11 E4 BD */	bl setString__10J2DTextBoxFsPCce
/* 801E2294  3B 39 00 01 */	addi r25, r25, 1
/* 801E2298  2C 19 00 02 */	cmpwi r25, 2
/* 801E229C  3B 5A 00 04 */	addi r26, r26, 4
/* 801E22A0  41 80 FF C0 */	blt lbl_801E2260
/* 801E22A4  38 60 01 18 */	li r3, 0x118
/* 801E22A8  48 0E C9 A5 */	bl __nw__FUl
/* 801E22AC  7C 60 1B 79 */	or. r0, r3, r3
/* 801E22B0  41 82 00 0C */	beq lbl_801E22BC
/* 801E22B4  48 11 61 E5 */	bl __ct__9J2DScreenFv
/* 801E22B8  7C 60 1B 78 */	mr r0, r3
lbl_801E22BC:
/* 801E22BC  90 1F 00 04 */	stw r0, 4(r31)
/* 801E22C0  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E22C4  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E22C8  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E22CC  38 84 00 1E */	addi r4, r4, 0x1e
/* 801E22D0  3C A0 00 02 */	lis r5, 2
/* 801E22D4  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E22D8  48 11 63 71 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E22DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E22E0  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801E22E4  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801E22E8  3C 80 77 69 */	lis r4, 0x7769 /* 0x77695F62@ha */
/* 801E22EC  38 A4 5F 62 */	addi r5, r4, 0x5F62 /* 0x77695F62@l */
/* 801E22F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E22F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E22F8  7D 89 03 A6 */	mtctr r12
/* 801E22FC  4E 80 04 21 */	bctrl 
/* 801E2300  38 00 00 00 */	li r0, 0
/* 801E2304  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E2308  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E230C  3C 80 61 72 */	lis r4, 0x6172 /* 0x61726561@ha */
/* 801E2310  38 C4 65 61 */	addi r6, r4, 0x6561 /* 0x61726561@l */
/* 801E2314  3C 80 6C 65 */	lis r4, 0x6C65 /* 0x6C65745F@ha */
/* 801E2318  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x6C65745F@l */
/* 801E231C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2320  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2324  7D 89 03 A6 */	mtctr r12
/* 801E2328  4E 80 04 21 */	bctrl 
/* 801E232C  90 7F 02 7C */	stw r3, 0x27c(r31)
/* 801E2330  38 60 01 18 */	li r3, 0x118
/* 801E2334  48 0E C9 19 */	bl __nw__FUl
/* 801E2338  7C 60 1B 79 */	or. r0, r3, r3
/* 801E233C  41 82 00 0C */	beq lbl_801E2348
/* 801E2340  48 11 61 59 */	bl __ct__9J2DScreenFv
/* 801E2344  7C 60 1B 78 */	mr r0, r3
lbl_801E2348:
/* 801E2348  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801E234C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E2350  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E2354  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E2358  38 84 00 34 */	addi r4, r4, 0x34
/* 801E235C  3C A0 00 02 */	lis r5, 2
/* 801E2360  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E2364  48 11 62 E5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E2368  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E236C  48 07 2D 7D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E2370  38 00 00 01 */	li r0, 1
/* 801E2374  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E2378  98 03 01 00 */	stb r0, 0x100(r3)
/* 801E237C  38 60 01 18 */	li r3, 0x118
/* 801E2380  48 0E C8 CD */	bl __nw__FUl
/* 801E2384  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2388  41 82 00 0C */	beq lbl_801E2394
/* 801E238C  48 11 61 0D */	bl __ct__9J2DScreenFv
/* 801E2390  7C 60 1B 78 */	mr r0, r3
lbl_801E2394:
/* 801E2394  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801E2398  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801E239C  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E23A0  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E23A4  38 84 00 4F */	addi r4, r4, 0x4f
/* 801E23A8  3C A0 00 02 */	lis r5, 2
/* 801E23AC  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E23B0  48 11 62 99 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E23B4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801E23B8  48 07 2D 31 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E23BC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801E23C0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E5F35@ha */
/* 801E23C4  38 C4 5F 35 */	addi r6, r4, 0x5F35 /* 0x5F6E5F35@l */
/* 801E23C8  38 A0 6D 77 */	li r5, 0x6d77
/* 801E23CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E23D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E23D4  7D 89 03 A6 */	mtctr r12
/* 801E23D8  4E 80 04 21 */	bctrl 
/* 801E23DC  38 00 00 00 */	li r0, 0
/* 801E23E0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E23E4  38 60 01 18 */	li r3, 0x118
/* 801E23E8  48 0E C8 65 */	bl __nw__FUl
/* 801E23EC  7C 60 1B 79 */	or. r0, r3, r3
/* 801E23F0  41 82 00 0C */	beq lbl_801E23FC
/* 801E23F4  48 11 60 A5 */	bl __ct__9J2DScreenFv
/* 801E23F8  7C 60 1B 78 */	mr r0, r3
lbl_801E23FC:
/* 801E23FC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801E2400  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E2404  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E2408  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E240C  38 84 00 6C */	addi r4, r4, 0x6c
/* 801E2410  3C A0 00 02 */	lis r5, 2
/* 801E2414  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E2418  48 11 62 31 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E241C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E2420  48 07 2C C9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E2424  38 60 00 6C */	li r3, 0x6c
/* 801E2428  48 0E C8 25 */	bl __nw__FUl
/* 801E242C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2430  41 82 00 28 */	beq lbl_801E2458
/* 801E2434  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801E2438  3C A0 74 6E */	lis r5, 0x746E /* 0x746E5F6E@ha */
/* 801E243C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x746E5F6E@l */
/* 801E2440  3C A0 67 5F */	lis r5, 0x675F /* 0x675F6162@ha */
/* 801E2444  38 A5 61 62 */	addi r5, r5, 0x6162 /* 0x675F6162@l */
/* 801E2448  38 E0 00 00 */	li r7, 0
/* 801E244C  39 00 00 00 */	li r8, 0
/* 801E2450  48 07 15 35 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E2454  7C 60 1B 78 */	mr r0, r3
lbl_801E2458:
/* 801E2458  90 1F 02 14 */	stw r0, 0x214(r31)
/* 801E245C  38 60 00 6C */	li r3, 0x6c
/* 801E2460  48 0E C7 ED */	bl __nw__FUl
/* 801E2464  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2468  41 82 00 28 */	beq lbl_801E2490
/* 801E246C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801E2470  3C A0 78 74 */	lis r5, 0x7874 /* 0x78745F6E@ha */
/* 801E2474  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x78745F6E@l */
/* 801E2478  3C A0 61 5F */	lis r5, 0x615F /* 0x615F7465@ha */
/* 801E247C  38 A5 74 65 */	addi r5, r5, 0x7465 /* 0x615F7465@l */
/* 801E2480  38 E0 00 00 */	li r7, 0
/* 801E2484  39 00 00 00 */	li r8, 0
/* 801E2488  48 07 14 FD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E248C  7C 60 1B 78 */	mr r0, r3
lbl_801E2490:
/* 801E2490  90 1F 02 18 */	stw r0, 0x218(r31)
/* 801E2494  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801E2498  3C 80 74 6E */	lis r4, 0x746E /* 0x746E5F6E@ha */
/* 801E249C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x746E5F6E@l */
/* 801E24A0  3C 80 67 5F */	lis r4, 0x675F /* 0x675F6162@ha */
/* 801E24A4  38 A4 61 62 */	addi r5, r4, 0x6162 /* 0x675F6162@l */
/* 801E24A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E24AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E24B0  7D 89 03 A6 */	mtctr r12
/* 801E24B4  4E 80 04 21 */	bctrl 
/* 801E24B8  38 00 00 00 */	li r0, 0
/* 801E24BC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801E24C0  38 60 01 18 */	li r3, 0x118
/* 801E24C4  48 0E C7 89 */	bl __nw__FUl
/* 801E24C8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E24CC  41 82 00 0C */	beq lbl_801E24D8
/* 801E24D0  48 11 5F C9 */	bl __ct__9J2DScreenFv
/* 801E24D4  7C 60 1B 78 */	mr r0, r3
lbl_801E24D8:
/* 801E24D8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801E24DC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E24E0  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E24E4  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E24E8  38 84 00 83 */	addi r4, r4, 0x83
/* 801E24EC  3C A0 00 02 */	lis r5, 2
/* 801E24F0  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E24F4  48 11 61 55 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E24F8  38 60 00 00 */	li r3, 0
/* 801E24FC  38 80 00 00 */	li r4, 0
/* 801E2500  38 00 00 02 */	li r0, 2
/* 801E2504  7C 09 03 A6 */	mtctr r0
lbl_801E2508:
/* 801E2508  7C BF 1A 14 */	add r5, r31, r3
/* 801E250C  90 85 02 04 */	stw r4, 0x204(r5)
/* 801E2510  90 85 02 0C */	stw r4, 0x20c(r5)
/* 801E2514  38 63 00 04 */	addi r3, r3, 4
/* 801E2518  42 00 FF F0 */	bdnz lbl_801E2508
/* 801E251C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E2520  48 07 2B C9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E2524  38 00 00 00 */	li r0, 0
/* 801E2528  B0 1F 03 DC */	sth r0, 0x3dc(r31)
/* 801E252C  B0 1F 03 DE */	sth r0, 0x3de(r31)
/* 801E2530  3B 00 00 00 */	li r24, 0
/* 801E2534  3B 40 00 00 */	li r26, 0
/* 801E2538  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E253C  3B 63 75 D8 */	addi r27, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
lbl_801E2540:
/* 801E2540  4B E3 24 B1 */	bl mDoExt_getMesgFont__Fv
/* 801E2544  7C 7C 1B 78 */	mr r28, r3
/* 801E2548  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E254C  3B BE 00 10 */	addi r29, r30, 0x10
/* 801E2550  7F BD D2 14 */	add r29, r29, r26
/* 801E2554  80 BD 00 00 */	lwz r5, 0(r29)
/* 801E2558  80 DD 00 04 */	lwz r6, 4(r29)
/* 801E255C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2560  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2564  7D 89 03 A6 */	mtctr r12
/* 801E2568  4E 80 04 21 */	bctrl 
/* 801E256C  7F 84 E3 78 */	mr r4, r28
/* 801E2570  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2574  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E2578  7D 89 03 A6 */	mtctr r12
/* 801E257C  4E 80 04 21 */	bctrl 
/* 801E2580  4B E3 24 71 */	bl mDoExt_getMesgFont__Fv
/* 801E2584  7C 7C 1B 78 */	mr r28, r3
/* 801E2588  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E258C  3B 3E 00 38 */	addi r25, r30, 0x38
/* 801E2590  7F 39 D2 14 */	add r25, r25, r26
/* 801E2594  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E2598  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E259C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E25A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E25A4  7D 89 03 A6 */	mtctr r12
/* 801E25A8  4E 80 04 21 */	bctrl 
/* 801E25AC  7F 84 E3 78 */	mr r4, r28
/* 801E25B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E25B4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E25B8  7D 89 03 A6 */	mtctr r12
/* 801E25BC  4E 80 04 21 */	bctrl 
/* 801E25C0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E25C4  80 BD 00 00 */	lwz r5, 0(r29)
/* 801E25C8  80 DD 00 04 */	lwz r6, 4(r29)
/* 801E25CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E25D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E25D4  7D 89 03 A6 */	mtctr r12
/* 801E25D8  4E 80 04 21 */	bctrl 
/* 801E25DC  38 80 00 20 */	li r4, 0x20
/* 801E25E0  38 BB 00 1D */	addi r5, r27, 0x1d
/* 801E25E4  4C C6 31 82 */	crclr 6
/* 801E25E8  48 11 E1 65 */	bl setString__10J2DTextBoxFsPCce
/* 801E25EC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E25F0  80 B9 00 00 */	lwz r5, 0(r25)
/* 801E25F4  80 D9 00 04 */	lwz r6, 4(r25)
/* 801E25F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E25FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E2600  7D 89 03 A6 */	mtctr r12
/* 801E2604  4E 80 04 21 */	bctrl 
/* 801E2608  38 80 00 20 */	li r4, 0x20
/* 801E260C  38 BB 00 1D */	addi r5, r27, 0x1d
/* 801E2610  4C C6 31 82 */	crclr 6
/* 801E2614  48 11 E1 39 */	bl setString__10J2DTextBoxFsPCce
/* 801E2618  3B 18 00 01 */	addi r24, r24, 1
/* 801E261C  2C 18 00 05 */	cmpwi r24, 5
/* 801E2620  3B 5A 00 08 */	addi r26, r26, 8
/* 801E2624  41 80 FF 1C */	blt lbl_801E2540
/* 801E2628  7F E3 FB 78 */	mr r3, r31
/* 801E262C  38 80 04 0C */	li r4, 0x40c
/* 801E2630  48 00 58 69 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E2634  7F E3 FB 78 */	mr r3, r31
/* 801E2638  38 80 03 F9 */	li r4, 0x3f9
/* 801E263C  48 00 59 61 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E2640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E2644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E2648  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801E264C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801E2650  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801E2654  3C A0 80 39 */	lis r5, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E2658  38 A5 75 D8 */	addi r5, r5, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E265C  38 A5 00 A9 */	addi r5, r5, 0xa9
/* 801E2660  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2664  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801E2668  7D 89 03 A6 */	mtctr r12
/* 801E266C  4E 80 04 21 */	bctrl 
/* 801E2670  7C 78 1B 78 */	mr r24, r3
/* 801E2674  38 60 01 50 */	li r3, 0x150
/* 801E2678  48 0E C5 D5 */	bl __nw__FUl
/* 801E267C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2680  41 82 00 10 */	beq lbl_801E2690
/* 801E2684  7F 04 C3 78 */	mr r4, r24
/* 801E2688  48 11 A0 81 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801E268C  7C 60 1B 78 */	mr r0, r3
lbl_801E2690:
/* 801E2690  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801E2694  38 60 00 00 */	li r3, 0
/* 801E2698  98 61 00 18 */	stb r3, 0x18(r1)
/* 801E269C  98 61 00 19 */	stb r3, 0x19(r1)
/* 801E26A0  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801E26A4  38 00 00 FF */	li r0, 0xff
/* 801E26A8  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801E26AC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801E26B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E26B4  98 61 00 20 */	stb r3, 0x20(r1)
/* 801E26B8  98 61 00 21 */	stb r3, 0x21(r1)
/* 801E26BC  98 61 00 22 */	stb r3, 0x22(r1)
/* 801E26C0  98 61 00 23 */	stb r3, 0x23(r1)
/* 801E26C4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E26C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E26CC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801E26D0  38 81 00 24 */	addi r4, r1, 0x24
/* 801E26D4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801E26D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E26DC  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801E26E0  7D 89 03 A6 */	mtctr r12
/* 801E26E4  4E 80 04 21 */	bctrl 
/* 801E26E8  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801E26EC  38 80 00 00 */	li r4, 0
/* 801E26F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E26F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E26F8  7D 89 03 A6 */	mtctr r12
/* 801E26FC  4E 80 04 21 */	bctrl 
/* 801E2700  C0 02 A9 2C */	lfs f0, lit_4068(r2)
/* 801E2704  D0 1F 03 74 */	stfs f0, 0x374(r31)
/* 801E2708  38 60 00 40 */	li r3, 0x40
/* 801E270C  48 0E C5 41 */	bl __nw__FUl
/* 801E2710  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2714  41 82 00 14 */	beq lbl_801E2728
/* 801E2718  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 801E271C  38 A0 00 01 */	li r5, 1
/* 801E2720  4B FA F4 8D */	bl __ct__15dFile_warning_cFP10JKRArchiveUc
/* 801E2724  7C 60 1B 78 */	mr r0, r3
lbl_801E2728:
/* 801E2728  90 1F 00 34 */	stw r0, 0x34(r31)
/* 801E272C  38 00 00 C8 */	li r0, 0xc8
/* 801E2730  98 01 00 08 */	stb r0, 8(r1)
/* 801E2734  98 01 00 09 */	stb r0, 9(r1)
/* 801E2738  98 01 00 0A */	stb r0, 0xa(r1)
/* 801E273C  38 00 00 FF */	li r0, 0xff
/* 801E2740  98 01 00 0B */	stb r0, 0xb(r1)
/* 801E2744  80 01 00 08 */	lwz r0, 8(r1)
/* 801E2748  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E274C  38 00 00 00 */	li r0, 0
/* 801E2750  98 01 00 10 */	stb r0, 0x10(r1)
/* 801E2754  98 01 00 11 */	stb r0, 0x11(r1)
/* 801E2758  98 01 00 12 */	stb r0, 0x12(r1)
/* 801E275C  98 01 00 13 */	stb r0, 0x13(r1)
/* 801E2760  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E2764  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2768  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E276C  38 81 00 14 */	addi r4, r1, 0x14
/* 801E2770  38 A1 00 0C */	addi r5, r1, 0xc
/* 801E2774  4B FA FA CD */	bl setFontColor__15dFile_warning_cFQ28JUtility6TColorQ28JUtility6TColor
/* 801E2778  38 60 01 18 */	li r3, 0x118
/* 801E277C  48 0E C4 D1 */	bl __nw__FUl
/* 801E2780  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2784  41 82 00 0C */	beq lbl_801E2790
/* 801E2788  48 11 5D 11 */	bl __ct__9J2DScreenFv
/* 801E278C  7C 60 1B 78 */	mr r0, r3
lbl_801E2790:
/* 801E2790  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801E2794  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801E2798  3C 80 80 39 */	lis r4, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E279C  38 84 75 D8 */	addi r4, r4, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E27A0  38 84 00 B9 */	addi r4, r4, 0xb9
/* 801E27A4  3C A0 01 10 */	lis r5, 0x110
/* 801E27A8  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801E27AC  48 11 5E 9D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E27B0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801E27B4  48 07 29 35 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E27B8  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E27BC  38 63 75 D8 */	addi r3, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E27C0  38 63 00 DD */	addi r3, r3, 0xdd
/* 801E27C4  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 801E27C8  48 0F 1A A9 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801E27CC  7C 7A 1B 78 */	mr r26, r3
/* 801E27D0  48 12 62 9D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801E27D4  90 7F 00 24 */	stw r3, 0x24(r31)
/* 801E27D8  7F 43 D3 78 */	mr r3, r26
/* 801E27DC  48 12 62 91 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801E27E0  90 7F 00 28 */	stw r3, 0x28(r31)
/* 801E27E4  7F 43 D3 78 */	mr r3, r26
/* 801E27E8  48 12 62 85 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801E27EC  90 7F 00 20 */	stw r3, 0x20(r31)
/* 801E27F0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801E27F4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E27F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E27FC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E2800  7D 89 03 A6 */	mtctr r12
/* 801E2804  4E 80 04 21 */	bctrl 
/* 801E2808  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801E280C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E2810  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2814  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E2818  7D 89 03 A6 */	mtctr r12
/* 801E281C  4E 80 04 21 */	bctrl 
/* 801E2820  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801E2824  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E2828  81 83 00 00 */	lwz r12, 0(r3)
/* 801E282C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E2830  7D 89 03 A6 */	mtctr r12
/* 801E2834  4E 80 04 21 */	bctrl 
/* 801E2838  3B A0 00 00 */	li r29, 0
/* 801E283C  3B 40 00 00 */	li r26, 0
/* 801E2840  3B 60 00 00 */	li r27, 0
lbl_801E2844:
/* 801E2844  38 60 00 6C */	li r3, 0x6c
/* 801E2848  48 0E C4 05 */	bl __nw__FUl
/* 801E284C  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2850  41 82 00 28 */	beq lbl_801E2878
/* 801E2854  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E2858  38 1E 00 60 */	addi r0, r30, 0x60
/* 801E285C  7C C0 DA 14 */	add r6, r0, r27
/* 801E2860  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E2864  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E2868  38 E0 00 00 */	li r7, 0
/* 801E286C  39 00 00 00 */	li r8, 0
/* 801E2870  48 07 11 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E2874  7C 60 1B 78 */	mr r0, r3
lbl_801E2878:
/* 801E2878  7F 3F D2 14 */	add r25, r31, r26
/* 801E287C  90 19 01 DC */	stw r0, 0x1dc(r25)
/* 801E2880  38 60 00 6C */	li r3, 0x6c
/* 801E2884  48 0E C3 C9 */	bl __nw__FUl
/* 801E2888  7C 60 1B 79 */	or. r0, r3, r3
/* 801E288C  41 82 00 28 */	beq lbl_801E28B4
/* 801E2890  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E2894  38 1E 00 70 */	addi r0, r30, 0x70
/* 801E2898  7C C0 DA 14 */	add r6, r0, r27
/* 801E289C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E28A0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E28A4  38 E0 00 00 */	li r7, 0
/* 801E28A8  39 00 00 00 */	li r8, 0
/* 801E28AC  48 07 10 D9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E28B0  7C 60 1B 78 */	mr r0, r3
lbl_801E28B4:
/* 801E28B4  90 19 01 E4 */	stw r0, 0x1e4(r25)
/* 801E28B8  80 79 01 E4 */	lwz r3, 0x1e4(r25)
/* 801E28BC  83 83 00 04 */	lwz r28, 4(r3)
/* 801E28C0  4B E3 21 31 */	bl mDoExt_getMesgFont__Fv
/* 801E28C4  7C 64 1B 78 */	mr r4, r3
/* 801E28C8  7F 83 E3 78 */	mr r3, r28
/* 801E28CC  81 9C 00 00 */	lwz r12, 0(r28)
/* 801E28D0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E28D4  7D 89 03 A6 */	mtctr r12
/* 801E28D8  4E 80 04 21 */	bctrl 
/* 801E28DC  38 61 00 28 */	addi r3, r1, 0x28
/* 801E28E0  38 82 A9 28 */	la r4, l_msgNum2(r2) /* 80454328-_SDA2_BASE_ */
/* 801E28E4  7C 84 E8 AE */	lbzx r4, r4, r29
/* 801E28E8  4B E3 D7 D9 */	bl fopMsgM_messageGet__FPcUl
/* 801E28EC  80 79 01 E4 */	lwz r3, 0x1e4(r25)
/* 801E28F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E28F4  38 80 00 20 */	li r4, 0x20
/* 801E28F8  38 A1 00 28 */	addi r5, r1, 0x28
/* 801E28FC  4C C6 31 82 */	crclr 6
/* 801E2900  48 11 DE 4D */	bl setString__10J2DTextBoxFsPCce
/* 801E2904  3B BD 00 01 */	addi r29, r29, 1
/* 801E2908  2C 1D 00 02 */	cmpwi r29, 2
/* 801E290C  3B 5A 00 04 */	addi r26, r26, 4
/* 801E2910  3B 7B 00 08 */	addi r27, r27, 8
/* 801E2914  41 80 FF 30 */	blt lbl_801E2844
/* 801E2918  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E291C  38 63 75 D8 */	addi r3, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E2920  38 63 01 01 */	addi r3, r3, 0x101
/* 801E2924  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 801E2928  48 0F 19 49 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801E292C  48 12 61 41 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801E2930  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 801E2934  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801E2938  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E293C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2940  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E2944  7D 89 03 A6 */	mtctr r12
/* 801E2948  4E 80 04 21 */	bctrl 
/* 801E294C  38 00 00 00 */	li r0, 0
/* 801E2950  90 1F 03 C0 */	stw r0, 0x3c0(r31)
/* 801E2954  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E2958  38 63 75 D8 */	addi r3, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
/* 801E295C  38 63 01 25 */	addi r3, r3, 0x125
/* 801E2960  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 801E2964  48 0F 19 0D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 801E2968  48 12 61 05 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 801E296C  90 7F 00 30 */	stw r3, 0x30(r31)
/* 801E2970  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801E2974  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E2978  81 83 00 00 */	lwz r12, 0(r3)
/* 801E297C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E2980  7D 89 03 A6 */	mtctr r12
/* 801E2984  4E 80 04 21 */	bctrl 
/* 801E2988  38 00 00 00 */	li r0, 0
/* 801E298C  90 1F 03 C4 */	stw r0, 0x3c4(r31)
/* 801E2990  3B 80 00 00 */	li r28, 0
/* 801E2994  3B 60 00 00 */	li r27, 0
/* 801E2998  3B 40 00 00 */	li r26, 0
lbl_801E299C:
/* 801E299C  38 60 00 6C */	li r3, 0x6c
/* 801E29A0  48 0E C2 AD */	bl __nw__FUl
/* 801E29A4  7C 60 1B 79 */	or. r0, r3, r3
/* 801E29A8  41 82 00 28 */	beq lbl_801E29D0
/* 801E29AC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E29B0  38 1E 00 80 */	addi r0, r30, 0x80
/* 801E29B4  7C C0 D2 14 */	add r6, r0, r26
/* 801E29B8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E29BC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E29C0  38 E0 00 00 */	li r7, 0
/* 801E29C4  39 00 00 00 */	li r8, 0
/* 801E29C8  48 07 0F BD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E29CC  7C 60 1B 78 */	mr r0, r3
lbl_801E29D0:
/* 801E29D0  7F BF DA 14 */	add r29, r31, r27
/* 801E29D4  90 1D 01 EC */	stw r0, 0x1ec(r29)
/* 801E29D8  38 60 00 6C */	li r3, 0x6c
/* 801E29DC  48 0E C2 71 */	bl __nw__FUl
/* 801E29E0  7C 60 1B 79 */	or. r0, r3, r3
/* 801E29E4  41 82 00 28 */	beq lbl_801E2A0C
/* 801E29E8  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E29EC  38 1E 00 90 */	addi r0, r30, 0x90
/* 801E29F0  7C C0 D2 14 */	add r6, r0, r26
/* 801E29F4  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E29F8  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E29FC  38 E0 00 00 */	li r7, 0
/* 801E2A00  39 00 00 00 */	li r8, 0
/* 801E2A04  48 07 0F 81 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E2A08  7C 60 1B 78 */	mr r0, r3
lbl_801E2A0C:
/* 801E2A0C  90 1D 01 F4 */	stw r0, 0x1f4(r29)
/* 801E2A10  38 60 00 6C */	li r3, 0x6c
/* 801E2A14  48 0E C2 39 */	bl __nw__FUl
/* 801E2A18  7C 60 1B 79 */	or. r0, r3, r3
/* 801E2A1C  41 82 00 28 */	beq lbl_801E2A44
/* 801E2A20  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801E2A24  38 1E 00 A0 */	addi r0, r30, 0xa0
/* 801E2A28  7C C0 D2 14 */	add r6, r0, r26
/* 801E2A2C  80 A6 00 00 */	lwz r5, 0(r6)
/* 801E2A30  80 C6 00 04 */	lwz r6, 4(r6)
/* 801E2A34  38 E0 00 00 */	li r7, 0
/* 801E2A38  39 00 00 00 */	li r8, 0
/* 801E2A3C  48 07 0F 49 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801E2A40  7C 60 1B 78 */	mr r0, r3
lbl_801E2A44:
/* 801E2A44  90 1D 01 FC */	stw r0, 0x1fc(r29)
/* 801E2A48  80 7D 01 EC */	lwz r3, 0x1ec(r29)
/* 801E2A4C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E2A50  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801E2A54  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2A58  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801E2A5C  7D 89 03 A6 */	mtctr r12
/* 801E2A60  4E 80 04 21 */	bctrl 
/* 801E2A64  80 7D 01 F4 */	lwz r3, 0x1f4(r29)
/* 801E2A68  80 63 00 04 */	lwz r3, 4(r3)
/* 801E2A6C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801E2A70  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2A74  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801E2A78  7D 89 03 A6 */	mtctr r12
/* 801E2A7C  4E 80 04 21 */	bctrl 
/* 801E2A80  80 7D 01 FC */	lwz r3, 0x1fc(r29)
/* 801E2A84  80 63 00 04 */	lwz r3, 4(r3)
/* 801E2A88  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 801E2A8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2A90  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801E2A94  7D 89 03 A6 */	mtctr r12
/* 801E2A98  4E 80 04 21 */	bctrl 
/* 801E2A9C  80 7D 01 F4 */	lwz r3, 0x1f4(r29)
/* 801E2AA0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E2AA4  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801E2AA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2AAC  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801E2AB0  7D 89 03 A6 */	mtctr r12
/* 801E2AB4  4E 80 04 21 */	bctrl 
/* 801E2AB8  80 7D 01 FC */	lwz r3, 0x1fc(r29)
/* 801E2ABC  80 63 00 04 */	lwz r3, 4(r3)
/* 801E2AC0  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801E2AC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2AC8  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801E2ACC  7D 89 03 A6 */	mtctr r12
/* 801E2AD0  4E 80 04 21 */	bctrl 
/* 801E2AD4  3B 9C 00 01 */	addi r28, r28, 1
/* 801E2AD8  2C 1C 00 02 */	cmpwi r28, 2
/* 801E2ADC  3B 7B 00 04 */	addi r27, r27, 4
/* 801E2AE0  3B 5A 00 08 */	addi r26, r26, 8
/* 801E2AE4  41 80 FE B8 */	blt lbl_801E299C
/* 801E2AE8  38 60 00 00 */	li r3, 0
/* 801E2AEC  98 7F 03 F9 */	stb r3, 0x3f9(r31)
/* 801E2AF0  98 7F 03 FA */	stb r3, 0x3fa(r31)
/* 801E2AF4  38 00 00 FF */	li r0, 0xff
/* 801E2AF8  98 1F 04 01 */	stb r0, 0x401(r31)
/* 801E2AFC  98 1F 04 02 */	stb r0, 0x402(r31)
/* 801E2B00  38 A0 00 00 */	li r5, 0
/* 801E2B04  38 00 00 02 */	li r0, 2
/* 801E2B08  7C 09 03 A6 */	mtctr r0
lbl_801E2B0C:
/* 801E2B0C  7C 9F 2A 14 */	add r4, r31, r5
/* 801E2B10  98 64 03 FB */	stb r3, 0x3fb(r4)
/* 801E2B14  98 64 03 FD */	stb r3, 0x3fd(r4)
/* 801E2B18  98 64 03 FF */	stb r3, 0x3ff(r4)
/* 801E2B1C  38 A5 00 01 */	addi r5, r5, 1
/* 801E2B20  42 00 FF EC */	bdnz lbl_801E2B0C
/* 801E2B24  38 00 00 00 */	li r0, 0
/* 801E2B28  98 1F 04 03 */	stb r0, 0x403(r31)
/* 801E2B2C  7F E3 FB 78 */	mr r3, r31
/* 801E2B30  48 00 2B 49 */	bl screenSet__14dMenu_Option_cFv
/* 801E2B34  38 80 00 00 */	li r4, 0
/* 801E2B38  98 9F 03 E0 */	stb r4, 0x3e0(r31)
/* 801E2B3C  38 00 00 0A */	li r0, 0xa
/* 801E2B40  98 1F 03 E1 */	stb r0, 0x3e1(r31)
/* 801E2B44  38 60 00 FF */	li r3, 0xff
/* 801E2B48  98 7F 03 E2 */	stb r3, 0x3e2(r31)
/* 801E2B4C  38 00 00 C0 */	li r0, 0xc0
/* 801E2B50  98 1F 03 E3 */	stb r0, 0x3e3(r31)
/* 801E2B54  98 9F 03 EF */	stb r4, 0x3ef(r31)
/* 801E2B58  98 7F 03 F0 */	stb r3, 0x3f0(r31)
/* 801E2B5C  98 7F 03 F1 */	stb r3, 0x3f1(r31)
/* 801E2B60  98 9F 03 F2 */	stb r4, 0x3f2(r31)
/* 801E2B64  98 9F 03 F5 */	stb r4, 0x3f5(r31)
/* 801E2B68  38 00 00 05 */	li r0, 5
/* 801E2B6C  98 1F 03 F3 */	stb r0, 0x3f3(r31)
/* 801E2B70  98 1F 03 F4 */	stb r0, 0x3f4(r31)
/* 801E2B74  C0 02 A9 2C */	lfs f0, lit_4068(r2)
/* 801E2B78  D0 1F 03 34 */	stfs f0, 0x334(r31)
/* 801E2B7C  D0 1F 03 30 */	stfs f0, 0x330(r31)
/* 801E2B80  C0 02 A9 30 */	lfs f0, lit_4069(r2)
/* 801E2B84  D0 1F 03 38 */	stfs f0, 0x338(r31)
/* 801E2B88  98 9F 03 F7 */	stb r4, 0x3f7(r31)
/* 801E2B8C  7F E3 FB 78 */	mr r3, r31
/* 801E2B90  38 80 00 01 */	li r4, 1
/* 801E2B94  48 00 51 CD */	bl setZButtonString__14dMenu_Option_cFUs
/* 801E2B98  C0 22 A9 2C */	lfs f1, lit_4068(r2)
/* 801E2B9C  D0 3F 03 78 */	stfs f1, 0x378(r31)
/* 801E2BA0  D0 3F 03 7C */	stfs f1, 0x37c(r31)
/* 801E2BA4  C0 02 A9 30 */	lfs f0, lit_4069(r2)
/* 801E2BA8  D0 1F 03 80 */	stfs f0, 0x380(r31)
/* 801E2BAC  38 60 00 00 */	li r3, 0
/* 801E2BB0  38 00 00 06 */	li r0, 6
/* 801E2BB4  7C 09 03 A6 */	mtctr r0
lbl_801E2BB8:
/* 801E2BB8  7C 9F 1A 14 */	add r4, r31, r3
/* 801E2BBC  D0 24 03 84 */	stfs f1, 0x384(r4)
/* 801E2BC0  D0 24 03 9C */	stfs f1, 0x39c(r4)
/* 801E2BC4  38 63 00 04 */	addi r3, r3, 4
/* 801E2BC8  42 00 FF F0 */	bdnz lbl_801E2BB8
/* 801E2BCC  38 00 00 FF */	li r0, 0xff
/* 801E2BD0  98 1F 03 B8 */	stb r0, 0x3b8(r31)
/* 801E2BD4  98 1F 03 B9 */	stb r0, 0x3b9(r31)
/* 801E2BD8  98 1F 03 BA */	stb r0, 0x3ba(r31)
/* 801E2BDC  98 1F 03 BB */	stb r0, 0x3bb(r31)
/* 801E2BE0  98 1F 03 BC */	stb r0, 0x3bc(r31)
/* 801E2BE4  98 1F 03 BD */	stb r0, 0x3bd(r31)
/* 801E2BE8  98 1F 03 BE */	stb r0, 0x3be(r31)
/* 801E2BEC  98 1F 03 BF */	stb r0, 0x3bf(r31)
/* 801E2BF0  7F E3 FB 78 */	mr r3, r31
/* 801E2BF4  48 00 56 1D */	bl initialize__14dMenu_Option_cFv
/* 801E2BF8  7F E3 FB 78 */	mr r3, r31
/* 801E2BFC  38 80 00 01 */	li r4, 1
/* 801E2C00  48 00 4C B9 */	bl setHIO__14dMenu_Option_cFb
/* 801E2C04  39 61 00 60 */	addi r11, r1, 0x60
/* 801E2C08  48 17 F6 0D */	bl _restgpr_24
/* 801E2C0C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801E2C10  7C 08 03 A6 */	mtlr r0
/* 801E2C14  38 21 00 60 */	addi r1, r1, 0x60
/* 801E2C18  4E 80 00 20 */	blr 
