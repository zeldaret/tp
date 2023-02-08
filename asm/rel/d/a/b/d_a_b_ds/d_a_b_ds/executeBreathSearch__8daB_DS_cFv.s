lbl_805D272C:
/* 805D272C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D2730  7C 08 02 A6 */	mflr r0
/* 805D2734  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D2738  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D273C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805D2740  7C 7E 1B 78 */	mr r30, r3
/* 805D2744  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805D2748  3B E4 CA 54 */	addi r31, r4, lit_3932@l /* 0x805DCA54@l */
/* 805D274C  4B FF 95 B5 */	bl mHeadAngle_Clear__8daB_DS_cFv
/* 805D2750  80 1E 06 84 */	lwz r0, 0x684(r30)
/* 805D2754  2C 00 00 01 */	cmpwi r0, 1
/* 805D2758  41 82 00 48 */	beq lbl_805D27A0
/* 805D275C  40 80 01 00 */	bge lbl_805D285C
/* 805D2760  2C 00 00 00 */	cmpwi r0, 0
/* 805D2764  40 80 00 08 */	bge lbl_805D276C
/* 805D2768  48 00 00 F4 */	b lbl_805D285C
lbl_805D276C:
/* 805D276C  7F C3 F3 78 */	mr r3, r30
/* 805D2770  88 1E 08 4F */	lbz r0, 0x84f(r30)
/* 805D2774  54 00 10 3A */	slwi r0, r0, 2
/* 805D2778  3C 80 80 5E */	lis r4, Ds_BS_id@ha /* 0x805DD62C@ha */
/* 805D277C  38 84 D6 2C */	addi r4, r4, Ds_BS_id@l /* 0x805DD62C@l */
/* 805D2780  7C 84 00 2E */	lwzx r4, r4, r0
/* 805D2784  38 A0 00 00 */	li r5, 0
/* 805D2788  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 805D278C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D2790  4B FF 93 39 */	bl setBck__8daB_DS_cFiUcff
/* 805D2794  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 805D2798  38 03 00 01 */	addi r0, r3, 1
/* 805D279C  90 1E 06 84 */	stw r0, 0x684(r30)
lbl_805D27A0:
/* 805D27A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D27A4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D27A8  FC 00 00 1E */	fctiwz f0, f0
/* 805D27AC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D27B0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D27B4  2C 00 00 B1 */	cmpwi r0, 0xb1
/* 805D27B8  41 80 00 3C */	blt lbl_805D27F4
/* 805D27BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D27C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D27C4  2C 00 00 C3 */	cmpwi r0, 0xc3
/* 805D27C8  41 81 00 2C */	bgt lbl_805D27F4
/* 805D27CC  80 1E 2B B4 */	lwz r0, 0x2bb4(r30)
/* 805D27D0  60 00 00 01 */	ori r0, r0, 1
/* 805D27D4  90 1E 2B B4 */	stw r0, 0x2bb4(r30)
/* 805D27D8  80 1E 2A 78 */	lwz r0, 0x2a78(r30)
/* 805D27DC  60 00 00 01 */	ori r0, r0, 1
/* 805D27E0  90 1E 2A 78 */	stw r0, 0x2a78(r30)
/* 805D27E4  7F C3 F3 78 */	mr r3, r30
/* 805D27E8  38 80 00 00 */	li r4, 0
/* 805D27EC  4B FF 99 6D */	bl hand_smokeSet__8daB_DS_cFUc
/* 805D27F0  48 00 00 1C */	b lbl_805D280C
lbl_805D27F4:
/* 805D27F4  80 1E 2A 78 */	lwz r0, 0x2a78(r30)
/* 805D27F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D27FC  90 1E 2A 78 */	stw r0, 0x2a78(r30)
/* 805D2800  80 1E 2B B4 */	lwz r0, 0x2bb4(r30)
/* 805D2804  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805D2808  90 1E 2B B4 */	stw r0, 0x2bb4(r30)
lbl_805D280C:
/* 805D280C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D2810  38 80 00 01 */	li r4, 1
/* 805D2814  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D2818  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D281C  40 82 00 18 */	bne lbl_805D2834
/* 805D2820  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D2824  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D2828  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D282C  41 82 00 08 */	beq lbl_805D2834
/* 805D2830  38 80 00 00 */	li r4, 0
lbl_805D2834:
/* 805D2834  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D2838  41 82 00 24 */	beq lbl_805D285C
/* 805D283C  7F C3 F3 78 */	mr r3, r30
/* 805D2840  4B FF D4 4D */	bl mHandBreathChk__8daB_DS_cFv
/* 805D2844  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D2848  40 82 00 14 */	bne lbl_805D285C
/* 805D284C  7F C3 F3 78 */	mr r3, r30
/* 805D2850  38 80 00 00 */	li r4, 0
/* 805D2854  38 A0 00 00 */	li r5, 0
/* 805D2858  4B FF 93 1D */	bl setActionMode__8daB_DS_cFii
lbl_805D285C:
/* 805D285C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D2860  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D2864  FC 00 00 1E */	fctiwz f0, f0
/* 805D2868  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D286C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D2870  2C 00 00 46 */	cmpwi r0, 0x46
/* 805D2874  40 81 00 44 */	ble lbl_805D28B8
/* 805D2878  D8 01 00 08 */	stfd f0, 8(r1)
/* 805D287C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805D2880  2C 00 00 96 */	cmpwi r0, 0x96
/* 805D2884  40 80 00 34 */	bge lbl_805D28B8
/* 805D2888  7F C3 F3 78 */	mr r3, r30
/* 805D288C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D2890  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D2894  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805D2898  4B A4 7E 79 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D289C  7C 64 1B 78 */	mr r4, r3
/* 805D28A0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805D28A4  38 A0 00 28 */	li r5, 0x28
/* 805D28A8  38 C0 02 00 */	li r6, 0x200
/* 805D28AC  4B C9 DD 5D */	bl cLib_addCalcAngleS2__FPssss
/* 805D28B0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805D28B4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_805D28B8:
/* 805D28B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D28BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805D28C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D28C4  7C 08 03 A6 */	mtlr r0
/* 805D28C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805D28CC  4E 80 00 20 */	blr 
