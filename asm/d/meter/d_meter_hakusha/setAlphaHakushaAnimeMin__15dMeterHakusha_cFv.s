lbl_8020D258:
/* 8020D258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D25C  7C 08 02 A6 */	mflr r0
/* 8020D260  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D268  7C 7F 1B 78 */	mr r31, r3
/* 8020D26C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8020D270  48 04 85 B9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020D274  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020D278  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D27C  41 82 00 34 */	beq lbl_8020D2B0
/* 8020D280  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020D284  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D288  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D28C  C0 24 03 A0 */	lfs f1, 0x3a0(r4)
/* 8020D290  48 04 85 41 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020D294  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020D298  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020D29C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020D2A0  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020D2A4  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8020D2A8  38 A0 00 05 */	li r5, 5
/* 8020D2AC  48 00 D7 1D */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020D2B0:
/* 8020D2B0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020D2B4  48 04 85 75 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020D2B8  C0 02 AE 00 */	lfs f0, lit_3793(r2)
/* 8020D2BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D2C0  41 82 00 34 */	beq lbl_8020D2F4
/* 8020D2C4  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020D2C8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020D2CC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020D2D0  C0 24 03 A8 */	lfs f1, 0x3a8(r4)
/* 8020D2D4  48 04 84 FD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020D2D8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020D2DC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020D2E0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020D2E4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020D2E8  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8020D2EC  38 A0 00 05 */	li r5, 5
/* 8020D2F0  48 00 D6 D9 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020D2F4:
/* 8020D2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D2FC  7C 08 03 A6 */	mtlr r0
/* 8020D300  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D304  4E 80 00 20 */	blr 
