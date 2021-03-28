lbl_800F9ABC:
/* 800F9ABC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800F9AC0  7C 08 02 A6 */	mflr r0
/* 800F9AC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800F9AC8  39 61 00 30 */	addi r11, r1, 0x30
/* 800F9ACC  48 26 87 0D */	bl _savegpr_28
/* 800F9AD0  7C 7F 1B 78 */	mr r31, r3
/* 800F9AD4  38 00 00 0C */	li r0, 0xc
/* 800F9AD8  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800F9ADC  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800F9AE0  AB A3 04 E6 */	lha r29, 0x4e6(r3)
/* 800F9AE4  AB 83 04 DE */	lha r28, 0x4de(r3)
/* 800F9AE8  A8 83 30 08 */	lha r4, 0x3008(r3)
/* 800F9AEC  7C 80 07 35 */	extsh. r0, r4
/* 800F9AF0  40 81 00 84 */	ble lbl_800F9B74
/* 800F9AF4  7F C3 F3 78 */	mr r3, r30
/* 800F9AF8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800F9AFC  48 22 E9 31 */	bl checkPass__12J3DFrameCtrlFf
/* 800F9B00  2C 03 00 00 */	cmpwi r3, 0
/* 800F9B04  40 82 00 18 */	bne lbl_800F9B1C
/* 800F9B08  7F C3 F3 78 */	mr r3, r30
/* 800F9B0C  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 800F9B10  48 22 E9 1D */	bl checkPass__12J3DFrameCtrlFf
/* 800F9B14  2C 03 00 00 */	cmpwi r3, 0
/* 800F9B18  41 82 00 1C */	beq lbl_800F9B34
lbl_800F9B1C:
/* 800F9B1C  7F E3 FB 78 */	mr r3, r31
/* 800F9B20  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 800F9B24  4B FF F3 E5 */	bl stopHalfMoveAnime__9daAlink_cFf
/* 800F9B28  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9B2C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800F9B30  48 00 00 28 */	b lbl_800F9B58
lbl_800F9B34:
/* 800F9B34  7F C3 F3 78 */	mr r3, r30
/* 800F9B38  48 06 49 95 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F9B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F9B40  41 82 00 18 */	beq lbl_800F9B58
/* 800F9B44  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9B48  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800F9B4C  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800F9B50  38 03 FF FF */	addi r0, r3, -1
/* 800F9B54  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800F9B58:
/* 800F9B58  7F E3 FB 78 */	mr r3, r31
/* 800F9B5C  4B FF E1 8D */	bl setCrawlMoveDirectionArrow__9daAlink_cFv
/* 800F9B60  7F E3 FB 78 */	mr r3, r31
/* 800F9B64  4B FF ED 95 */	bl decideCrawlDoStatus__9daAlink_cFv
/* 800F9B68  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
/* 800F9B6C  B3 9F 04 DE */	sth r28, 0x4de(r31)
/* 800F9B70  48 00 01 E8 */	b lbl_800F9D58
lbl_800F9B74:
/* 800F9B74  7C 80 07 35 */	extsh. r0, r4
/* 800F9B78  40 82 00 A0 */	bne lbl_800F9C18
/* 800F9B7C  4B FF E1 6D */	bl setCrawlMoveDirectionArrow__9daAlink_cFv
/* 800F9B80  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800F9B84  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F9B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F9B8C  40 81 00 78 */	ble lbl_800F9C04
/* 800F9B90  7F E3 FB 78 */	mr r3, r31
/* 800F9B94  4B FF F3 F1 */	bl setCrawlAutoMoveAimPos__9daAlink_cFv
/* 800F9B98  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800F9B9C  2C 00 FF FF */	cmpwi r0, -1
/* 800F9BA0  40 82 01 B8 */	bne lbl_800F9D58
/* 800F9BA4  38 00 00 00 */	li r0, 0
/* 800F9BA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F9BAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F9BB0  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800F9BB4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F9BB8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800F9BBC  7C 03 00 00 */	cmpw r3, r0
/* 800F9BC0  40 82 00 20 */	bne lbl_800F9BE0
/* 800F9BC4  7F E3 FB 78 */	mr r3, r31
/* 800F9BC8  7F C4 F3 78 */	mr r4, r30
/* 800F9BCC  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800F9BD0  48 00 81 25 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F9BD4  38 00 00 00 */	li r0, 0
/* 800F9BD8  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 800F9BDC  48 00 00 1C */	b lbl_800F9BF8
lbl_800F9BE0:
/* 800F9BE0  7F E3 FB 78 */	mr r3, r31
/* 800F9BE4  7F C4 F3 78 */	mr r4, r30
/* 800F9BE8  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 800F9BEC  48 00 81 09 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800F9BF0  A8 1E 00 08 */	lha r0, 8(r30)
/* 800F9BF4  B0 1E 00 0A */	sth r0, 0xa(r30)
lbl_800F9BF8:
/* 800F9BF8  7F E3 FB 78 */	mr r3, r31
/* 800F9BFC  4B FC 57 81 */	bl initBasAnime__9daAlink_cFv
/* 800F9C00  48 00 01 58 */	b lbl_800F9D58
lbl_800F9C04:
/* 800F9C04  7F E3 FB 78 */	mr r3, r31
/* 800F9C08  4B FF EC F1 */	bl decideCrawlDoStatus__9daAlink_cFv
/* 800F9C0C  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
/* 800F9C10  B3 9F 04 DE */	sth r28, 0x4de(r31)
/* 800F9C14  48 00 01 44 */	b lbl_800F9D58
lbl_800F9C18:
/* 800F9C18  3B 80 00 01 */	li r28, 1
/* 800F9C1C  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 800F9C20  2C 03 00 00 */	cmpwi r3, 0
/* 800F9C24  40 81 00 0C */	ble lbl_800F9C30
/* 800F9C28  38 03 FF FF */	addi r0, r3, -1
/* 800F9C2C  B0 1F 30 0A */	sth r0, 0x300a(r31)
lbl_800F9C30:
/* 800F9C30  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800F9C34  2C 00 00 00 */	cmpwi r0, 0
/* 800F9C38  41 82 00 80 */	beq lbl_800F9CB8
/* 800F9C3C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800F9C40  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800F9C44  38 A0 00 05 */	li r5, 5
/* 800F9C48  38 C0 04 80 */	li r6, 0x480
/* 800F9C4C  38 E0 00 80 */	li r7, 0x80
/* 800F9C50  48 17 68 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 800F9C54  7C 60 07 35 */	extsh. r0, r3
/* 800F9C58  41 82 00 08 */	beq lbl_800F9C60
/* 800F9C5C  3B 80 00 00 */	li r28, 0
lbl_800F9C60:
/* 800F9C60  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800F9C64  2C 00 00 00 */	cmpwi r0, 0
/* 800F9C68  40 80 00 18 */	bge lbl_800F9C80
/* 800F9C6C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F9C70  3C 63 00 01 */	addis r3, r3, 1
/* 800F9C74  38 03 80 00 */	addi r0, r3, -32768
/* 800F9C78  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800F9C7C  48 00 00 0C */	b lbl_800F9C88
lbl_800F9C80:
/* 800F9C80  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F9C84  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800F9C88:
/* 800F9C88  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800F9C8C  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800F9C90  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F9C94  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800F9C98  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 800F9C9C  48 17 5C E1 */	bl cLib_addCalc__FPfffff
/* 800F9CA0  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 800F9CA4  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800F9CA8  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F9CAC  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800F9CB0  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 800F9CB4  48 17 5C C9 */	bl cLib_addCalc__FPfffff
lbl_800F9CB8:
/* 800F9CB8  38 61 00 08 */	addi r3, r1, 8
/* 800F9CBC  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 800F9CC0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800F9CC4  48 16 CE 71 */	bl __mi__4cXyzCFRC3Vec
/* 800F9CC8  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F9CCC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800F9CD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F9CD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800F9CD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F9CDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800F9CE0  38 61 00 14 */	addi r3, r1, 0x14
/* 800F9CE4  48 16 D4 45 */	bl atan2sX_Z__4cXyzCFv
/* 800F9CE8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 800F9CEC  48 17 71 39 */	bl cLib_distanceAngleS__Fss
/* 800F9CF0  2C 03 60 00 */	cmpwi r3, 0x6000
/* 800F9CF4  40 80 00 08 */	bge lbl_800F9CFC
/* 800F9CF8  3B 80 00 00 */	li r28, 0
lbl_800F9CFC:
/* 800F9CFC  7F E3 FB 78 */	mr r3, r31
/* 800F9D00  4B FF DF 75 */	bl getCrawlMoveSpeed__9daAlink_cFv
/* 800F9D04  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 800F9D08  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800F9D0C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F9D10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F9D14  40 80 00 20 */	bge lbl_800F9D34
/* 800F9D18  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800F9D1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F9D20  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800F9D24  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800F9D28  3C 63 00 01 */	addis r3, r3, 1
/* 800F9D2C  38 03 80 00 */	addi r0, r3, -32768
/* 800F9D30  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800F9D34:
/* 800F9D34  2C 1C 00 00 */	cmpwi r28, 0
/* 800F9D38  40 82 00 10 */	bne lbl_800F9D48
/* 800F9D3C  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 800F9D40  2C 00 00 00 */	cmpwi r0, 0
/* 800F9D44  40 82 00 14 */	bne lbl_800F9D58
lbl_800F9D48:
/* 800F9D48  7F E3 FB 78 */	mr r3, r31
/* 800F9D4C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800F9D50  A8 BF 04 E8 */	lha r5, 0x4e8(r31)
/* 800F9D54  4B FF F7 21 */	bl procCrawlMoveInit__9daAlink_cFss
lbl_800F9D58:
/* 800F9D58  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F9D5C  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 800F9D60  38 60 00 01 */	li r3, 1
/* 800F9D64  39 61 00 30 */	addi r11, r1, 0x30
/* 800F9D68  48 26 84 BD */	bl _restgpr_28
/* 800F9D6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800F9D70  7C 08 03 A6 */	mtlr r0
/* 800F9D74  38 21 00 30 */	addi r1, r1, 0x30
/* 800F9D78  4E 80 00 20 */	blr 
