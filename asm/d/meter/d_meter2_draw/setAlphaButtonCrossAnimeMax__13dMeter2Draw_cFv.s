lbl_802183A8:
/* 802183A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802183AC  7C 08 02 A6 */	mflr r0
/* 802183B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802183B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802183B8  7C 7F 1B 78 */	mr r31, r3
/* 802183BC  80 63 03 68 */	lwz r3, 0x368(r3)
/* 802183C0  48 03 D4 69 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802183C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802183C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802183CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802183D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802183D4  41 82 00 20 */	beq lbl_802183F4
/* 802183D8  80 7F 03 68 */	lwz r3, 0x368(r31)
/* 802183DC  FC 20 00 90 */	fmr f1, f0
/* 802183E0  48 03 D3 F1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802183E4  7F E3 FB 78 */	mr r3, r31
/* 802183E8  80 9F 03 68 */	lwz r4, 0x368(r31)
/* 802183EC  38 A0 00 05 */	li r5, 5
/* 802183F0  48 00 26 B5 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802183F4:
/* 802183F4  48 00 62 95 */	bl dMeter2Info_isItemOpenCheck__Fv
/* 802183F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802183FC  41 82 00 10 */	beq lbl_8021840C
/* 80218400  7F E3 FB 78 */	mr r3, r31
/* 80218404  48 00 01 21 */	bl setAlphaButtonCrossItemAnimeMax__13dMeter2Draw_cFv
/* 80218408  48 00 00 0C */	b lbl_80218414
lbl_8021840C:
/* 8021840C  7F E3 FB 78 */	mr r3, r31
/* 80218410  48 00 00 39 */	bl setAlphaButtonCrossItemAnimeMin__13dMeter2Draw_cFv
lbl_80218414:
/* 80218414  48 00 62 55 */	bl dMeter2Info_isMapOpenCheck__Fv
/* 80218418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021841C  41 82 00 10 */	beq lbl_8021842C
/* 80218420  7F E3 FB 78 */	mr r3, r31
/* 80218424  48 00 02 A1 */	bl setAlphaButtonCrossMapAnimeMax__13dMeter2Draw_cFv
/* 80218428  48 00 00 0C */	b lbl_80218434
lbl_8021842C:
/* 8021842C  7F E3 FB 78 */	mr r3, r31
/* 80218430  48 00 01 B9 */	bl setAlphaButtonCrossMapAnimeMin__13dMeter2Draw_cFv
lbl_80218434:
/* 80218434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80218438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021843C  7C 08 03 A6 */	mtlr r0
/* 80218440  38 21 00 10 */	addi r1, r1, 0x10
/* 80218444  4E 80 00 20 */	blr 
