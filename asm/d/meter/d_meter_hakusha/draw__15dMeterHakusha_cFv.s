lbl_8020C850:
/* 8020C850  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8020C854  7C 08 02 A6 */	mflr r0
/* 8020C858  90 01 00 64 */	stw r0, 0x64(r1)
/* 8020C85C  39 61 00 60 */	addi r11, r1, 0x60
/* 8020C860  48 15 59 69 */	bl _savegpr_24
/* 8020C864  7C 7A 1B 78 */	mr r26, r3
/* 8020C868  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020C86C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020C870  83 A3 5F 50 */	lwz r29, 0x5f50(r3)
/* 8020C874  7F A3 EB 78 */	mr r3, r29
/* 8020C878  81 9D 00 00 */	lwz r12, 0(r29)
/* 8020C87C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8020C880  7D 89 03 A6 */	mtctr r12
/* 8020C884  4E 80 04 21 */	bctrl 
/* 8020C888  C0 3A 00 FC */	lfs f1, 0xfc(r26)
/* 8020C88C  80 7A 00 34 */	lwz r3, 0x34(r26)
/* 8020C890  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C894  C0 1A 00 F8 */	lfs f0, 0xf8(r26)
/* 8020C898  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020C89C  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 8020C8A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C8A4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C8A8  7D 89 03 A6 */	mtctr r12
/* 8020C8AC  4E 80 04 21 */	bctrl 
/* 8020C8B0  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 8020C8B4  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020C8B8  FC 40 08 90 */	fmr f2, f1
/* 8020C8BC  7F A4 EB 78 */	mr r4, r29
/* 8020C8C0  48 0E C6 15 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020C8C4  3B 60 00 00 */	li r27, 0
/* 8020C8C8  3B 20 00 00 */	li r25, 0
/* 8020C8CC  3B 00 00 00 */	li r24, 0
/* 8020C8D0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020C8D4  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020C8D8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020C8DC  3B E3 01 88 */	addi r31, r3, g_meter2_info@l /* 0x80430188@l */
/* 8020C8E0  48 00 01 B4 */	b lbl_8020CA94
lbl_8020C8E4:
/* 8020C8E4  7F 9A C2 14 */	add r28, r26, r24
/* 8020C8E8  88 1C 00 40 */	lbz r0, 0x40(r28)
/* 8020C8EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020C8F0  41 82 00 10 */	beq lbl_8020C900
/* 8020C8F4  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8020C8F8  48 04 8C D1 */	bl show__13CPaneMgrAlphaFv
/* 8020C8FC  48 00 00 0C */	b lbl_8020C908
lbl_8020C900:
/* 8020C900  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8020C904  48 04 8D 05 */	bl hide__13CPaneMgrAlphaFv
lbl_8020C908:
/* 8020C908  88 1C 00 40 */	lbz r0, 0x40(r28)
/* 8020C90C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020C910  41 82 00 10 */	beq lbl_8020C920
/* 8020C914  80 7A 00 30 */	lwz r3, 0x30(r26)
/* 8020C918  48 04 8C B1 */	bl show__13CPaneMgrAlphaFv
/* 8020C91C  48 00 00 0C */	b lbl_8020C928
lbl_8020C920:
/* 8020C920  80 7A 00 30 */	lwz r3, 0x30(r26)
/* 8020C924  48 04 8C E5 */	bl hide__13CPaneMgrAlphaFv
lbl_8020C928:
/* 8020C928  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8020C92C  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 8020C930  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C934  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 8020C938  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020C93C  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 8020C940  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C944  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C948  7D 89 03 A6 */	mtctr r12
/* 8020C94C  4E 80 04 21 */	bctrl 
/* 8020C950  C0 3C 00 3C */	lfs f1, 0x3c(r28)
/* 8020C954  80 7A 00 30 */	lwz r3, 0x30(r26)
/* 8020C958  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C95C  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 8020C960  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020C964  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 8020C968  81 83 00 00 */	lwz r12, 0(r3)
/* 8020C96C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020C970  7D 89 03 A6 */	mtctr r12
/* 8020C974  4E 80 04 21 */	bctrl 
/* 8020C978  80 7A 00 08 */	lwz r3, 8(r26)
/* 8020C97C  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020C980  FC 40 08 90 */	fmr f2, f1
/* 8020C984  7F A4 EB 78 */	mr r4, r29
/* 8020C988  48 0E C5 4D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8020C98C  88 1C 00 40 */	lbz r0, 0x40(r28)
/* 8020C990  28 00 00 00 */	cmplwi r0, 0
/* 8020C994  41 82 00 F4 */	beq lbl_8020CA88
/* 8020C998  C0 22 AE 00 */	lfs f1, lit_3793(r2)
/* 8020C99C  3B 99 00 C8 */	addi r28, r25, 0xc8
/* 8020C9A0  7C 1A E4 2E */	lfsx f0, r26, r28
/* 8020C9A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8020C9A8  41 82 00 E0 */	beq lbl_8020CA88
/* 8020C9AC  80 9A 00 2C */	lwz r4, 0x2c(r26)
/* 8020C9B0  38 61 00 28 */	addi r3, r1, 0x28
/* 8020C9B4  80 A4 00 04 */	lwz r5, 4(r4)
/* 8020C9B8  38 C0 00 00 */	li r6, 0
/* 8020C9BC  38 E0 00 00 */	li r7, 0
/* 8020C9C0  48 04 84 FD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8020C9C4  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8020C9C8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8020C9CC  90 61 00 34 */	stw r3, 0x34(r1)
/* 8020C9D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8020C9D4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8020C9D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8020C9DC  38 1B 01 0A */	addi r0, r27, 0x10a
/* 8020C9E0  7C 1A 00 AE */	lbzx r0, r26, r0
/* 8020C9E4  28 00 00 00 */	cmplwi r0, 0
/* 8020C9E8  40 82 00 54 */	bne lbl_8020CA3C
/* 8020C9EC  80 1E 04 38 */	lwz r0, 0x438(r30)
/* 8020C9F0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8020C9F4  80 1E 04 3C */	lwz r0, 0x43c(r30)
/* 8020C9F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020C9FC  80 1E 04 30 */	lwz r0, 0x430(r30)
/* 8020CA00  90 01 00 20 */	stw r0, 0x20(r1)
/* 8020CA04  80 1E 04 34 */	lwz r0, 0x434(r30)
/* 8020CA08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020CA0C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8020CA10  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020CA14  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8020CA18  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8020CA1C  7C 7A E4 2E */	lfsx f3, r26, r28
/* 8020CA20  C0 9E 03 E0 */	lfs f4, 0x3e0(r30)
/* 8020CA24  38 81 00 24 */	addi r4, r1, 0x24
/* 8020CA28  38 A1 00 20 */	addi r5, r1, 0x20
/* 8020CA2C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8020CA30  38 E1 00 18 */	addi r7, r1, 0x18
/* 8020CA34  48 00 7B F9 */	bl drawPikariHakusha__13dMeter2Draw_cFffffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 8020CA38  48 00 00 50 */	b lbl_8020CA88
lbl_8020CA3C:
/* 8020CA3C  80 1E 04 4C */	lwz r0, 0x44c(r30)
/* 8020CA40  90 01 00 08 */	stw r0, 8(r1)
/* 8020CA44  80 1E 04 50 */	lwz r0, 0x450(r30)
/* 8020CA48  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020CA4C  80 1E 04 44 */	lwz r0, 0x444(r30)
/* 8020CA50  90 01 00 10 */	stw r0, 0x10(r1)
/* 8020CA54  80 1E 04 48 */	lwz r0, 0x448(r30)
/* 8020CA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020CA5C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8020CA60  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 8020CA64  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8020CA68  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8020CA6C  7C 7A E4 2E */	lfsx f3, r26, r28
/* 8020CA70  C0 9E 03 E4 */	lfs f4, 0x3e4(r30)
/* 8020CA74  38 81 00 14 */	addi r4, r1, 0x14
/* 8020CA78  38 A1 00 10 */	addi r5, r1, 0x10
/* 8020CA7C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8020CA80  38 E1 00 08 */	addi r7, r1, 8
/* 8020CA84  48 00 7B A9 */	bl drawPikariHakusha__13dMeter2Draw_cFffffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
lbl_8020CA88:
/* 8020CA88  3B 7B 00 01 */	addi r27, r27, 1
/* 8020CA8C  3B 39 00 04 */	addi r25, r25, 4
/* 8020CA90  3B 18 00 0C */	addi r24, r24, 0xc
lbl_8020CA94:
/* 8020CA94  7F 43 D3 78 */	mr r3, r26
/* 8020CA98  48 00 09 E9 */	bl getHakushaNum__15dMeterHakusha_cFv
/* 8020CA9C  7C 1B 18 00 */	cmpw r27, r3
/* 8020CAA0  41 80 FE 44 */	blt lbl_8020C8E4
/* 8020CAA4  39 61 00 60 */	addi r11, r1, 0x60
/* 8020CAA8  48 15 57 6D */	bl _restgpr_24
/* 8020CAAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8020CAB0  7C 08 03 A6 */	mtlr r0
/* 8020CAB4  38 21 00 60 */	addi r1, r1, 0x60
/* 8020CAB8  4E 80 00 20 */	blr 
