lbl_805D2520:
/* 805D2520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D2524  7C 08 02 A6 */	mflr r0
/* 805D2528  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D252C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D2530  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805D2534  7C 7E 1B 78 */	mr r30, r3
/* 805D2538  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805D253C  3B E4 CA 54 */	addi r31, r4, lit_3932@l /* 0x805DCA54@l */
/* 805D2540  80 03 06 84 */	lwz r0, 0x684(r3)
/* 805D2544  2C 00 00 01 */	cmpwi r0, 1
/* 805D2548  41 82 00 5C */	beq lbl_805D25A4
/* 805D254C  40 80 01 C8 */	bge lbl_805D2714
/* 805D2550  2C 00 00 00 */	cmpwi r0, 0
/* 805D2554  40 80 00 08 */	bge lbl_805D255C
/* 805D2558  48 00 01 BC */	b lbl_805D2714
lbl_805D255C:
/* 805D255C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D2560  D0 1E 07 F4 */	stfs f0, 0x7f4(r30)
/* 805D2564  88 9E 08 4F */	lbz r4, 0x84f(r30)
/* 805D2568  88 1E 08 4C */	lbz r0, 0x84c(r30)
/* 805D256C  1C 00 00 03 */	mulli r0, r0, 3
/* 805D2570  7C 04 02 14 */	add r0, r4, r0
/* 805D2574  54 00 10 3A */	slwi r0, r0, 2
/* 805D2578  3C 80 80 5E */	lis r4, Ds_HandAt_id@ha /* 0x805DD614@ha */
/* 805D257C  38 84 D6 14 */	addi r4, r4, Ds_HandAt_id@l /* 0x805DD614@l */
/* 805D2580  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D2584  38 A0 00 00 */	li r5, 0
/* 805D2588  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 805D258C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D2590  4B FF 95 39 */	bl setBck__8daB_DS_cFiUcff
/* 805D2594  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 805D2598  38 03 00 01 */	addi r0, r3, 1
/* 805D259C  90 1E 06 84 */	stw r0, 0x684(r30)
/* 805D25A0  48 00 01 74 */	b lbl_805D2714
lbl_805D25A4:
/* 805D25A4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D25A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805D25AC  FC 00 08 1E */	fctiwz f0, f1
/* 805D25B0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D25B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D25B8  2C 00 00 5A */	cmpwi r0, 0x5a
/* 805D25BC  40 81 01 00 */	ble lbl_805D26BC
/* 805D25C0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D25C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D25C8  2C 00 00 6E */	cmpwi r0, 0x6e
/* 805D25CC  40 80 00 F0 */	bge lbl_805D26BC
/* 805D25D0  38 80 00 00 */	li r4, 0
/* 805D25D4  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 805D25D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805D25DC  C0 1F 04 14 */	lfs f0, 0x414(r31)
/* 805D25E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D25E4  FC 00 00 1E */	fctiwz f0, f0
/* 805D25E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D25EC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805D25F0  38 63 00 07 */	addi r3, r3, 7
/* 805D25F4  C0 1E 07 F4 */	lfs f0, 0x7f4(r30)
/* 805D25F8  FC 00 00 1E */	fctiwz f0, f0
/* 805D25FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D2600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D2604  7C 00 18 00 */	cmpw r0, r3
/* 805D2608  40 80 00 28 */	bge lbl_805D2630
/* 805D260C  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805D2610  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805D2614  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D2618  3C 00 43 30 */	lis r0, 0x4330
/* 805D261C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D2620  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805D2624  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D2628  D0 1E 07 F4 */	stfs f0, 0x7f4(r30)
/* 805D262C  38 80 00 01 */	li r4, 1
lbl_805D2630:
/* 805D2630  88 1E 08 4C */	lbz r0, 0x84c(r30)
/* 805D2634  28 00 00 00 */	cmplwi r0, 0
/* 805D2638  40 82 00 44 */	bne lbl_805D267C
/* 805D263C  80 1E 2B B4 */	lwz r0, 0x2bb4(r30)
/* 805D2640  60 00 00 01 */	ori r0, r0, 1
/* 805D2644  90 1E 2B B4 */	stw r0, 0x2bb4(r30)
/* 805D2648  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D264C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D2650  FC 00 00 1E */	fctiwz f0, f0
/* 805D2654  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D2658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D265C  2C 00 00 64 */	cmpwi r0, 0x64
/* 805D2660  40 81 00 74 */	ble lbl_805D26D4
/* 805D2664  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D2668  41 82 00 6C */	beq lbl_805D26D4
/* 805D266C  7F C3 F3 78 */	mr r3, r30
/* 805D2670  38 80 00 02 */	li r4, 2
/* 805D2674  4B FF 9A E5 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D2678  48 00 00 5C */	b lbl_805D26D4
lbl_805D267C:
/* 805D267C  80 1E 2A 78 */	lwz r0, 0x2a78(r30)
/* 805D2680  60 00 00 01 */	ori r0, r0, 1
/* 805D2684  90 1E 2A 78 */	stw r0, 0x2a78(r30)
/* 805D2688  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D268C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D2690  FC 00 00 1E */	fctiwz f0, f0
/* 805D2694  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805D2698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D269C  2C 00 00 64 */	cmpwi r0, 0x64
/* 805D26A0  40 81 00 34 */	ble lbl_805D26D4
/* 805D26A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D26A8  41 82 00 2C */	beq lbl_805D26D4
/* 805D26AC  7F C3 F3 78 */	mr r3, r30
/* 805D26B0  38 80 00 01 */	li r4, 1
/* 805D26B4  4B FF 9A A5 */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D26B8  48 00 00 1C */	b lbl_805D26D4
lbl_805D26BC:
/* 805D26BC  80 1E 2A 78 */	lwz r0, 0x2a78(r30)
/* 805D26C0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D26C4  90 1E 2A 78 */	stw r0, 0x2a78(r30)
/* 805D26C8  80 1E 2B B4 */	lwz r0, 0x2bb4(r30)
/* 805D26CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D26D0  90 1E 2B B4 */	stw r0, 0x2bb4(r30)
lbl_805D26D4:
/* 805D26D4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D26D8  38 80 00 01 */	li r4, 1
/* 805D26DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D26E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D26E4  40 82 00 18 */	bne lbl_805D26FC
/* 805D26E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D26EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D26F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D26F4  41 82 00 08 */	beq lbl_805D26FC
/* 805D26F8  38 80 00 00 */	li r4, 0
lbl_805D26FC:
/* 805D26FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D2700  41 82 00 14 */	beq lbl_805D2714
/* 805D2704  7F C3 F3 78 */	mr r3, r30
/* 805D2708  38 80 00 00 */	li r4, 0
/* 805D270C  38 A0 00 00 */	li r5, 0
/* 805D2710  4B FF 94 65 */	bl setActionMode__8daB_DS_cFii
lbl_805D2714:
/* 805D2714  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D2718  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805D271C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D2720  7C 08 03 A6 */	mtlr r0
/* 805D2724  38 21 00 20 */	addi r1, r1, 0x20
/* 805D2728  4E 80 00 20 */	blr 
