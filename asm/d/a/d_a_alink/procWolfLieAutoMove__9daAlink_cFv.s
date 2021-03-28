lbl_80137D4C:
/* 80137D4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80137D50  7C 08 02 A6 */	mflr r0
/* 80137D54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80137D58  39 61 00 30 */	addi r11, r1, 0x30
/* 80137D5C  48 22 A4 7D */	bl _savegpr_28
/* 80137D60  7C 7F 1B 78 */	mr r31, r3
/* 80137D64  38 00 00 0D */	li r0, 0xd
/* 80137D68  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 80137D6C  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 80137D70  AB A3 04 E6 */	lha r29, 0x4e6(r3)
/* 80137D74  AB 83 04 DE */	lha r28, 0x4de(r3)
/* 80137D78  38 80 00 01 */	li r4, 1
/* 80137D7C  4B FF F5 B5 */	bl setWolfLieMoveVoice__9daAlink_cFi
/* 80137D80  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 80137D84  7C 60 07 35 */	extsh. r0, r3
/* 80137D88  40 81 00 84 */	ble lbl_80137E0C
/* 80137D8C  7F C3 F3 78 */	mr r3, r30
/* 80137D90  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80137D94  48 1F 06 99 */	bl checkPass__12J3DFrameCtrlFf
/* 80137D98  2C 03 00 00 */	cmpwi r3, 0
/* 80137D9C  40 82 00 18 */	bne lbl_80137DB4
/* 80137DA0  7F C3 F3 78 */	mr r3, r30
/* 80137DA4  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80137DA8  48 1F 06 85 */	bl checkPass__12J3DFrameCtrlFf
/* 80137DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80137DB0  41 82 00 1C */	beq lbl_80137DCC
lbl_80137DB4:
/* 80137DB4  7F E3 FB 78 */	mr r3, r31
/* 80137DB8  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80137DBC  4B FC 11 4D */	bl stopHalfMoveAnime__9daAlink_cFf
/* 80137DC0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80137DC4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80137DC8  48 00 00 28 */	b lbl_80137DF0
lbl_80137DCC:
/* 80137DCC  7F C3 F3 78 */	mr r3, r30
/* 80137DD0  48 02 66 FD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80137DD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137DD8  41 82 00 18 */	beq lbl_80137DF0
/* 80137DDC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80137DE0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80137DE4  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 80137DE8  38 03 FF FF */	addi r0, r3, -1
/* 80137DEC  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_80137DF0:
/* 80137DF0  7F E3 FB 78 */	mr r3, r31
/* 80137DF4  4B FB FE F5 */	bl setCrawlMoveDirectionArrow__9daAlink_cFv
/* 80137DF8  7F E3 FB 78 */	mr r3, r31
/* 80137DFC  4B FC 0A FD */	bl decideCrawlDoStatus__9daAlink_cFv
/* 80137E00  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
/* 80137E04  B3 9F 04 DE */	sth r28, 0x4de(r31)
/* 80137E08  48 00 01 D4 */	b lbl_80137FDC
lbl_80137E0C:
/* 80137E0C  7C 60 07 35 */	extsh. r0, r3
/* 80137E10  40 82 00 90 */	bne lbl_80137EA0
/* 80137E14  7F E3 FB 78 */	mr r3, r31
/* 80137E18  4B FB FE D1 */	bl setCrawlMoveDirectionArrow__9daAlink_cFv
/* 80137E1C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 80137E20  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80137E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137E28  40 81 00 64 */	ble lbl_80137E8C
/* 80137E2C  7F E3 FB 78 */	mr r3, r31
/* 80137E30  4B FC 11 55 */	bl setCrawlAutoMoveAimPos__9daAlink_cFv
/* 80137E34  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 80137E38  2C 00 FF FF */	cmpwi r0, -1
/* 80137E3C  40 82 01 A0 */	bne lbl_80137FDC
/* 80137E40  38 80 00 00 */	li r4, 0
/* 80137E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80137E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80137E4C  98 83 5E 81 */	stb r4, 0x5e81(r3)
/* 80137E50  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80137E54  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80137E58  7C 03 00 00 */	cmpw r3, r0
/* 80137E5C  40 82 00 14 */	bne lbl_80137E70
/* 80137E60  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 80137E64  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80137E68  B0 9E 00 0A */	sth r4, 0xa(r30)
/* 80137E6C  48 00 00 14 */	b lbl_80137E80
lbl_80137E70:
/* 80137E70  C0 02 93 6C */	lfs f0, lit_8473(r2)
/* 80137E74  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80137E78  A8 1E 00 08 */	lha r0, 8(r30)
/* 80137E7C  B0 1E 00 0A */	sth r0, 0xa(r30)
lbl_80137E80:
/* 80137E80  7F E3 FB 78 */	mr r3, r31
/* 80137E84  4B F8 74 F9 */	bl initBasAnime__9daAlink_cFv
/* 80137E88  48 00 01 54 */	b lbl_80137FDC
lbl_80137E8C:
/* 80137E8C  7F E3 FB 78 */	mr r3, r31
/* 80137E90  4B FC 0A 69 */	bl decideCrawlDoStatus__9daAlink_cFv
/* 80137E94  B3 BF 04 E6 */	sth r29, 0x4e6(r31)
/* 80137E98  B3 9F 04 DE */	sth r28, 0x4de(r31)
/* 80137E9C  48 00 01 40 */	b lbl_80137FDC
lbl_80137EA0:
/* 80137EA0  3B 80 00 01 */	li r28, 1
/* 80137EA4  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 80137EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80137EAC  40 81 00 0C */	ble lbl_80137EB8
/* 80137EB0  38 03 FF FF */	addi r0, r3, -1
/* 80137EB4  B0 1F 30 0A */	sth r0, 0x300a(r31)
lbl_80137EB8:
/* 80137EB8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80137EBC  2C 00 00 00 */	cmpwi r0, 0
/* 80137EC0  41 82 00 80 */	beq lbl_80137F40
/* 80137EC4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80137EC8  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 80137ECC  38 A0 00 05 */	li r5, 5
/* 80137ED0  38 C0 04 80 */	li r6, 0x480
/* 80137ED4  38 E0 00 80 */	li r7, 0x80
/* 80137ED8  48 13 86 69 */	bl cLib_addCalcAngleS__FPsssss
/* 80137EDC  7C 60 07 35 */	extsh. r0, r3
/* 80137EE0  41 82 00 08 */	beq lbl_80137EE8
/* 80137EE4  3B 80 00 00 */	li r28, 0
lbl_80137EE8:
/* 80137EE8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80137EEC  2C 00 00 00 */	cmpwi r0, 0
/* 80137EF0  40 80 00 18 */	bge lbl_80137F08
/* 80137EF4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80137EF8  3C 63 00 01 */	addis r3, r3, 1
/* 80137EFC  38 03 80 00 */	addi r0, r3, -32768
/* 80137F00  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80137F04  48 00 00 0C */	b lbl_80137F10
lbl_80137F08:
/* 80137F08  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80137F0C  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80137F10:
/* 80137F10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80137F14  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 80137F18  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 80137F1C  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 80137F20  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 80137F24  48 13 7A 59 */	bl cLib_addCalc__FPfffff
/* 80137F28  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 80137F2C  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 80137F30  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 80137F34  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 80137F38  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 80137F3C  48 13 7A 41 */	bl cLib_addCalc__FPfffff
lbl_80137F40:
/* 80137F40  38 61 00 08 */	addi r3, r1, 8
/* 80137F44  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 80137F48  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80137F4C  48 12 EB E9 */	bl __mi__4cXyzCFRC3Vec
/* 80137F50  C0 01 00 08 */	lfs f0, 8(r1)
/* 80137F54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80137F58  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80137F5C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80137F60  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80137F64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80137F68  38 61 00 14 */	addi r3, r1, 0x14
/* 80137F6C  48 12 F1 BD */	bl atan2sX_Z__4cXyzCFv
/* 80137F70  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80137F74  48 13 8E B1 */	bl cLib_distanceAngleS__Fss
/* 80137F78  2C 03 60 00 */	cmpwi r3, 0x6000
/* 80137F7C  40 80 00 08 */	bge lbl_80137F84
/* 80137F80  3B 80 00 00 */	li r28, 0
lbl_80137F84:
/* 80137F84  7F E3 FB 78 */	mr r3, r31
/* 80137F88  4B FF F1 A5 */	bl getWolfLieMoveSpeed__9daAlink_cFv
/* 80137F8C  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 80137F90  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 80137F94  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80137F98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137F9C  40 80 00 20 */	bge lbl_80137FBC
/* 80137FA0  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80137FA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80137FA8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80137FAC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80137FB0  3C 63 00 01 */	addis r3, r3, 1
/* 80137FB4  38 03 80 00 */	addi r0, r3, -32768
/* 80137FB8  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80137FBC:
/* 80137FBC  2C 1C 00 00 */	cmpwi r28, 0
/* 80137FC0  40 82 00 10 */	bne lbl_80137FD0
/* 80137FC4  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 80137FC8  2C 00 00 00 */	cmpwi r0, 0
/* 80137FCC  40 82 00 10 */	bne lbl_80137FDC
lbl_80137FD0:
/* 80137FD0  7F E3 FB 78 */	mr r3, r31
/* 80137FD4  38 80 00 00 */	li r4, 0
/* 80137FD8  4B FF F6 5D */	bl procWolfLieMoveInit__9daAlink_cFi
lbl_80137FDC:
/* 80137FDC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80137FE0  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 80137FE4  38 60 00 01 */	li r3, 1
/* 80137FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80137FEC  48 22 A2 39 */	bl _restgpr_28
/* 80137FF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80137FF4  7C 08 03 A6 */	mtlr r0
/* 80137FF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80137FFC  4E 80 00 20 */	blr 
