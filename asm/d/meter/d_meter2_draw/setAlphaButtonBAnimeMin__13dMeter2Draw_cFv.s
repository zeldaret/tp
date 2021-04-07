lbl_80219324:
/* 80219324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80219328  7C 08 02 A6 */	mflr r0
/* 8021932C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80219330  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80219334  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80219338  39 61 00 20 */	addi r11, r1, 0x20
/* 8021933C  48 14 8E 99 */	bl _savegpr_27
/* 80219340  7C 7B 1B 78 */	mr r27, r3
/* 80219344  80 63 03 04 */	lwz r3, 0x304(r3)
/* 80219348  48 03 C4 E1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021934C  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80219350  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80219354  41 82 00 64 */	beq lbl_802193B8
/* 80219358  80 7B 03 04 */	lwz r3, 0x304(r27)
/* 8021935C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80219360  3B C4 EB C8 */	addi r30, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80219364  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80219368  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8021936C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80219370  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219374  EC 22 00 32 */	fmuls f1, f2, f0
/* 80219378  48 03 C4 59 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021937C  7F 63 DB 78 */	mr r3, r27
/* 80219380  80 9B 03 04 */	lwz r4, 0x304(r27)
/* 80219384  38 A0 00 05 */	li r5, 5
/* 80219388  48 00 16 41 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
/* 8021938C  80 7B 03 18 */	lwz r3, 0x318(r27)
/* 80219390  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80219394  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80219398  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8021939C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802193A0  EC 22 00 32 */	fmuls f1, f2, f0
/* 802193A4  48 03 C4 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802193A8  7F 63 DB 78 */	mr r3, r27
/* 802193AC  80 9B 03 18 */	lwz r4, 0x318(r27)
/* 802193B0  38 A0 00 05 */	li r5, 5
/* 802193B4  48 00 16 15 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802193B8:
/* 802193B8  80 7B 03 28 */	lwz r3, 0x328(r27)
/* 802193BC  48 03 C4 6D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802193C0  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 802193C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802193C8  41 82 00 30 */	beq lbl_802193F8
/* 802193CC  80 7B 03 28 */	lwz r3, 0x328(r27)
/* 802193D0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802193D4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 802193D8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 802193DC  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 802193E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 802193E4  48 03 C3 ED */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802193E8  7F 63 DB 78 */	mr r3, r27
/* 802193EC  80 9B 03 28 */	lwz r4, 0x328(r27)
/* 802193F0  38 A0 00 05 */	li r5, 5
/* 802193F4  48 00 15 D5 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802193F8:
/* 802193F8  3B 80 00 00 */	li r28, 0
/* 802193FC  3B E0 00 00 */	li r31, 0
/* 80219400  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80219404  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80219408  C3 E2 AE 80 */	lfs f31, lit_4182(r2)
lbl_8021940C:
/* 8021940C  3B BF 00 D4 */	addi r29, r31, 0xd4
/* 80219410  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80219414  48 03 C4 15 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219418  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 8021941C  41 82 00 28 */	beq lbl_80219444
/* 80219420  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80219424  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80219428  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8021942C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80219430  48 03 C3 A1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80219434  7F 63 DB 78 */	mr r3, r27
/* 80219438  7C 9B E8 2E */	lwzx r4, r27, r29
/* 8021943C  38 A0 00 05 */	li r5, 5
/* 80219440  48 00 15 89 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80219444:
/* 80219444  3B 9C 00 01 */	addi r28, r28, 1
/* 80219448  2C 1C 00 05 */	cmpwi r28, 5
/* 8021944C  3B FF 00 04 */	addi r31, r31, 4
/* 80219450  41 80 FF BC */	blt lbl_8021940C
/* 80219454  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80219458  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8021945C  39 61 00 20 */	addi r11, r1, 0x20
/* 80219460  48 14 8D C1 */	bl _restgpr_27
/* 80219464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80219468  7C 08 03 A6 */	mtlr r0
/* 8021946C  38 21 00 30 */	addi r1, r1, 0x30
/* 80219470  4E 80 00 20 */	blr 
