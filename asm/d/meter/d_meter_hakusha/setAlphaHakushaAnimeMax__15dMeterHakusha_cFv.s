lbl_8020D308:
/* 8020D308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D30C  7C 08 02 A6 */	mflr r0
/* 8020D310  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D318  7C 7F 1B 78 */	mr r31, r3
/* 8020D31C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8020D320  48 04 85 09 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020D324  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020D328  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020D32C  C0 03 03 A0 */	lfs f0, 0x3a0(r3)
/* 8020D330  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D334  41 82 00 2C */	beq lbl_8020D360
/* 8020D338  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020D33C  FC 20 00 90 */	fmr f1, f0
/* 8020D340  48 04 84 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020D344  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020D348  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020D34C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020D350  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020D354  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8020D358  38 A0 00 05 */	li r5, 5
/* 8020D35C  48 00 D7 49 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020D360:
/* 8020D360  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020D364  48 04 84 C5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020D368  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020D36C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020D370  C0 03 03 A8 */	lfs f0, 0x3a8(r3)
/* 8020D374  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020D378  41 82 00 2C */	beq lbl_8020D3A4
/* 8020D37C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8020D380  FC 20 00 90 */	fmr f1, f0
/* 8020D384  48 04 84 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020D388  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020D38C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020D390  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020D394  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020D398  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8020D39C  38 A0 00 05 */	li r5, 5
/* 8020D3A0  48 00 D7 05 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020D3A4:
/* 8020D3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D3AC  7C 08 03 A6 */	mtlr r0
/* 8020D3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D3B4  4E 80 00 20 */	blr 
