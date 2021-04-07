lbl_805E23E8:
/* 805E23E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E23EC  7C 08 02 A6 */	mflr r0
/* 805E23F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E23F4  39 61 00 40 */	addi r11, r1, 0x40
/* 805E23F8  4B D7 FD E1 */	bl _savegpr_28
/* 805E23FC  7C 7C 1B 78 */	mr r28, r3
/* 805E2400  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805E2404  3B C4 D0 60 */	addi r30, r4, lit_3911@l /* 0x805ED060@l */
/* 805E2408  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E240C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E2410  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 805E2414  88 A3 05 CB */	lbz r5, 0x5cb(r3)
/* 805E2418  28 05 00 06 */	cmplwi r5, 6
/* 805E241C  41 81 05 08 */	bgt lbl_805E2924
/* 805E2420  3C 80 80 5F */	lis r4, lit_5652@ha /* 0x805ED47C@ha */
/* 805E2424  38 84 D4 7C */	addi r4, r4, lit_5652@l /* 0x805ED47C@l */
/* 805E2428  54 A0 10 3A */	slwi r0, r5, 2
/* 805E242C  7C 04 00 2E */	lwzx r0, r4, r0
/* 805E2430  7C 09 03 A6 */	mtctr r0
/* 805E2434  4E 80 04 20 */	bctr 
lbl_805E2438:
/* 805E2438  88 9C 05 D0 */	lbz r4, 0x5d0(r28)
/* 805E243C  28 04 00 FF */	cmplwi r4, 0xff
/* 805E2440  41 82 04 E4 */	beq lbl_805E2924
/* 805E2444  7F E3 FB 78 */	mr r3, r31
/* 805E2448  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 805E244C  7C 05 07 74 */	extsb r5, r0
/* 805E2450  4B A5 2F 11 */	bl isSwitch__10dSv_info_cCFii
/* 805E2454  2C 03 00 00 */	cmpwi r3, 0
/* 805E2458  41 82 04 CC */	beq lbl_805E2924
/* 805E245C  88 7C 05 CB */	lbz r3, 0x5cb(r28)
/* 805E2460  38 03 00 01 */	addi r0, r3, 1
/* 805E2464  98 1C 05 CB */	stb r0, 0x5cb(r28)
/* 805E2468  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 805E246C  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 805E2470  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 805E2474  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805E2478  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 805E247C  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 805E2480  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E2484  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 805E2488  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E248C  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 805E2490  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E2494  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 805E2498  48 00 04 8C */	b lbl_805E2924
lbl_805E249C:
/* 805E249C  4B FF D7 BD */	bl CameraSet__8daB_GG_cFv
/* 805E24A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E24A4  41 82 04 80 */	beq lbl_805E2924
/* 805E24A8  C0 5C 04 D0 */	lfs f2, 0x4d0(r28)
/* 805E24AC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805E24B0  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805E24B4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805E24B8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E24BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E24C0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805E24C4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E24C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805E24CC  7F 83 E3 78 */	mr r3, r28
/* 805E24D0  38 81 00 18 */	addi r4, r1, 0x18
/* 805E24D4  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 805E24D8  C0 5E 02 50 */	lfs f2, 0x250(r30)
/* 805E24DC  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 805E24E0  4B FF D9 1D */	bl SetStopCam__8daB_GG_cF4cXyzffs
/* 805E24E4  88 7C 05 CB */	lbz r3, 0x5cb(r28)
/* 805E24E8  38 03 00 01 */	addi r0, r3, 1
/* 805E24EC  98 1C 05 CB */	stb r0, 0x5cb(r28)
/* 805E24F0  38 00 00 5A */	li r0, 0x5a
/* 805E24F4  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E24F8  38 00 00 03 */	li r0, 3
/* 805E24FC  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 805E2500  38 60 00 00 */	li r3, 0
/* 805E2504  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 805E2508  38 00 00 04 */	li r0, 4
/* 805E250C  90 1D 06 14 */	stw r0, 0x614(r29)
/* 805E2510  38 00 00 01 */	li r0, 1
/* 805E2514  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 805E2518  90 7D 06 10 */	stw r3, 0x610(r29)
/* 805E251C  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 805E2520  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070508@ha */
/* 805E2524  38 03 05 08 */	addi r0, r3, 0x0508 /* 0x00070508@l */
/* 805E2528  90 01 00 08 */	stw r0, 8(r1)
/* 805E252C  38 7C 0E 4C */	addi r3, r28, 0xe4c
/* 805E2530  38 81 00 08 */	addi r4, r1, 8
/* 805E2534  38 A0 FF FF */	li r5, -1
/* 805E2538  81 9C 0E 4C */	lwz r12, 0xe4c(r28)
/* 805E253C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805E2540  7D 89 03 A6 */	mtctr r12
/* 805E2544  4E 80 04 21 */	bctrl 
/* 805E2548  48 00 03 DC */	b lbl_805E2924
lbl_805E254C:
/* 805E254C  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 805E2550  2C 00 00 00 */	cmpwi r0, 0
/* 805E2554  40 82 00 D8 */	bne lbl_805E262C
/* 805E2558  88 7C 05 C7 */	lbz r3, 0x5c7(r28)
/* 805E255C  38 03 00 01 */	addi r0, r3, 1
/* 805E2560  98 1C 05 C7 */	stb r0, 0x5c7(r28)
/* 805E2564  88 7C 05 CB */	lbz r3, 0x5cb(r28)
/* 805E2568  38 03 00 01 */	addi r0, r3, 1
/* 805E256C  98 1C 05 CB */	stb r0, 0x5cb(r28)
/* 805E2570  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 805E2574  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805E2578  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805E257C  41 82 00 2C */	beq lbl_805E25A8
/* 805E2580  3C 60 80 5F */	lis r3, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E2584  38 63 D7 2C */	addi r3, r3, data_805ED72C@l /* 0x805ED72C@l */
/* 805E2588  80 63 00 00 */	lwz r3, 0(r3)
/* 805E258C  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E2590  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 805E2594  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E2598  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805E259C  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 805E25A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E25A4  48 00 00 28 */	b lbl_805E25CC
lbl_805E25A8:
/* 805E25A8  3C 60 80 5F */	lis r3, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E25AC  38 63 D7 2C */	addi r3, r3, data_805ED72C@l /* 0x805ED72C@l */
/* 805E25B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805E25B4  C0 23 00 04 */	lfs f1, 4(r3)
/* 805E25B8  C0 1E 02 54 */	lfs f0, 0x254(r30)
/* 805E25BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E25C0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805E25C4  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 805E25C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_805E25CC:
/* 805E25CC  7F A3 EB 78 */	mr r3, r29
/* 805E25D0  38 81 00 24 */	addi r4, r1, 0x24
/* 805E25D4  3C A0 80 5F */	lis r5, data_805ED730@ha /* 0x805ED730@ha */
/* 805E25D8  38 A5 D7 30 */	addi r5, r5, data_805ED730@l /* 0x805ED730@l */
/* 805E25DC  A8 A5 00 00 */	lha r5, 0(r5)
/* 805E25E0  3C A5 00 01 */	addis r5, r5, 1
/* 805E25E4  38 05 80 00 */	addi r0, r5, -32768
/* 805E25E8  7C 05 07 34 */	extsh r5, r0
/* 805E25EC  38 C0 00 00 */	li r6, 0
/* 805E25F0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805E25F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805E25F8  7D 89 03 A6 */	mtctr r12
/* 805E25FC  4E 80 04 21 */	bctrl 
/* 805E2600  38 00 00 17 */	li r0, 0x17
/* 805E2604  90 1D 06 14 */	stw r0, 0x614(r29)
/* 805E2608  38 00 00 01 */	li r0, 1
/* 805E260C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 805E2610  38 00 00 00 */	li r0, 0
/* 805E2614  90 1D 06 10 */	stw r0, 0x610(r29)
/* 805E2618  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 805E261C  38 00 00 64 */	li r0, 0x64
/* 805E2620  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E2624  38 00 00 7D */	li r0, 0x7d
/* 805E2628  B0 1C 05 DC */	sth r0, 0x5dc(r28)
lbl_805E262C:
/* 805E262C  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 805E2630  2C 00 00 46 */	cmpwi r0, 0x46
/* 805E2634  40 80 02 F0 */	bge lbl_805E2924
/* 805E2638  C0 7C 04 D0 */	lfs f3, 0x4d0(r28)
/* 805E263C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 805E2640  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 805E2644  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805E2648  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 805E264C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805E2650  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E2654  EC 02 00 2A */	fadds f0, f2, f0
/* 805E2658  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E265C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 805E2660  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E2664  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E2668  7F 83 E3 78 */	mr r3, r28
/* 805E266C  38 81 00 0C */	addi r4, r1, 0xc
/* 805E2670  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 805E2674  C0 5E 02 60 */	lfs f2, 0x260(r30)
/* 805E2678  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 805E267C  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 805E2680  C0 9E 01 78 */	lfs f4, 0x178(r30)
/* 805E2684  4B FF D8 C9 */	bl SetMoveCam__8daB_GG_cF4cXyzffsff
/* 805E2688  48 00 02 9C */	b lbl_805E2924
lbl_805E268C:
/* 805E268C  A8 1C 05 DC */	lha r0, 0x5dc(r28)
/* 805E2690  2C 00 00 00 */	cmpwi r0, 0
/* 805E2694  40 82 00 B0 */	bne lbl_805E2744
/* 805E2698  38 05 00 01 */	addi r0, r5, 1
/* 805E269C  98 1C 05 CB */	stb r0, 0x5cb(r28)
/* 805E26A0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E26A4  D0 1C 05 F4 */	stfs f0, 0x5f4(r28)
/* 805E26A8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E26AC  D0 1C 05 F8 */	stfs f0, 0x5f8(r28)
/* 805E26B0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E26B4  D0 1C 05 FC */	stfs f0, 0x5fc(r28)
/* 805E26B8  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 805E26BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E26C0  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 805E26C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E26C8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 805E26CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E26D0  38 7C 06 00 */	addi r3, r28, 0x600
/* 805E26D4  3C 80 80 5F */	lis r4, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E26D8  38 84 D7 2C */	addi r4, r4, data_805ED72C@l /* 0x805ED72C@l */
/* 805E26DC  80 84 00 00 */	lwz r4, 0(r4)
/* 805E26E0  3C A0 80 5F */	lis r5, data_805ED730@ha /* 0x805ED730@ha */
/* 805E26E4  38 A5 D7 30 */	addi r5, r5, data_805ED730@l /* 0x805ED730@l */
/* 805E26E8  A8 A5 00 00 */	lha r5, 0(r5)
/* 805E26EC  38 C1 00 24 */	addi r6, r1, 0x24
/* 805E26F0  4B C8 E6 D1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E26F4  C0 1C 06 00 */	lfs f0, 0x600(r28)
/* 805E26F8  D0 1C 06 18 */	stfs f0, 0x618(r28)
/* 805E26FC  C0 1C 06 04 */	lfs f0, 0x604(r28)
/* 805E2700  D0 1C 06 1C */	stfs f0, 0x61c(r28)
/* 805E2704  C0 1C 06 08 */	lfs f0, 0x608(r28)
/* 805E2708  D0 1C 06 20 */	stfs f0, 0x620(r28)
/* 805E270C  38 00 00 96 */	li r0, 0x96
/* 805E2710  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E2714  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 805E2718  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 805E271C  C0 1E 02 68 */	lfs f0, 0x268(r30)
/* 805E2720  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805E2724  C0 1E 02 6C */	lfs f0, 0x26c(r30)
/* 805E2728  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 805E272C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E2730  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 805E2734  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E2738  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 805E273C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E2740  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
lbl_805E2744:
/* 805E2744  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 805E2748  2C 00 00 00 */	cmpwi r0, 0
/* 805E274C  41 82 00 1C */	beq lbl_805E2768
/* 805E2750  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E2754  D0 1C 06 0C */	stfs f0, 0x60c(r28)
/* 805E2758  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E275C  D0 1C 06 10 */	stfs f0, 0x610(r28)
/* 805E2760  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E2764  D0 1C 06 14 */	stfs f0, 0x614(r28)
lbl_805E2768:
/* 805E2768  7F 83 E3 78 */	mr r3, r28
/* 805E276C  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 805E2770  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805E2774  4B FF D9 61 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E2778  48 00 01 AC */	b lbl_805E2924
lbl_805E277C:
/* 805E277C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E2780  D0 1C 06 0C */	stfs f0, 0x60c(r28)
/* 805E2784  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E2788  D0 1C 06 10 */	stfs f0, 0x610(r28)
/* 805E278C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E2790  D0 1C 06 14 */	stfs f0, 0x614(r28)
/* 805E2794  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 805E2798  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805E279C  4B FF D9 39 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E27A0  48 00 01 84 */	b lbl_805E2924
lbl_805E27A4:
/* 805E27A4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E27A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E27AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E27B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E27B4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 805E27B8  38 80 00 06 */	li r4, 6
/* 805E27BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805E27C0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 805E27C4  7D 89 03 A6 */	mtctr r12
/* 805E27C8  4E 80 04 21 */	bctrl 
/* 805E27CC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805E27D0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805E27D4  80 84 00 00 */	lwz r4, 0(r4)
/* 805E27D8  4B D6 3C D9 */	bl PSMTXCopy
/* 805E27DC  38 61 00 24 */	addi r3, r1, 0x24
/* 805E27E0  7C 64 1B 78 */	mr r4, r3
/* 805E27E4  4B C8 E7 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805E27E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805E27EC  D0 1C 06 0C */	stfs f0, 0x60c(r28)
/* 805E27F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805E27F4  D0 1C 06 10 */	stfs f0, 0x610(r28)
/* 805E27F8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805E27FC  D0 1C 06 14 */	stfs f0, 0x614(r28)
/* 805E2800  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805E2804  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805E2808  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 805E280C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E2810  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 805E2814  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E2818  38 7C 06 18 */	addi r3, r28, 0x618
/* 805E281C  3C 80 80 5F */	lis r4, data_805ED72C@ha /* 0x805ED72C@ha */
/* 805E2820  38 84 D7 2C */	addi r4, r4, data_805ED72C@l /* 0x805ED72C@l */
/* 805E2824  80 84 00 00 */	lwz r4, 0(r4)
/* 805E2828  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805E282C  3C A5 00 01 */	addis r5, r5, 1
/* 805E2830  38 05 80 00 */	addi r0, r5, -32768
/* 805E2834  7C 05 07 34 */	extsh r5, r0
/* 805E2838  38 C1 00 24 */	addi r6, r1, 0x24
/* 805E283C  4B C8 E5 85 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805E2840  7F 83 E3 78 */	mr r3, r28
/* 805E2844  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805E2848  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 805E284C  4B FF D8 89 */	bl SetMoveCam1__8daB_GG_cFff
/* 805E2850  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 805E2854  2C 00 00 01 */	cmpwi r0, 1
/* 805E2858  40 82 00 28 */	bne lbl_805E2880
/* 805E285C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E2860  38 00 00 17 */	li r0, 0x17
/* 805E2864  90 03 06 14 */	stw r0, 0x614(r3)
/* 805E2868  38 00 00 01 */	li r0, 1
/* 805E286C  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805E2870  38 00 00 02 */	li r0, 2
/* 805E2874  90 03 06 10 */	stw r0, 0x610(r3)
/* 805E2878  38 00 00 00 */	li r0, 0
/* 805E287C  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_805E2880:
/* 805E2880  A8 1C 05 DA */	lha r0, 0x5da(r28)
/* 805E2884  2C 00 00 00 */	cmpwi r0, 0
/* 805E2888  40 82 00 9C */	bne lbl_805E2924
/* 805E288C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 805E2890  38 00 00 17 */	li r0, 0x17
/* 805E2894  90 03 06 14 */	stw r0, 0x614(r3)
/* 805E2898  38 00 00 01 */	li r0, 1
/* 805E289C  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805E28A0  38 00 00 02 */	li r0, 2
/* 805E28A4  90 03 06 10 */	stw r0, 0x610(r3)
/* 805E28A8  38 00 00 00 */	li r0, 0
/* 805E28AC  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805E28B0  88 7C 05 CB */	lbz r3, 0x5cb(r28)
/* 805E28B4  38 03 00 01 */	addi r0, r3, 1
/* 805E28B8  98 1C 05 CB */	stb r0, 0x5cb(r28)
/* 805E28BC  88 7C 05 C7 */	lbz r3, 0x5c7(r28)
/* 805E28C0  38 03 00 01 */	addi r0, r3, 1
/* 805E28C4  98 1C 05 C7 */	stb r0, 0x5c7(r28)
/* 805E28C8  38 00 00 96 */	li r0, 0x96
/* 805E28CC  B0 1C 05 D8 */	sth r0, 0x5d8(r28)
/* 805E28D0  48 00 00 54 */	b lbl_805E2924
lbl_805E28D4:
/* 805E28D4  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 805E28D8  2C 00 00 00 */	cmpwi r0, 0
/* 805E28DC  40 82 00 20 */	bne lbl_805E28FC
/* 805E28E0  4B FF D9 19 */	bl SetReleaseCam__8daB_GG_cFv
/* 805E28E4  38 00 00 00 */	li r0, 0
/* 805E28E8  98 1C 05 C5 */	stb r0, 0x5c5(r28)
/* 805E28EC  98 1C 05 C6 */	stb r0, 0x5c6(r28)
/* 805E28F0  98 1C 05 C7 */	stb r0, 0x5c7(r28)
/* 805E28F4  38 00 00 03 */	li r0, 3
/* 805E28F8  98 1C 06 90 */	stb r0, 0x690(r28)
lbl_805E28FC:
/* 805E28FC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805E2900  D0 1C 06 0C */	stfs f0, 0x60c(r28)
/* 805E2904  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805E2908  D0 1C 06 10 */	stfs f0, 0x610(r28)
/* 805E290C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805E2910  D0 1C 06 14 */	stfs f0, 0x614(r28)
/* 805E2914  7F 83 E3 78 */	mr r3, r28
/* 805E2918  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 805E291C  C0 5E 02 0C */	lfs f2, 0x20c(r30)
/* 805E2920  4B FF D7 B5 */	bl SetMoveCam1__8daB_GG_cFff
lbl_805E2924:
/* 805E2924  88 1C 05 CB */	lbz r0, 0x5cb(r28)
/* 805E2928  28 00 00 01 */	cmplwi r0, 1
/* 805E292C  40 81 00 30 */	ble lbl_805E295C
/* 805E2930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E2934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E2938  3B A3 4E C8 */	addi r29, r3, 0x4ec8
/* 805E293C  7F A3 EB 78 */	mr r3, r29
/* 805E2940  4B A6 00 69 */	bl onSkipFade__14dEvt_control_cFv
/* 805E2944  7F A3 EB 78 */	mr r3, r29
/* 805E2948  7F 84 E3 78 */	mr r4, r28
/* 805E294C  3C A0 80 5E */	lis r5, DemoSkipCallBack__8daB_GG_cFPvi@ha /* 0x805DFC24@ha */
/* 805E2950  38 A5 FC 24 */	addi r5, r5, DemoSkipCallBack__8daB_GG_cFPvi@l /* 0x805DFC24@l */
/* 805E2954  38 C0 00 01 */	li r6, 1
/* 805E2958  4B A5 FF BD */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_805E295C:
/* 805E295C  39 61 00 40 */	addi r11, r1, 0x40
/* 805E2960  4B D7 F8 C5 */	bl _restgpr_28
/* 805E2964  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E2968  7C 08 03 A6 */	mtlr r0
/* 805E296C  38 21 00 40 */	addi r1, r1, 0x40
/* 805E2970  4E 80 00 20 */	blr 
