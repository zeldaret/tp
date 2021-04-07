lbl_80219258:
/* 80219258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021925C  7C 08 02 A6 */	mflr r0
/* 80219260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80219264  39 61 00 20 */	addi r11, r1, 0x20
/* 80219268  48 14 8F 6D */	bl _savegpr_27
/* 8021926C  7C 7B 1B 78 */	mr r27, r3
/* 80219270  80 63 03 00 */	lwz r3, 0x300(r3)
/* 80219274  48 03 C5 B5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219278  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021927C  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80219280  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80219284  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80219288  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8021928C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80219290  EC 03 00 32 */	fmuls f0, f3, f0
/* 80219294  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80219298  41 82 00 20 */	beq lbl_802192B8
/* 8021929C  80 7B 03 00 */	lwz r3, 0x300(r27)
/* 802192A0  FC 20 00 90 */	fmr f1, f0
/* 802192A4  48 03 C5 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802192A8  7F 63 DB 78 */	mr r3, r27
/* 802192AC  80 9B 03 00 */	lwz r4, 0x300(r27)
/* 802192B0  38 A0 00 05 */	li r5, 5
/* 802192B4  48 00 17 F1 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802192B8:
/* 802192B8  3B 80 00 00 */	li r28, 0
/* 802192BC  3B E0 00 00 */	li r31, 0
lbl_802192C0:
/* 802192C0  3B BF 00 C0 */	addi r29, r31, 0xc0
/* 802192C4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 802192C8  48 03 C5 61 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802192CC  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 802192D0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 802192D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802192D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802192DC  41 82 00 20 */	beq lbl_802192FC
/* 802192E0  7C 7B E8 2E */	lwzx r3, r27, r29
/* 802192E4  FC 20 00 90 */	fmr f1, f0
/* 802192E8  48 03 C4 E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802192EC  7F 63 DB 78 */	mr r3, r27
/* 802192F0  7C 9B E8 2E */	lwzx r4, r27, r29
/* 802192F4  38 A0 00 05 */	li r5, 5
/* 802192F8  48 00 17 AD */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802192FC:
/* 802192FC  3B 9C 00 01 */	addi r28, r28, 1
/* 80219300  2C 1C 00 05 */	cmpwi r28, 5
/* 80219304  3B FF 00 04 */	addi r31, r31, 4
/* 80219308  41 80 FF B8 */	blt lbl_802192C0
/* 8021930C  39 61 00 20 */	addi r11, r1, 0x20
/* 80219310  48 14 8F 11 */	bl _restgpr_27
/* 80219314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80219318  7C 08 03 A6 */	mtlr r0
/* 8021931C  38 21 00 20 */	addi r1, r1, 0x20
/* 80219320  4E 80 00 20 */	blr 
