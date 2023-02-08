lbl_80BF22AC:
/* 80BF22AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF22B0  7C 08 02 A6 */	mflr r0
/* 80BF22B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF22B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BF22BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BF22C0  7C 7E 1B 78 */	mr r30, r3
/* 80BF22C4  3C 60 80 BF */	lis r3, lit_3647@ha /* 0x80BF2B48@ha */
/* 80BF22C8  3B E3 2B 48 */	addi r31, r3, lit_3647@l /* 0x80BF2B48@l */
/* 80BF22CC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80BF22D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BF22D4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BF22D8  4B 67 D7 A9 */	bl cLib_addCalc0__FPfff
/* 80BF22DC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF22E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BF22E4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF22E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF22EC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF22F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BF22F4  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80BF22F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF22FC  38 7E 06 1C */	addi r3, r30, 0x61c
/* 80BF2300  38 81 00 08 */	addi r4, r1, 8
/* 80BF2304  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BF2308  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80BF230C  4B 42 AE 01 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80BF2310  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 80BF2314  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 80BF2318  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80BF231C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80BF2320  54 00 18 38 */	slwi r0, r0, 3
/* 80BF2324  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BF2328  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BF232C  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BF2330  A8 1E 05 A4 */	lha r0, 0x5a4(r30)
/* 80BF2334  7C 00 0E 70 */	srawi r0, r0, 1
/* 80BF2338  7C 00 01 94 */	addze r0, r0
/* 80BF233C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF2340  7C 43 04 2E */	lfsx f2, r3, r0
/* 80BF2344  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80BF2348  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 80BF234C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BF2350  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BF2354  EC 41 00 2A */	fadds f2, f1, f0
/* 80BF2358  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF235C  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80BF2360  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF2364  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BF2368  EC 22 00 2A */	fadds f1, f2, f0
/* 80BF236C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BF2370  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80BF2374  4B 67 D6 C9 */	bl cLib_addCalc2__FPffff
/* 80BF2378  A8 7E 05 90 */	lha r3, 0x590(r30)
/* 80BF237C  38 03 00 01 */	addi r0, r3, 1
/* 80BF2380  B0 1E 05 90 */	sth r0, 0x590(r30)
/* 80BF2384  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80BF2388  7C 00 07 74 */	extsb r0, r0
/* 80BF238C  2C 00 00 01 */	cmpwi r0, 1
/* 80BF2390  40 82 00 38 */	bne lbl_80BF23C8
/* 80BF2394  A8 7E 05 90 */	lha r3, 0x590(r30)
/* 80BF2398  38 03 00 05 */	addi r0, r3, 5
/* 80BF239C  B0 1E 05 90 */	sth r0, 0x590(r30)
/* 80BF23A0  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80BF23A4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BF23A8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BF23AC  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80BF23B0  4B 67 D6 8D */	bl cLib_addCalc2__FPffff
/* 80BF23B4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF23B8  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BF23BC  7C 65 1B 78 */	mr r5, r3
/* 80BF23C0  4B 75 4C D1 */	bl PSVECAdd
/* 80BF23C4  48 00 00 54 */	b lbl_80BF2418
lbl_80BF23C8:
/* 80BF23C8  2C 00 00 02 */	cmpwi r0, 2
/* 80BF23CC  40 82 00 38 */	bne lbl_80BF2404
/* 80BF23D0  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80BF23D4  2C 00 00 00 */	cmpwi r0, 0
/* 80BF23D8  40 82 00 40 */	bne lbl_80BF2418
/* 80BF23DC  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 80BF23E0  38 80 7F 80 */	li r4, 0x7f80
/* 80BF23E4  38 A0 00 20 */	li r5, 0x20
/* 80BF23E8  38 C0 02 00 */	li r6, 0x200
/* 80BF23EC  4B 67 E2 1D */	bl cLib_addCalcAngleS2__FPssss
/* 80BF23F0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BF23F4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80BF23F8  7C 65 1B 78 */	mr r5, r3
/* 80BF23FC  4B 75 4C 95 */	bl PSVECAdd
/* 80BF2400  48 00 00 18 */	b lbl_80BF2418
lbl_80BF2404:
/* 80BF2404  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80BF2408  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80BF240C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BF2410  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BF2414  4B 67 D6 29 */	bl cLib_addCalc2__FPffff
lbl_80BF2418:
/* 80BF2418  A8 1E 05 90 */	lha r0, 0x590(r30)
/* 80BF241C  1C 00 01 F4 */	mulli r0, r0, 0x1f4
/* 80BF2420  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF2424  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BF2428  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BF242C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BF2430  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80BF2434  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF2438  FC 00 00 1E */	fctiwz f0, f0
/* 80BF243C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BF2440  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BF2444  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BF2448  A8 1E 05 90 */	lha r0, 0x590(r30)
/* 80BF244C  1C 00 02 58 */	mulli r0, r0, 0x258
/* 80BF2450  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BF2454  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BF2458  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80BF245C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BF2460  FC 00 00 1E */	fctiwz f0, f0
/* 80BF2464  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BF2468  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF246C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BF2470  38 7E 05 94 */	addi r3, r30, 0x594
/* 80BF2474  C0 3E 05 98 */	lfs f1, 0x598(r30)
/* 80BF2478  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80BF247C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BF2480  4B 67 D5 BD */	bl cLib_addCalc2__FPffff
/* 80BF2484  38 7E 05 98 */	addi r3, r30, 0x598
/* 80BF2488  A8 1E 05 92 */	lha r0, 0x592(r30)
/* 80BF248C  2C 00 00 00 */	cmpwi r0, 0
/* 80BF2490  41 82 00 0C */	beq lbl_80BF249C
/* 80BF2494  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80BF2498  48 00 00 08 */	b lbl_80BF24A0
lbl_80BF249C:
/* 80BF249C  C0 3F 00 08 */	lfs f1, 8(r31)
lbl_80BF24A0:
/* 80BF24A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80BF24A4  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80BF24A8  4B 67 D5 95 */	bl cLib_addCalc2__FPffff
/* 80BF24AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BF24B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BF24B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF24B8  7C 08 03 A6 */	mtlr r0
/* 80BF24BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF24C0  4E 80 00 20 */	blr 
