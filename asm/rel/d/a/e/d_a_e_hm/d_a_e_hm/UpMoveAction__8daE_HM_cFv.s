lbl_806E20FC:
/* 806E20FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E2100  7C 08 02 A6 */	mflr r0
/* 806E2104  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E2108  39 61 00 40 */	addi r11, r1, 0x40
/* 806E210C  4B C8 00 D1 */	bl _savegpr_29
/* 806E2110  7C 7E 1B 78 */	mr r30, r3
/* 806E2114  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E2118  3B E3 59 20 */	addi r31, r3, lit_3791@l /* 0x806E5920@l */
/* 806E211C  A8 1E 05 D6 */	lha r0, 0x5d6(r30)
/* 806E2120  2C 00 00 01 */	cmpwi r0, 1
/* 806E2124  41 82 02 28 */	beq lbl_806E234C
/* 806E2128  40 80 02 D0 */	bge lbl_806E23F8
/* 806E212C  2C 00 00 00 */	cmpwi r0, 0
/* 806E2130  40 80 00 08 */	bge lbl_806E2138
/* 806E2134  48 00 02 C4 */	b lbl_806E23F8
lbl_806E2138:
/* 806E2138  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 806E213C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806E2140  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806E2144  38 80 00 00 */	li r4, 0
/* 806E2148  38 A0 10 00 */	li r5, 0x1000
/* 806E214C  4B B8 EA 45 */	bl cLib_chaseAngleS__FPsss
/* 806E2150  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806E2154  38 80 00 00 */	li r4, 0
/* 806E2158  38 A0 10 00 */	li r5, 0x1000
/* 806E215C  4B B8 EA 35 */	bl cLib_chaseAngleS__FPsss
/* 806E2160  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806E2164  38 80 00 00 */	li r4, 0
/* 806E2168  38 A0 10 00 */	li r5, 0x1000
/* 806E216C  4B B8 EA 25 */	bl cLib_chaseAngleS__FPsss
/* 806E2170  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 806E2174  38 80 00 00 */	li r4, 0
/* 806E2178  38 A0 10 00 */	li r5, 0x1000
/* 806E217C  4B B8 EA 15 */	bl cLib_chaseAngleS__FPsss
/* 806E2180  7F C3 F3 78 */	mr r3, r30
/* 806E2184  38 80 00 09 */	li r4, 9
/* 806E2188  38 A0 00 02 */	li r5, 2
/* 806E218C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E2190  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E2194  4B FF EC F9 */	bl SetAnm__8daE_HM_cFiiff
/* 806E2198  80 1E 07 40 */	lwz r0, 0x740(r30)
/* 806E219C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806E21A0  41 82 02 58 */	beq lbl_806E23F8
/* 806E21A4  7F C3 F3 78 */	mr r3, r30
/* 806E21A8  4B FF FA 81 */	bl Tyakuchi_Set__8daE_HM_cFv
/* 806E21AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070246@ha */
/* 806E21B0  38 03 02 46 */	addi r0, r3, 0x0246 /* 0x00070246@l */
/* 806E21B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 806E21B8  38 7E 06 30 */	addi r3, r30, 0x630
/* 806E21BC  38 81 00 20 */	addi r4, r1, 0x20
/* 806E21C0  38 A0 00 00 */	li r5, 0
/* 806E21C4  38 C0 FF FF */	li r6, -1
/* 806E21C8  81 9E 06 30 */	lwz r12, 0x630(r30)
/* 806E21CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E21D0  7D 89 03 A6 */	mtctr r12
/* 806E21D4  4E 80 04 21 */	bctrl 
/* 806E21D8  7F C3 F3 78 */	mr r3, r30
/* 806E21DC  38 80 00 0A */	li r4, 0xa
/* 806E21E0  38 A0 00 00 */	li r5, 0
/* 806E21E4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806E21E8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E21EC  4B FF EC A1 */	bl SetAnm__8daE_HM_cFiiff
/* 806E21F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E21F4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E21F8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E21FC  38 80 00 00 */	li r4, 0
/* 806E2200  90 81 00 08 */	stw r4, 8(r1)
/* 806E2204  38 00 FF FF */	li r0, -1
/* 806E2208  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E220C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E2210  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E2214  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E2218  38 80 00 00 */	li r4, 0
/* 806E221C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F7@ha */
/* 806E2220  38 A5 84 F7 */	addi r5, r5, 0x84F7 /* 0x000084F7@l */
/* 806E2224  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E2228  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E222C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806E2230  39 20 00 00 */	li r9, 0
/* 806E2234  39 40 00 FF */	li r10, 0xff
/* 806E2238  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E223C  4B 96 A8 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E2240  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E2244  38 80 00 00 */	li r4, 0
/* 806E2248  90 81 00 08 */	stw r4, 8(r1)
/* 806E224C  38 00 FF FF */	li r0, -1
/* 806E2250  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E2254  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E2258  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E225C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E2260  38 80 00 00 */	li r4, 0
/* 806E2264  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F8@ha */
/* 806E2268  38 A5 84 F8 */	addi r5, r5, 0x84F8 /* 0x000084F8@l */
/* 806E226C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E2270  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E2274  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806E2278  39 20 00 00 */	li r9, 0
/* 806E227C  39 40 00 FF */	li r10, 0xff
/* 806E2280  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E2284  4B 96 A8 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E2288  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806E5C24@ha */
/* 806E228C  38 63 5C 24 */	addi r3, r3, l_HIO@l /* 0x806E5C24@l */
/* 806E2290  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E2294  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E2298  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E229C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E22A0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E22A4  38 80 00 00 */	li r4, 0
/* 806E22A8  90 81 00 08 */	stw r4, 8(r1)
/* 806E22AC  38 00 FF FF */	li r0, -1
/* 806E22B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E22B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E22B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E22BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E22C0  38 80 00 00 */	li r4, 0
/* 806E22C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008699@ha */
/* 806E22C8  38 A5 86 99 */	addi r5, r5, 0x8699 /* 0x00008699@l */
/* 806E22CC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E22D0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E22D4  39 1E 05 CC */	addi r8, r30, 0x5cc
/* 806E22D8  39 21 00 24 */	addi r9, r1, 0x24
/* 806E22DC  39 40 00 FF */	li r10, 0xff
/* 806E22E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E22E4  4B 96 A7 AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E22E8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806E22EC  38 80 00 00 */	li r4, 0
/* 806E22F0  90 81 00 08 */	stw r4, 8(r1)
/* 806E22F4  38 00 FF FF */	li r0, -1
/* 806E22F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E22FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E2300  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E2304  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E2308  38 80 00 00 */	li r4, 0
/* 806E230C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000869A@ha */
/* 806E2310  38 A5 86 9A */	addi r5, r5, 0x869A /* 0x0000869A@l */
/* 806E2314  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 806E2318  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E231C  39 1E 05 CC */	addi r8, r30, 0x5cc
/* 806E2320  39 21 00 24 */	addi r9, r1, 0x24
/* 806E2324  39 40 00 FF */	li r10, 0xff
/* 806E2328  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E232C  4B 96 A7 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E2330  A8 7E 05 D6 */	lha r3, 0x5d6(r30)
/* 806E2334  38 03 00 01 */	addi r0, r3, 1
/* 806E2338  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 806E233C  80 1E 09 40 */	lwz r0, 0x940(r30)
/* 806E2340  60 00 00 01 */	ori r0, r0, 1
/* 806E2344  90 1E 09 40 */	stw r0, 0x940(r30)
/* 806E2348  48 00 00 B0 */	b lbl_806E23F8
lbl_806E234C:
/* 806E234C  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 806E2350  38 60 00 01 */	li r3, 1
/* 806E2354  88 04 00 11 */	lbz r0, 0x11(r4)
/* 806E2358  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E235C  40 82 00 18 */	bne lbl_806E2374
/* 806E2360  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E2364  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806E2368  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E236C  41 82 00 08 */	beq lbl_806E2374
/* 806E2370  38 60 00 00 */	li r3, 0
lbl_806E2374:
/* 806E2374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E2378  41 82 00 28 */	beq lbl_806E23A0
/* 806E237C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806E2380  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 806E2384  38 00 00 01 */	li r0, 1
/* 806E2388  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 806E238C  38 00 00 04 */	li r0, 4
/* 806E2390  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 806E2394  7F C3 F3 78 */	mr r3, r30
/* 806E2398  48 00 14 5D */	bl MemberClear__8daE_HM_cFv
/* 806E239C  48 00 00 5C */	b lbl_806E23F8
lbl_806E23A0:
/* 806E23A0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 806E23A4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806E23A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E23AC  40 81 00 28 */	ble lbl_806E23D4
/* 806E23B0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 806E23B4  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 806E23B8  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 806E23BC  3C 80 80 6E */	lis r4, l_HIO@ha /* 0x806E5C24@ha */
/* 806E23C0  38 84 5C 24 */	addi r4, r4, l_HIO@l /* 0x806E5C24@l */
/* 806E23C4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 806E23C8  EC 42 00 32 */	fmuls f2, f2, f0
/* 806E23CC  4B B8 E3 75 */	bl cLib_chaseF__FPfff
/* 806E23D0  48 00 00 28 */	b lbl_806E23F8
lbl_806E23D4:
/* 806E23D4  3C 60 80 6E */	lis r3, l_HIO@ha /* 0x806E5C24@ha */
/* 806E23D8  38 63 5C 24 */	addi r3, r3, l_HIO@l /* 0x806E5C24@l */
/* 806E23DC  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 806E23E0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 806E23E4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E23E8  EC 20 00 B2 */	fmuls f1, f0, f2
/* 806E23EC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806E23F0  EC 40 00 B2 */	fmuls f2, f0, f2
/* 806E23F4  4B B8 E3 4D */	bl cLib_chaseF__FPfff
lbl_806E23F8:
/* 806E23F8  39 61 00 40 */	addi r11, r1, 0x40
/* 806E23FC  4B C7 FE 2D */	bl _restgpr_29
/* 806E2400  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E2404  7C 08 03 A6 */	mtlr r0
/* 806E2408  38 21 00 40 */	addi r1, r1, 0x40
/* 806E240C  4E 80 00 20 */	blr 
