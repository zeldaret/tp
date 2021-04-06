lbl_805C24BC:
/* 805C24BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C24C0  7C 08 02 A6 */	mflr r0
/* 805C24C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C24C8  39 61 00 50 */	addi r11, r1, 0x50
/* 805C24CC  4B D9 FD 0D */	bl _savegpr_28
/* 805C24D0  7C 7C 1B 78 */	mr r28, r3
/* 805C24D4  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805C24D8  3B C4 6C 74 */	addi r30, r4, lit_3800@l /* 0x805C6C74@l */
/* 805C24DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C24E0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C24E4  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 805C24E8  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805C24EC  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805C24F0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 805C24F4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805C24F8  7C 85 02 14 */	add r4, r5, r0
/* 805C24FC  C0 24 00 04 */	lfs f1, 4(r4)
/* 805C2500  7C 05 04 2E */	lfsx f0, r5, r0
/* 805C2504  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805C2508  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C250C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C2510  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 805C2514  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 805C2518  EC 02 00 72 */	fmuls f0, f2, f1
/* 805C251C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C2520  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 805C2524  2C 00 00 02 */	cmpwi r0, 2
/* 805C2528  41 82 01 28 */	beq lbl_805C2650
/* 805C252C  40 80 00 14 */	bge lbl_805C2540
/* 805C2530  2C 00 00 00 */	cmpwi r0, 0
/* 805C2534  41 82 00 1C */	beq lbl_805C2550
/* 805C2538  40 80 00 9C */	bge lbl_805C25D4
/* 805C253C  48 00 05 B8 */	b lbl_805C2AF4
lbl_805C2540:
/* 805C2540  2C 00 00 04 */	cmpwi r0, 4
/* 805C2544  41 82 05 20 */	beq lbl_805C2A64
/* 805C2548  40 80 05 AC */	bge lbl_805C2AF4
/* 805C254C  48 00 04 58 */	b lbl_805C29A4
lbl_805C2550:
/* 805C2550  38 80 00 02 */	li r4, 2
/* 805C2554  4B FF 90 F9 */	bl mStatusONOFF__8daB_DR_cFi
/* 805C2558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C255C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C2560  38 63 09 78 */	addi r3, r3, 0x978
/* 805C2564  38 80 00 16 */	li r4, 0x16
/* 805C2568  4B A7 26 31 */	bl onSwitch__12dSv_danBit_cFi
/* 805C256C  38 00 00 00 */	li r0, 0
/* 805C2570  98 1C 07 D6 */	stb r0, 0x7d6(r28)
/* 805C2574  7F 83 E3 78 */	mr r3, r28
/* 805C2578  4B FF A6 A1 */	bl mAllClr__8daB_DR_cFv
/* 805C257C  38 00 00 32 */	li r0, 0x32
/* 805C2580  90 1C 07 C8 */	stw r0, 0x7c8(r28)
/* 805C2584  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C2588  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C258C  A8 03 00 62 */	lha r0, 0x62(r3)
/* 805C2590  90 1C 07 C0 */	stw r0, 0x7c0(r28)
/* 805C2594  80 1C 15 6C */	lwz r0, 0x156c(r28)
/* 805C2598  60 00 00 01 */	ori r0, r0, 1
/* 805C259C  90 1C 15 6C */	stw r0, 0x156c(r28)
/* 805C25A0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C25A4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 805C25A8  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 805C25AC  7F 83 E3 78 */	mr r3, r28
/* 805C25B0  38 80 00 3A */	li r4, 0x3a
/* 805C25B4  38 A0 00 00 */	li r5, 0
/* 805C25B8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C25BC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C25C0  4B FF 8E 49 */	bl setBck__8daB_DR_cFiUcff
/* 805C25C4  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C25C8  38 03 00 01 */	addi r0, r3, 1
/* 805C25CC  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 805C25D0  48 00 05 24 */	b lbl_805C2AF4
lbl_805C25D4:
/* 805C25D4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805C25D8  C0 1C 07 AC */	lfs f0, 0x7ac(r28)
/* 805C25DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C25E0  FC 00 02 10 */	fabs f0, f0
/* 805C25E4  FC 20 00 18 */	frsp f1, f0
/* 805C25E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805C25EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C25F0  41 81 05 04 */	bgt lbl_805C2AF4
/* 805C25F4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805C25F8  38 80 00 01 */	li r4, 1
/* 805C25FC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C2600  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C2604  40 82 00 14 */	bne lbl_805C2618
/* 805C2608  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C260C  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 805C2610  41 82 00 08 */	beq lbl_805C2618
/* 805C2614  38 80 00 00 */	li r4, 0
lbl_805C2618:
/* 805C2618  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C261C  41 82 04 D8 */	beq lbl_805C2AF4
/* 805C2620  C0 1C 07 AC */	lfs f0, 0x7ac(r28)
/* 805C2624  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 805C2628  7F 83 E3 78 */	mr r3, r28
/* 805C262C  38 80 00 3B */	li r4, 0x3b
/* 805C2630  38 A0 00 02 */	li r5, 2
/* 805C2634  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805C2638  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C263C  4B FF 8D CD */	bl setBck__8daB_DR_cFiUcff
/* 805C2640  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C2644  38 03 00 01 */	addi r0, r3, 1
/* 805C2648  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 805C264C  48 00 04 A8 */	b lbl_805C2AF4
lbl_805C2650:
/* 805C2650  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 805C2654  2C 00 00 3D */	cmpwi r0, 0x3d
/* 805C2658  40 82 00 48 */	bne lbl_805C26A0
/* 805C265C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805C2660  38 80 00 01 */	li r4, 1
/* 805C2664  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C2668  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C266C  40 82 00 14 */	bne lbl_805C2680
/* 805C2670  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C2674  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 805C2678  41 82 00 08 */	beq lbl_805C2680
/* 805C267C  38 80 00 00 */	li r4, 0
lbl_805C2680:
/* 805C2680  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C2684  41 82 00 1C */	beq lbl_805C26A0
/* 805C2688  7F 83 E3 78 */	mr r3, r28
/* 805C268C  38 80 00 3B */	li r4, 0x3b
/* 805C2690  38 A0 00 02 */	li r5, 2
/* 805C2694  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805C2698  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C269C  4B FF 8D 6D */	bl setBck__8daB_DR_cFiUcff
lbl_805C26A0:
/* 805C26A0  38 7C 07 C8 */	addi r3, r28, 0x7c8
/* 805C26A4  48 00 45 39 */	bl func_805C6BDC
/* 805C26A8  2C 03 00 00 */	cmpwi r3, 0
/* 805C26AC  40 82 00 30 */	bne lbl_805C26DC
/* 805C26B0  88 1C 07 E4 */	lbz r0, 0x7e4(r28)
/* 805C26B4  28 00 00 00 */	cmplwi r0, 0
/* 805C26B8  40 82 00 24 */	bne lbl_805C26DC
/* 805C26BC  7F 83 E3 78 */	mr r3, r28
/* 805C26C0  38 80 00 3D */	li r4, 0x3d
/* 805C26C4  38 A0 00 00 */	li r5, 0
/* 805C26C8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805C26CC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C26D0  4B FF 8D 39 */	bl setBck__8daB_DR_cFiUcff
/* 805C26D4  38 00 00 01 */	li r0, 1
/* 805C26D8  98 1C 07 E4 */	stb r0, 0x7e4(r28)
lbl_805C26DC:
/* 805C26DC  7F A3 EB 78 */	mr r3, r29
/* 805C26E0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805C26E4  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 805C26E8  7D 89 03 A6 */	mtctr r12
/* 805C26EC  4E 80 04 21 */	bctrl 
/* 805C26F0  28 03 00 00 */	cmplwi r3, 0
/* 805C26F4  41 82 01 90 */	beq lbl_805C2884
/* 805C26F8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805C26FC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C2700  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805C2704  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805C2708  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805C270C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C2710  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 805C2714  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C2718  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C271C  7F A3 EB 78 */	mr r3, r29
/* 805C2720  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 805C2724  81 8C 02 48 */	lwz r12, 0x248(r12)
/* 805C2728  7D 89 03 A6 */	mtctr r12
/* 805C272C  4E 80 04 21 */	bctrl 
/* 805C2730  38 81 00 18 */	addi r4, r1, 0x18
/* 805C2734  4B D8 4C 69 */	bl PSVECSquareDistance
/* 805C2738  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C273C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2740  40 81 00 58 */	ble lbl_805C2798
/* 805C2744  FC 00 08 34 */	frsqrte f0, f1
/* 805C2748  C8 9E 03 98 */	lfd f4, 0x398(r30)
/* 805C274C  FC 44 00 32 */	fmul f2, f4, f0
/* 805C2750  C8 7E 03 A0 */	lfd f3, 0x3a0(r30)
/* 805C2754  FC 00 00 32 */	fmul f0, f0, f0
/* 805C2758  FC 01 00 32 */	fmul f0, f1, f0
/* 805C275C  FC 03 00 28 */	fsub f0, f3, f0
/* 805C2760  FC 02 00 32 */	fmul f0, f2, f0
/* 805C2764  FC 44 00 32 */	fmul f2, f4, f0
/* 805C2768  FC 00 00 32 */	fmul f0, f0, f0
/* 805C276C  FC 01 00 32 */	fmul f0, f1, f0
/* 805C2770  FC 03 00 28 */	fsub f0, f3, f0
/* 805C2774  FC 02 00 32 */	fmul f0, f2, f0
/* 805C2778  FC 44 00 32 */	fmul f2, f4, f0
/* 805C277C  FC 00 00 32 */	fmul f0, f0, f0
/* 805C2780  FC 01 00 32 */	fmul f0, f1, f0
/* 805C2784  FC 03 00 28 */	fsub f0, f3, f0
/* 805C2788  FC 02 00 32 */	fmul f0, f2, f0
/* 805C278C  FC 21 00 32 */	fmul f1, f1, f0
/* 805C2790  FC 20 08 18 */	frsp f1, f1
/* 805C2794  48 00 00 88 */	b lbl_805C281C
lbl_805C2798:
/* 805C2798  C8 1E 03 A8 */	lfd f0, 0x3a8(r30)
/* 805C279C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C27A0  40 80 00 10 */	bge lbl_805C27B0
/* 805C27A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805C27A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805C27AC  48 00 00 70 */	b lbl_805C281C
lbl_805C27B0:
/* 805C27B0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C27B4  80 81 00 08 */	lwz r4, 8(r1)
/* 805C27B8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C27BC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C27C0  7C 03 00 00 */	cmpw r3, r0
/* 805C27C4  41 82 00 14 */	beq lbl_805C27D8
/* 805C27C8  40 80 00 40 */	bge lbl_805C2808
/* 805C27CC  2C 03 00 00 */	cmpwi r3, 0
/* 805C27D0  41 82 00 20 */	beq lbl_805C27F0
/* 805C27D4  48 00 00 34 */	b lbl_805C2808
lbl_805C27D8:
/* 805C27D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C27DC  41 82 00 0C */	beq lbl_805C27E8
/* 805C27E0  38 00 00 01 */	li r0, 1
/* 805C27E4  48 00 00 28 */	b lbl_805C280C
lbl_805C27E8:
/* 805C27E8  38 00 00 02 */	li r0, 2
/* 805C27EC  48 00 00 20 */	b lbl_805C280C
lbl_805C27F0:
/* 805C27F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C27F4  41 82 00 0C */	beq lbl_805C2800
/* 805C27F8  38 00 00 05 */	li r0, 5
/* 805C27FC  48 00 00 10 */	b lbl_805C280C
lbl_805C2800:
/* 805C2800  38 00 00 03 */	li r0, 3
/* 805C2804  48 00 00 08 */	b lbl_805C280C
lbl_805C2808:
/* 805C2808  38 00 00 04 */	li r0, 4
lbl_805C280C:
/* 805C280C  2C 00 00 01 */	cmpwi r0, 1
/* 805C2810  40 82 00 0C */	bne lbl_805C281C
/* 805C2814  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805C2818  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805C281C:
/* 805C281C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 805C2820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2824  40 80 00 60 */	bge lbl_805C2884
/* 805C2828  7F 83 E3 78 */	mr r3, r28
/* 805C282C  38 80 00 00 */	li r4, 0
/* 805C2830  4B FF 8E 1D */	bl mStatusONOFF__8daB_DR_cFi
/* 805C2834  38 7C 15 40 */	addi r3, r28, 0x1540
/* 805C2838  81 9C 15 7C */	lwz r12, 0x157c(r28)
/* 805C283C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805C2840  7D 89 03 A6 */	mtctr r12
/* 805C2844  4E 80 04 21 */	bctrl 
/* 805C2848  80 1C 15 6C */	lwz r0, 0x156c(r28)
/* 805C284C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805C2850  90 1C 15 6C */	stw r0, 0x156c(r28)
/* 805C2854  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 805C2858  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C285C  7F 83 E3 78 */	mr r3, r28
/* 805C2860  38 80 00 3C */	li r4, 0x3c
/* 805C2864  38 A0 00 00 */	li r5, 0
/* 805C2868  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C286C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C2870  4B FF 8B 99 */	bl setBck__8daB_DR_cFiUcff
/* 805C2874  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C2878  38 03 00 01 */	addi r0, r3, 1
/* 805C287C  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 805C2880  48 00 02 74 */	b lbl_805C2AF4
lbl_805C2884:
/* 805C2884  7F 83 E3 78 */	mr r3, r28
/* 805C2888  4B FF A7 D5 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C288C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C2890  41 82 00 14 */	beq lbl_805C28A4
/* 805C2894  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C2898  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C289C  A8 03 00 62 */	lha r0, 0x62(r3)
/* 805C28A0  90 1C 07 C0 */	stw r0, 0x7c0(r28)
lbl_805C28A4:
/* 805C28A4  7F 83 E3 78 */	mr r3, r28
/* 805C28A8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805C28AC  4B A5 80 B9 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805C28B0  C0 1E 03 F8 */	lfs f0, 0x3f8(r30)
/* 805C28B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C28B8  40 80 00 14 */	bge lbl_805C28CC
/* 805C28BC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C28C0  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 805C28C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C28C8  41 81 00 60 */	bgt lbl_805C2928
lbl_805C28CC:
/* 805C28CC  C0 3C 07 20 */	lfs f1, 0x720(r28)
/* 805C28D0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C28D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C28D8  41 80 00 50 */	blt lbl_805C2928
/* 805C28DC  38 7C 07 C0 */	addi r3, r28, 0x7c0
/* 805C28E0  48 00 42 FD */	bl func_805C6BDC
/* 805C28E4  2C 03 00 00 */	cmpwi r3, 0
/* 805C28E8  41 82 00 40 */	beq lbl_805C2928
/* 805C28EC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C28F0  C0 1E 04 00 */	lfs f0, 0x400(r30)
/* 805C28F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C28F8  4C 41 13 82 */	cror 2, 1, 2
/* 805C28FC  40 82 00 1C */	bne lbl_805C2918
/* 805C2900  7F 83 E3 78 */	mr r3, r28
/* 805C2904  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805C2908  4B A5 80 5D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805C290C  C0 1E 04 14 */	lfs f0, 0x414(r30)
/* 805C2910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2914  41 81 00 14 */	bgt lbl_805C2928
lbl_805C2918:
/* 805C2918  38 7C 15 40 */	addi r3, r28, 0x1540
/* 805C291C  4B AC 1B 45 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805C2920  28 03 00 00 */	cmplwi r3, 0
/* 805C2924  41 82 01 D0 */	beq lbl_805C2AF4
lbl_805C2928:
/* 805C2928  7F 83 E3 78 */	mr r3, r28
/* 805C292C  38 80 00 00 */	li r4, 0
/* 805C2930  4B FF 8D 1D */	bl mStatusONOFF__8daB_DR_cFi
/* 805C2934  38 7C 15 40 */	addi r3, r28, 0x1540
/* 805C2938  81 9C 15 7C */	lwz r12, 0x157c(r28)
/* 805C293C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805C2940  7D 89 03 A6 */	mtctr r12
/* 805C2944  4E 80 04 21 */	bctrl 
/* 805C2948  80 1C 15 6C */	lwz r0, 0x156c(r28)
/* 805C294C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805C2950  90 1C 15 6C */	stw r0, 0x156c(r28)
/* 805C2954  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805C2958  D0 1C 07 A8 */	stfs f0, 0x7a8(r28)
/* 805C295C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805C2960  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C2964  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805C2968  D0 1C 07 B0 */	stfs f0, 0x7b0(r28)
/* 805C296C  C0 3E 03 74 */	lfs f1, 0x374(r30)
/* 805C2970  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 805C2974  EC 01 00 2A */	fadds f0, f1, f0
/* 805C2978  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C297C  7F 83 E3 78 */	mr r3, r28
/* 805C2980  38 80 00 3C */	li r4, 0x3c
/* 805C2984  38 A0 00 00 */	li r5, 0
/* 805C2988  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C298C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C2990  4B FF 8A 79 */	bl setBck__8daB_DR_cFiUcff
/* 805C2994  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C2998  38 03 00 01 */	addi r0, r3, 1
/* 805C299C  90 1C 07 0C */	stw r0, 0x70c(r28)
/* 805C29A0  48 00 01 54 */	b lbl_805C2AF4
lbl_805C29A4:
/* 805C29A4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805C29A8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C29AC  FC 00 00 1E */	fctiwz f0, f0
/* 805C29B0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805C29B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C29B8  2C 00 00 0E */	cmpwi r0, 0xe
/* 805C29BC  41 80 00 20 */	blt lbl_805C29DC
/* 805C29C0  C0 1E 04 28 */	lfs f0, 0x428(r30)
/* 805C29C4  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C29C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805C29CC  38 9C 07 A8 */	addi r4, r28, 0x7a8
/* 805C29D0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805C29D4  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 805C29D8  4B CA D0 E1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_805C29DC:
/* 805C29DC  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 805C29E0  38 80 00 01 */	li r4, 1
/* 805C29E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C29E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C29EC  40 82 00 18 */	bne lbl_805C2A04
/* 805C29F0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C29F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C29F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C29FC  41 82 00 08 */	beq lbl_805C2A04
/* 805C2A00  38 80 00 00 */	li r4, 0
lbl_805C2A04:
/* 805C2A04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C2A08  41 82 00 EC */	beq lbl_805C2AF4
/* 805C2A0C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805C2A10  D0 1C 07 A8 */	stfs f0, 0x7a8(r28)
/* 805C2A14  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 805C2A18  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C2A1C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805C2A20  D0 1C 07 B0 */	stfs f0, 0x7b0(r28)
/* 805C2A24  C0 1C 07 20 */	lfs f0, 0x720(r28)
/* 805C2A28  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805C2A2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C2A30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C2A34  38 63 09 78 */	addi r3, r3, 0x978
/* 805C2A38  38 80 00 16 */	li r4, 0x16
/* 805C2A3C  4B A7 21 85 */	bl offSwitch__12dSv_danBit_cFi
/* 805C2A40  7F 83 E3 78 */	mr r3, r28
/* 805C2A44  38 80 00 35 */	li r4, 0x35
/* 805C2A48  38 A0 00 02 */	li r5, 2
/* 805C2A4C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C2A50  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C2A54  4B FF 89 B5 */	bl setBck__8daB_DR_cFiUcff
/* 805C2A58  80 7C 07 0C */	lwz r3, 0x70c(r28)
/* 805C2A5C  38 03 00 01 */	addi r0, r3, 1
/* 805C2A60  90 1C 07 0C */	stw r0, 0x70c(r28)
lbl_805C2A64:
/* 805C2A64  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805C2A68  38 9C 07 A8 */	addi r4, r28, 0x7a8
/* 805C2A6C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805C2A70  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 805C2A74  C0 7E 00 20 */	lfs f3, 0x20(r30)
/* 805C2A78  4B CA D0 41 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805C2A7C  C0 3C 08 C8 */	lfs f1, 0x8c8(r28)
/* 805C2A80  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805C2A84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2A88  41 81 00 6C */	bgt lbl_805C2AF4
/* 805C2A8C  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 805C2A90  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805C2A94  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805C2A98  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805C2A9C  EC 21 00 2A */	fadds f1, f1, f0
/* 805C2AA0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C2AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2AA8  4C 40 13 82 */	cror 2, 0, 2
/* 805C2AAC  40 82 00 18 */	bne lbl_805C2AC4
/* 805C2AB0  7F 83 E3 78 */	mr r3, r28
/* 805C2AB4  38 80 00 05 */	li r4, 5
/* 805C2AB8  38 A0 00 00 */	li r5, 0
/* 805C2ABC  4B FF 89 F9 */	bl setActionMode__8daB_DR_cFii
/* 805C2AC0  48 00 00 34 */	b lbl_805C2AF4
lbl_805C2AC4:
/* 805C2AC4  88 1C 07 D1 */	lbz r0, 0x7d1(r28)
/* 805C2AC8  28 00 00 02 */	cmplwi r0, 2
/* 805C2ACC  41 82 00 18 */	beq lbl_805C2AE4
/* 805C2AD0  7F 83 E3 78 */	mr r3, r28
/* 805C2AD4  38 80 00 00 */	li r4, 0
/* 805C2AD8  38 A0 00 00 */	li r5, 0
/* 805C2ADC  4B FF 89 D9 */	bl setActionMode__8daB_DR_cFii
/* 805C2AE0  48 00 00 14 */	b lbl_805C2AF4
lbl_805C2AE4:
/* 805C2AE4  7F 83 E3 78 */	mr r3, r28
/* 805C2AE8  38 80 00 01 */	li r4, 1
/* 805C2AEC  38 A0 00 00 */	li r5, 0
/* 805C2AF0  4B FF 89 C5 */	bl setActionMode__8daB_DR_cFii
lbl_805C2AF4:
/* 805C2AF4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 805C2AF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C2AFC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 805C2B00  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805C2B04  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 805C2B08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C2B0C  C0 1E 04 2C */	lfs f0, 0x42c(r30)
/* 805C2B10  EC 01 00 2A */	fadds f0, f1, f0
/* 805C2B14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C2B18  38 7C 16 64 */	addi r3, r28, 0x1664
/* 805C2B1C  38 81 00 18 */	addi r4, r1, 0x18
/* 805C2B20  4B CA C6 BD */	bl SetC__8cM3dGCylFRC4cXyz
/* 805C2B24  38 7C 16 64 */	addi r3, r28, 0x1664
/* 805C2B28  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 805C2B2C  4B CA C6 CD */	bl SetH__8cM3dGCylFf
/* 805C2B30  38 7C 16 64 */	addi r3, r28, 0x1664
/* 805C2B34  C0 3E 03 84 */	lfs f1, 0x384(r30)
/* 805C2B38  4B CA C6 C9 */	bl SetR__8cM3dGCylFf
/* 805C2B3C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805C2B40  D0 1C 15 C4 */	stfs f0, 0x15c4(r28)
/* 805C2B44  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805C2B48  D0 1C 15 C8 */	stfs f0, 0x15c8(r28)
/* 805C2B4C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805C2B50  D0 1C 15 CC */	stfs f0, 0x15cc(r28)
/* 805C2B54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805C2B58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805C2B5C  38 63 23 3C */	addi r3, r3, 0x233c
/* 805C2B60  38 9C 15 40 */	addi r4, r28, 0x1540
/* 805C2B64  4B CA 20 45 */	bl Set__4cCcSFP8cCcD_Obj
/* 805C2B68  38 7C 05 2C */	addi r3, r28, 0x52c
/* 805C2B6C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805C2B70  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805C2B74  4B CA CF 0D */	bl cLib_addCalc0__FPfff
/* 805C2B78  38 61 00 0C */	addi r3, r1, 0xc
/* 805C2B7C  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 805C2B80  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805C2B84  4B CA 3F B1 */	bl __mi__4cXyzCFRC3Vec
/* 805C2B88  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805C2B8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C2B90  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C2B94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C2B98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C2B9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C2BA0  38 61 00 18 */	addi r3, r1, 0x18
/* 805C2BA4  4B CA 45 85 */	bl atan2sX_Z__4cXyzCFv
/* 805C2BA8  7C 64 07 34 */	extsh r4, r3
/* 805C2BAC  38 7C 04 DE */	addi r3, r28, 0x4de
/* 805C2BB0  38 A0 00 0A */	li r5, 0xa
/* 805C2BB4  38 C0 04 00 */	li r6, 0x400
/* 805C2BB8  4B CA DA 51 */	bl cLib_addCalcAngleS2__FPssss
/* 805C2BBC  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 805C2BC0  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 805C2BC4  38 A0 00 0A */	li r5, 0xa
/* 805C2BC8  38 C0 04 00 */	li r6, 0x400
/* 805C2BCC  4B CA DA 3D */	bl cLib_addCalcAngleS2__FPssss
/* 805C2BD0  39 61 00 50 */	addi r11, r1, 0x50
/* 805C2BD4  4B D9 F6 51 */	bl _restgpr_28
/* 805C2BD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C2BDC  7C 08 03 A6 */	mtlr r0
/* 805C2BE0  38 21 00 50 */	addi r1, r1, 0x50
/* 805C2BE4  4E 80 00 20 */	blr 
