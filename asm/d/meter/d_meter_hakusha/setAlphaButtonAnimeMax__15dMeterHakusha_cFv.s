lbl_8020D41C:
/* 8020D41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D420  7C 08 02 A6 */	mflr r0
/* 8020D424  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D42C  7C 7F 1B 78 */	mr r31, r3
/* 8020D430  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8020D434  48 04 83 F5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020D438  C0 02 AE 08 */	lfs f0, lit_3936(r2)
/* 8020D43C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D440  41 82 00 2C */	beq lbl_8020D46C
/* 8020D444  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8020D448  FC 20 00 90 */	fmr f1, f0
/* 8020D44C  48 04 83 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020D450  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020D454  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020D458  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020D45C  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020D460  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8020D464  38 A0 00 05 */	li r5, 5
/* 8020D468  48 00 D6 3D */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020D46C:
/* 8020D46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D474  7C 08 03 A6 */	mtlr r0
/* 8020D478  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D47C  4E 80 00 20 */	blr 
