lbl_80219174:
/* 80219174  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80219178  7C 08 02 A6 */	mflr r0
/* 8021917C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80219180  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80219184  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80219188  39 61 00 20 */	addi r11, r1, 0x20
/* 8021918C  48 14 90 49 */	bl _savegpr_27
/* 80219190  7C 7B 1B 78 */	mr r27, r3
/* 80219194  80 63 03 00 */	lwz r3, 0x300(r3)
/* 80219198  48 03 C6 91 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021919C  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 802191A0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802191A4  41 82 00 38 */	beq lbl_802191DC
/* 802191A8  80 7B 03 00 */	lwz r3, 0x300(r27)
/* 802191AC  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 802191B0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 802191B4  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 802191B8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802191BC  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 802191C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802191C4  EC 22 00 32 */	fmuls f1, f2, f0
/* 802191C8  48 03 C6 09 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802191CC  7F 63 DB 78 */	mr r3, r27
/* 802191D0  80 9B 03 00 */	lwz r4, 0x300(r27)
/* 802191D4  38 A0 00 05 */	li r5, 5
/* 802191D8  48 00 17 F1 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802191DC:
/* 802191DC  3B 80 00 00 */	li r28, 0
/* 802191E0  3B E0 00 00 */	li r31, 0
/* 802191E4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802191E8  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l
/* 802191EC  C3 E2 AE 80 */	lfs f31, lit_4182(r2)
lbl_802191F0:
/* 802191F0  3B BF 00 C0 */	addi r29, r31, 0xc0
/* 802191F4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 802191F8  48 03 C6 31 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802191FC  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80219200  41 82 00 28 */	beq lbl_80219228
/* 80219204  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80219208  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8021920C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80219210  EC 21 00 32 */	fmuls f1, f1, f0
/* 80219214  48 03 C5 BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80219218  7F 63 DB 78 */	mr r3, r27
/* 8021921C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80219220  38 A0 00 05 */	li r5, 5
/* 80219224  48 00 17 A5 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80219228:
/* 80219228  3B 9C 00 01 */	addi r28, r28, 1
/* 8021922C  2C 1C 00 05 */	cmpwi r28, 5
/* 80219230  3B FF 00 04 */	addi r31, r31, 4
/* 80219234  41 80 FF BC */	blt lbl_802191F0
/* 80219238  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8021923C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80219240  39 61 00 20 */	addi r11, r1, 0x20
/* 80219244  48 14 8F DD */	bl _restgpr_27
/* 80219248  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021924C  7C 08 03 A6 */	mtlr r0
/* 80219250  38 21 00 30 */	addi r1, r1, 0x30
/* 80219254  4E 80 00 20 */	blr 
