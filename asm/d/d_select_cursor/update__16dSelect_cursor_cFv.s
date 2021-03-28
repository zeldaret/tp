lbl_80194CC0:
/* 80194CC0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80194CC4  7C 08 02 A6 */	mflr r0
/* 80194CC8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80194CCC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80194CD0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80194CD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80194CD8  48 1C D5 05 */	bl _savegpr_29
/* 80194CDC  7C 7F 1B 78 */	mr r31, r3
/* 80194CE0  C3 E2 A0 48 */	lfs f31, lit_3673(r2)
/* 80194CE4  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 80194CE8  28 00 00 03 */	cmplwi r0, 3
/* 80194CEC  40 82 00 08 */	bne lbl_80194CF4
/* 80194CF0  C3 E2 A0 54 */	lfs f31, lit_4062(r2)
lbl_80194CF4:
/* 80194CF4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80194CF8  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80194CFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80194D00  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80194D04  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 80194D08  D0 23 00 D8 */	stfs f1, 0xd8(r3)
/* 80194D0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80194D10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80194D14  7D 89 03 A6 */	mtctr r12
/* 80194D18  4E 80 04 21 */	bctrl 
/* 80194D1C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194D20  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80194D24  28 00 00 00 */	cmplwi r0, 0
/* 80194D28  41 82 00 3C */	beq lbl_80194D64
/* 80194D2C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80194D30  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80194D34  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194D38  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80194D3C  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 80194D40  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194D44  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80194D48  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80194D4C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194D50  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80194D54  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 80194D58  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194D5C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80194D60  D0 1F 00 70 */	stfs f0, 0x70(r31)
lbl_80194D64:
/* 80194D64  88 1F 00 B7 */	lbz r0, 0xb7(r31)
/* 80194D68  28 00 00 00 */	cmplwi r0, 0
/* 80194D6C  41 82 02 A4 */	beq lbl_80195010
/* 80194D70  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80194D74  28 00 00 00 */	cmplwi r0, 0
/* 80194D78  41 82 00 D8 */	beq lbl_80194E50
/* 80194D7C  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 80194D80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80194D84  41 82 00 A0 */	beq lbl_80194E24
/* 80194D88  88 1F 00 B5 */	lbz r0, 0xb5(r31)
/* 80194D8C  28 00 00 01 */	cmplwi r0, 1
/* 80194D90  40 82 00 20 */	bne lbl_80194DB0
/* 80194D94  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80194D98  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194D9C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80194DA0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80194DA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80194DA8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80194DAC  48 00 00 10 */	b lbl_80194DBC
lbl_80194DB0:
/* 80194DB0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80194DB4  EC 00 F8 2A */	fadds f0, f0, f31
/* 80194DB8  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_80194DBC:
/* 80194DBC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80194DC0  A8 03 00 06 */	lha r0, 6(r3)
/* 80194DC4  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80194DC8  C8 22 A0 58 */	lfd f1, lit_4064(r2)
/* 80194DCC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80194DD0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80194DD4  3C 00 43 30 */	lis r0, 0x4330
/* 80194DD8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80194DDC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80194DE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80194DE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80194DE8  4C 41 13 82 */	cror 2, 1, 2
/* 80194DEC  40 82 00 1C */	bne lbl_80194E08
/* 80194DF0  90 61 00 24 */	stw r3, 0x24(r1)
/* 80194DF4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80194DF8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80194DFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80194E00  EC 02 00 28 */	fsubs f0, f2, f0
/* 80194E04  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_80194E08:
/* 80194E08  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80194E0C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80194E10  D0 03 00 08 */	stfs f0, 8(r3)
/* 80194E14  7F E3 FB 78 */	mr r3, r31
/* 80194E18  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80194E1C  48 00 06 45 */	bl setBpkAnimation__16dSelect_cursor_cFP11J2DAnmColor
/* 80194E20  48 00 00 30 */	b lbl_80194E50
lbl_80194E24:
/* 80194E24  C0 22 A0 48 */	lfs f1, lit_3673(r2)
/* 80194E28  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80194E2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80194E30  41 82 00 20 */	beq lbl_80194E50
/* 80194E34  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80194E38  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80194E3C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80194E40  D0 03 00 08 */	stfs f0, 8(r3)
/* 80194E44  7F E3 FB 78 */	mr r3, r31
/* 80194E48  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80194E4C  48 00 06 15 */	bl setBpkAnimation__16dSelect_cursor_cFP11J2DAnmColor
lbl_80194E50:
/* 80194E50  3B A0 00 00 */	li r29, 0
/* 80194E54  3B C0 00 00 */	li r30, 0
lbl_80194E58:
/* 80194E58  7C 9F F2 14 */	add r4, r31, r30
/* 80194E5C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80194E60  28 00 00 00 */	cmplwi r0, 0
/* 80194E64  41 82 00 C4 */	beq lbl_80194F28
/* 80194E68  2C 1D 00 00 */	cmpwi r29, 0
/* 80194E6C  40 82 00 10 */	bne lbl_80194E7C
/* 80194E70  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 80194E74  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80194E78  40 82 00 18 */	bne lbl_80194E90
lbl_80194E7C:
/* 80194E7C  2C 1D 00 01 */	cmpwi r29, 1
/* 80194E80  40 82 00 9C */	bne lbl_80194F1C
/* 80194E84  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 80194E88  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80194E8C  41 82 00 90 */	beq lbl_80194F1C
lbl_80194E90:
/* 80194E90  88 1F 00 B5 */	lbz r0, 0xb5(r31)
/* 80194E94  28 00 00 01 */	cmplwi r0, 1
/* 80194E98  40 82 00 20 */	bne lbl_80194EB8
/* 80194E9C  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 80194EA0  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194EA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80194EA8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80194EAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80194EB0  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 80194EB4  48 00 00 10 */	b lbl_80194EC4
lbl_80194EB8:
/* 80194EB8  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80194EBC  EC 00 F8 2A */	fadds f0, f0, f31
/* 80194EC0  D0 04 00 48 */	stfs f0, 0x48(r4)
lbl_80194EC4:
/* 80194EC4  80 64 00 34 */	lwz r3, 0x34(r4)
/* 80194EC8  A8 03 00 06 */	lha r0, 6(r3)
/* 80194ECC  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 80194ED0  C8 22 A0 58 */	lfd f1, lit_4064(r2)
/* 80194ED4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80194ED8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80194EDC  3C 00 43 30 */	lis r0, 0x4330
/* 80194EE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80194EE4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80194EE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80194EEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80194EF0  4C 41 13 82 */	cror 2, 1, 2
/* 80194EF4  40 82 00 1C */	bne lbl_80194F10
/* 80194EF8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80194EFC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80194F00  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80194F04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80194F08  EC 02 00 28 */	fsubs f0, f2, f0
/* 80194F0C  D0 04 00 48 */	stfs f0, 0x48(r4)
lbl_80194F10:
/* 80194F10  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80194F14  80 64 00 34 */	lwz r3, 0x34(r4)
/* 80194F18  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80194F1C:
/* 80194F1C  7F E3 FB 78 */	mr r3, r31
/* 80194F20  80 84 00 34 */	lwz r4, 0x34(r4)
/* 80194F24  48 00 06 CD */	bl setBtk0Animation__16dSelect_cursor_cFP19J2DAnmTextureSRTKey
lbl_80194F28:
/* 80194F28  3B BD 00 01 */	addi r29, r29, 1
/* 80194F2C  2C 1D 00 02 */	cmpwi r29, 2
/* 80194F30  3B DE 00 04 */	addi r30, r30, 4
/* 80194F34  41 80 FF 24 */	blt lbl_80194E58
/* 80194F38  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80194F3C  28 00 00 00 */	cmplwi r0, 0
/* 80194F40  41 82 00 A8 */	beq lbl_80194FE8
/* 80194F44  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 80194F48  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80194F4C  41 82 00 9C */	beq lbl_80194FE8
/* 80194F50  88 1F 00 B5 */	lbz r0, 0xb5(r31)
/* 80194F54  28 00 00 01 */	cmplwi r0, 1
/* 80194F58  40 82 00 20 */	bne lbl_80194F78
/* 80194F5C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80194F60  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80194F64  C0 03 00 08 */	lfs f0, 8(r3)
/* 80194F68  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80194F6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80194F70  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80194F74  48 00 00 10 */	b lbl_80194F84
lbl_80194F78:
/* 80194F78  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80194F7C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80194F80  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_80194F84:
/* 80194F84  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80194F88  A8 03 00 06 */	lha r0, 6(r3)
/* 80194F8C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80194F90  C8 22 A0 58 */	lfd f1, lit_4064(r2)
/* 80194F94  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80194F98  90 61 00 24 */	stw r3, 0x24(r1)
/* 80194F9C  3C 00 43 30 */	lis r0, 0x4330
/* 80194FA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80194FA4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80194FA8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80194FAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80194FB0  4C 41 13 82 */	cror 2, 1, 2
/* 80194FB4  40 82 00 1C */	bne lbl_80194FD0
/* 80194FB8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80194FBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80194FC0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80194FC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80194FC8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80194FCC  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_80194FD0:
/* 80194FD0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80194FD4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80194FD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80194FDC  7F E3 FB 78 */	mr r3, r31
/* 80194FE0  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80194FE4  48 00 08 FD */	bl setBckAnimation__16dSelect_cursor_cFP18J2DAnmTransformKey
lbl_80194FE8:
/* 80194FE8  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 80194FEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80194FF0  41 82 00 18 */	beq lbl_80195008
/* 80194FF4  88 1F 00 B5 */	lbz r0, 0xb5(r31)
/* 80194FF8  28 00 00 00 */	cmplwi r0, 0
/* 80194FFC  40 82 00 0C */	bne lbl_80195008
/* 80195000  7F E3 FB 78 */	mr r3, r31
/* 80195004  48 00 07 21 */	bl setCursorAnimation__16dSelect_cursor_cFv
lbl_80195008:
/* 80195008  80 7F 00 04 */	lwz r3, 4(r31)
/* 8019500C  48 16 46 85 */	bl animation__9J2DScreenFv
lbl_80195010:
/* 80195010  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80195014  28 00 00 00 */	cmplwi r0, 0
/* 80195018  41 82 00 70 */	beq lbl_80195088
/* 8019501C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80195020  28 04 00 00 */	cmplwi r4, 0
/* 80195024  41 82 00 64 */	beq lbl_80195088
/* 80195028  38 61 00 08 */	addi r3, r1, 8
/* 8019502C  80 A4 00 04 */	lwz r5, 4(r4)
/* 80195030  38 C0 00 00 */	li r6, 0
/* 80195034  38 E0 00 00 */	li r7, 0
/* 80195038  48 0B FE 85 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 8019503C  80 61 00 08 */	lwz r3, 8(r1)
/* 80195040  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80195044  90 61 00 14 */	stw r3, 0x14(r1)
/* 80195048  90 01 00 18 */	stw r0, 0x18(r1)
/* 8019504C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80195050  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80195054  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80195058  80 83 00 04 */	lwz r4, 4(r3)
/* 8019505C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80195060  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80195064  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80195068  48 00 0B 09 */	bl setPos__14dSelect_icon_cFP7J2DPaneff
/* 8019506C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80195070  48 00 09 CD */	bl animation__14dSelect_icon_cFv
/* 80195074  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80195078  80 63 00 04 */	lwz r3, 4(r3)
/* 8019507C  88 83 00 B2 */	lbz r4, 0xb2(r3)
/* 80195080  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80195084  48 00 0A BD */	bl setAlpha__14dSelect_icon_cFUc
lbl_80195088:
/* 80195088  3B A0 00 00 */	li r29, 0
/* 8019508C  3B C0 00 00 */	li r30, 0
lbl_80195090:
/* 80195090  38 1E 00 1C */	addi r0, r30, 0x1c
/* 80195094  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80195098  28 03 00 00 */	cmplwi r3, 0
/* 8019509C  41 82 00 28 */	beq lbl_801950C4
/* 801950A0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 801950A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801950A8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 801950AC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801950B0  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 801950B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801950B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801950BC  7D 89 03 A6 */	mtctr r12
/* 801950C0  4E 80 04 21 */	bctrl 
lbl_801950C4:
/* 801950C4  3B BD 00 01 */	addi r29, r29, 1
/* 801950C8  2C 1D 00 04 */	cmpwi r29, 4
/* 801950CC  3B DE 00 04 */	addi r30, r30, 4
/* 801950D0  41 80 FF C0 */	blt lbl_80195090
/* 801950D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801950D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801950DC  39 61 00 40 */	addi r11, r1, 0x40
/* 801950E0  48 1C D1 49 */	bl _restgpr_29
/* 801950E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801950E8  7C 08 03 A6 */	mtlr r0
/* 801950EC  38 21 00 50 */	addi r1, r1, 0x50
/* 801950F0  4E 80 00 20 */	blr 
