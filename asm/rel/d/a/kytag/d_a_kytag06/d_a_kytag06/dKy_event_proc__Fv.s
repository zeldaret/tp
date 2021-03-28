lbl_80857A50:
/* 80857A50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80857A54  7C 08 02 A6 */	mflr r0
/* 80857A58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80857A5C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80857A60  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80857A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80857A68  4B B0 A7 70 */	b _savegpr_28
/* 80857A6C  3C 60 80 86 */	lis r3, lit_3740@ha
/* 80857A70  3B A3 9E 78 */	addi r29, r3, lit_3740@l
/* 80857A74  3C 60 80 86 */	lis r3, cNullVec__6Z2Calc@ha
/* 80857A78  3B E3 9F A0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80857A7C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80857A80  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80857A84  88 1E 12 D8 */	lbz r0, 0x12d8(r30)
/* 80857A88  28 00 00 00 */	cmplwi r0, 0
/* 80857A8C  40 82 04 7C */	bne lbl_80857F08
/* 80857A90  88 1E 12 D2 */	lbz r0, 0x12d2(r30)
/* 80857A94  28 00 00 00 */	cmplwi r0, 0
/* 80857A98  40 82 04 70 */	bne lbl_80857F08
/* 80857A9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80857AA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80857AA4  C3 E3 00 34 */	lfs f31, 0x34(r3)
/* 80857AA8  88 1E 12 CA */	lbz r0, 0x12ca(r30)
/* 80857AAC  2C 00 00 02 */	cmpwi r0, 2
/* 80857AB0  41 82 01 70 */	beq lbl_80857C20
/* 80857AB4  40 80 00 14 */	bge lbl_80857AC8
/* 80857AB8  2C 00 00 00 */	cmpwi r0, 0
/* 80857ABC  41 82 00 18 */	beq lbl_80857AD4
/* 80857AC0  40 80 00 3C */	bge lbl_80857AFC
/* 80857AC4  48 00 02 A4 */	b lbl_80857D68
lbl_80857AC8:
/* 80857AC8  2C 00 00 04 */	cmpwi r0, 4
/* 80857ACC  40 80 02 9C */	bge lbl_80857D68
/* 80857AD0  48 00 02 50 */	b lbl_80857D20
lbl_80857AD4:
/* 80857AD4  C0 1E 11 D4 */	lfs f0, 0x11d4(r30)
/* 80857AD8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80857ADC  40 81 02 8C */	ble lbl_80857D68
/* 80857AE0  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80857AE4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80857AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80857AEC  40 80 02 7C */	bge lbl_80857D68
/* 80857AF0  38 00 00 01 */	li r0, 1
/* 80857AF4  98 1E 12 CA */	stb r0, 0x12ca(r30)
/* 80857AF8  48 00 02 70 */	b lbl_80857D68
lbl_80857AFC:
/* 80857AFC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80857B00  4B A0 FE 54 */	b cM_rndF__Ff
/* 80857B04  FC 00 08 1E */	fctiwz f0, f1
/* 80857B08  D8 01 00 08 */	stfd f0, 8(r1)
/* 80857B0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80857B10  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80857B14  28 00 00 08 */	cmplwi r0, 8
/* 80857B18  41 80 00 10 */	blt lbl_80857B28
/* 80857B1C  38 00 00 03 */	li r0, 3
/* 80857B20  98 1E 12 CA */	stb r0, 0x12ca(r30)
/* 80857B24  48 00 02 44 */	b lbl_80857D68
lbl_80857B28:
/* 80857B28  38 7F 00 40 */	addi r3, r31, 0x40
/* 80857B2C  7C 63 00 AE */	lbzx r3, r3, r0
/* 80857B30  98 7E 12 CB */	stb r3, 0x12cb(r30)
/* 80857B34  38 00 00 00 */	li r0, 0
/* 80857B38  90 1E 12 98 */	stw r0, 0x1298(r30)
/* 80857B3C  2C 03 00 02 */	cmpwi r3, 2
/* 80857B40  41 82 00 68 */	beq lbl_80857BA8
/* 80857B44  40 80 00 14 */	bge lbl_80857B58
/* 80857B48  2C 03 00 00 */	cmpwi r3, 0
/* 80857B4C  41 82 00 1C */	beq lbl_80857B68
/* 80857B50  40 80 00 38 */	bge lbl_80857B88
/* 80857B54  48 00 00 B0 */	b lbl_80857C04
lbl_80857B58:
/* 80857B58  2C 03 00 04 */	cmpwi r3, 4
/* 80857B5C  41 82 00 8C */	beq lbl_80857BE8
/* 80857B60  40 80 00 A4 */	bge lbl_80857C04
/* 80857B64  48 00 00 64 */	b lbl_80857BC8
lbl_80857B68:
/* 80857B68  38 7F 00 48 */	addi r3, r31, 0x48
/* 80857B6C  88 63 00 00 */	lbz r3, 0(r3)
/* 80857B70  54 00 10 3A */	slwi r0, r0, 2
/* 80857B74  38 9F 00 4C */	addi r4, r31, 0x4c
/* 80857B78  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857B7C  FC 40 F8 90 */	fmr f2, f31
/* 80857B80  4B FF FC ED */	bl dice_wether_init__FUcff
/* 80857B84  48 00 00 80 */	b lbl_80857C04
lbl_80857B88:
/* 80857B88  38 7F 00 58 */	addi r3, r31, 0x58
/* 80857B8C  88 63 00 00 */	lbz r3, 0(r3)
/* 80857B90  54 00 10 3A */	slwi r0, r0, 2
/* 80857B94  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80857B98  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857B9C  FC 40 F8 90 */	fmr f2, f31
/* 80857BA0  4B FF FC CD */	bl dice_wether_init__FUcff
/* 80857BA4  48 00 00 60 */	b lbl_80857C04
lbl_80857BA8:
/* 80857BA8  38 7F 00 68 */	addi r3, r31, 0x68
/* 80857BAC  88 63 00 00 */	lbz r3, 0(r3)
/* 80857BB0  54 00 10 3A */	slwi r0, r0, 2
/* 80857BB4  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80857BB8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857BBC  FC 40 F8 90 */	fmr f2, f31
/* 80857BC0  4B FF FC AD */	bl dice_wether_init__FUcff
/* 80857BC4  48 00 00 40 */	b lbl_80857C04
lbl_80857BC8:
/* 80857BC8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80857BCC  88 63 00 00 */	lbz r3, 0(r3)
/* 80857BD0  54 00 10 3A */	slwi r0, r0, 2
/* 80857BD4  38 9F 00 7C */	addi r4, r31, 0x7c
/* 80857BD8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857BDC  FC 40 F8 90 */	fmr f2, f31
/* 80857BE0  4B FF FC 8D */	bl dice_wether_init__FUcff
/* 80857BE4  48 00 00 20 */	b lbl_80857C04
lbl_80857BE8:
/* 80857BE8  38 7F 00 80 */	addi r3, r31, 0x80
/* 80857BEC  88 63 00 00 */	lbz r3, 0(r3)
/* 80857BF0  54 00 10 3A */	slwi r0, r0, 2
/* 80857BF4  38 9F 00 84 */	addi r4, r31, 0x84
/* 80857BF8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857BFC  FC 40 F8 90 */	fmr f2, f31
/* 80857C00  4B FF FC 6D */	bl dice_wether_init__FUcff
lbl_80857C04:
/* 80857C04  80 7E 12 98 */	lwz r3, 0x1298(r30)
/* 80857C08  38 03 00 01 */	addi r0, r3, 1
/* 80857C0C  90 1E 12 98 */	stw r0, 0x1298(r30)
/* 80857C10  88 7E 12 CA */	lbz r3, 0x12ca(r30)
/* 80857C14  38 03 00 01 */	addi r0, r3, 1
/* 80857C18  98 1E 12 CA */	stb r0, 0x12ca(r30)
/* 80857C1C  48 00 01 4C */	b lbl_80857D68
lbl_80857C20:
/* 80857C20  C0 1E 11 D8 */	lfs f0, 0x11d8(r30)
/* 80857C24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80857C28  40 81 01 40 */	ble lbl_80857D68
/* 80857C2C  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80857C30  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80857C34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80857C38  40 80 01 30 */	bge lbl_80857D68
/* 80857C3C  88 1E 12 CB */	lbz r0, 0x12cb(r30)
/* 80857C40  2C 00 00 02 */	cmpwi r0, 2
/* 80857C44  41 82 00 70 */	beq lbl_80857CB4
/* 80857C48  40 80 00 14 */	bge lbl_80857C5C
/* 80857C4C  2C 00 00 00 */	cmpwi r0, 0
/* 80857C50  41 82 00 1C */	beq lbl_80857C6C
/* 80857C54  40 80 00 3C */	bge lbl_80857C90
/* 80857C58  48 00 01 10 */	b lbl_80857D68
lbl_80857C5C:
/* 80857C5C  2C 00 00 04 */	cmpwi r0, 4
/* 80857C60  41 82 00 9C */	beq lbl_80857CFC
/* 80857C64  40 80 01 04 */	bge lbl_80857D68
/* 80857C68  48 00 00 70 */	b lbl_80857CD8
lbl_80857C6C:
/* 80857C6C  80 1E 12 98 */	lwz r0, 0x1298(r30)
/* 80857C70  38 7F 00 48 */	addi r3, r31, 0x48
/* 80857C74  7C 63 00 AE */	lbzx r3, r3, r0
/* 80857C78  54 00 10 3A */	slwi r0, r0, 2
/* 80857C7C  38 9F 00 4C */	addi r4, r31, 0x4c
/* 80857C80  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857C84  FC 40 F8 90 */	fmr f2, f31
/* 80857C88  4B FF FC 91 */	bl dice_wether_execute__FUcff
/* 80857C8C  48 00 00 DC */	b lbl_80857D68
lbl_80857C90:
/* 80857C90  80 1E 12 98 */	lwz r0, 0x1298(r30)
/* 80857C94  38 7F 00 58 */	addi r3, r31, 0x58
/* 80857C98  7C 63 00 AE */	lbzx r3, r3, r0
/* 80857C9C  54 00 10 3A */	slwi r0, r0, 2
/* 80857CA0  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80857CA4  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857CA8  FC 40 F8 90 */	fmr f2, f31
/* 80857CAC  4B FF FC 6D */	bl dice_wether_execute__FUcff
/* 80857CB0  48 00 00 B8 */	b lbl_80857D68
lbl_80857CB4:
/* 80857CB4  80 1E 12 98 */	lwz r0, 0x1298(r30)
/* 80857CB8  38 7F 00 68 */	addi r3, r31, 0x68
/* 80857CBC  7C 63 00 AE */	lbzx r3, r3, r0
/* 80857CC0  54 00 10 3A */	slwi r0, r0, 2
/* 80857CC4  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80857CC8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857CCC  FC 40 F8 90 */	fmr f2, f31
/* 80857CD0  4B FF FC 49 */	bl dice_wether_execute__FUcff
/* 80857CD4  48 00 00 94 */	b lbl_80857D68
lbl_80857CD8:
/* 80857CD8  80 1E 12 98 */	lwz r0, 0x1298(r30)
/* 80857CDC  38 7F 00 78 */	addi r3, r31, 0x78
/* 80857CE0  7C 63 00 AE */	lbzx r3, r3, r0
/* 80857CE4  54 00 10 3A */	slwi r0, r0, 2
/* 80857CE8  38 9F 00 7C */	addi r4, r31, 0x7c
/* 80857CEC  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857CF0  FC 40 F8 90 */	fmr f2, f31
/* 80857CF4  4B FF FC 25 */	bl dice_wether_execute__FUcff
/* 80857CF8  48 00 00 70 */	b lbl_80857D68
lbl_80857CFC:
/* 80857CFC  80 1E 12 98 */	lwz r0, 0x1298(r30)
/* 80857D00  38 7F 00 80 */	addi r3, r31, 0x80
/* 80857D04  7C 63 00 AE */	lbzx r3, r3, r0
/* 80857D08  54 00 10 3A */	slwi r0, r0, 2
/* 80857D0C  38 9F 00 84 */	addi r4, r31, 0x84
/* 80857D10  7C 24 04 2E */	lfsx f1, r4, r0
/* 80857D14  FC 40 F8 90 */	fmr f2, f31
/* 80857D18  4B FF FC 01 */	bl dice_wether_execute__FUcff
/* 80857D1C  48 00 00 4C */	b lbl_80857D68
lbl_80857D20:
/* 80857D20  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80857D24  4B A0 FC 30 */	b cM_rndF__Ff
/* 80857D28  FC 00 08 1E */	fctiwz f0, f1
/* 80857D2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80857D30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80857D34  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80857D38  38 7F 00 20 */	addi r3, r31, 0x20
/* 80857D3C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80857D40  EC 3F 00 2A */	fadds f1, f31, f0
/* 80857D44  D0 3E 11 D4 */	stfs f1, 0x11d4(r30)
/* 80857D48  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80857D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80857D50  4C 41 13 82 */	cror 2, 1, 2
/* 80857D54  40 82 00 0C */	bne lbl_80857D60
/* 80857D58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80857D5C  D0 1E 11 D4 */	stfs f0, 0x11d4(r30)
lbl_80857D60:
/* 80857D60  38 00 00 00 */	li r0, 0
/* 80857D64  98 1E 12 CA */	stb r0, 0x12ca(r30)
lbl_80857D68:
/* 80857D68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80857D6C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80857D70  88 03 13 0B */	lbz r0, 0x130b(r3)
/* 80857D74  28 00 00 01 */	cmplwi r0, 1
/* 80857D78  40 82 00 0C */	bne lbl_80857D84
/* 80857D7C  38 00 00 06 */	li r0, 6
/* 80857D80  98 1E 12 C9 */	stb r0, 0x12c9(r30)
lbl_80857D84:
/* 80857D84  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80857D88  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 80857D8C  88 1F 12 CD */	lbz r0, 0x12cd(r31)
/* 80857D90  28 00 00 00 */	cmplwi r0, 0
/* 80857D94  40 82 01 34 */	bne lbl_80857EC8
/* 80857D98  88 1F 12 CE */	lbz r0, 0x12ce(r31)
/* 80857D9C  28 00 00 00 */	cmplwi r0, 0
/* 80857DA0  40 82 01 28 */	bne lbl_80857EC8
/* 80857DA4  88 1E 12 C9 */	lbz r0, 0x12c9(r30)
/* 80857DA8  28 00 00 06 */	cmplwi r0, 6
/* 80857DAC  41 81 00 FC */	bgt lbl_80857EA8
/* 80857DB0  3C 60 80 86 */	lis r3, lit_3883@ha
/* 80857DB4  38 63 A0 30 */	addi r3, r3, lit_3883@l
/* 80857DB8  54 00 10 3A */	slwi r0, r0, 2
/* 80857DBC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80857DC0  7C 09 03 A6 */	mtctr r0
/* 80857DC4  4E 80 04 20 */	bctr 
lbl_80857DC8:
/* 80857DC8  3B 80 00 00 */	li r28, 0
/* 80857DCC  80 1F 0E D8 */	lwz r0, 0xed8(r31)
/* 80857DD0  2C 00 00 01 */	cmpwi r0, 1
/* 80857DD4  40 82 00 0C */	bne lbl_80857DE0
/* 80857DD8  38 00 00 00 */	li r0, 0
/* 80857DDC  90 1F 0E D8 */	stw r0, 0xed8(r31)
lbl_80857DE0:
/* 80857DE0  4B FF FC 0D */	bl dice_rain_minus__Fv
/* 80857DE4  48 00 00 C4 */	b lbl_80857EA8
lbl_80857DE8:
/* 80857DE8  38 00 00 00 */	li r0, 0
/* 80857DEC  90 1F 0E D8 */	stw r0, 0xed8(r31)
/* 80857DF0  3B 80 00 01 */	li r28, 1
/* 80857DF4  4B FF FB F9 */	bl dice_rain_minus__Fv
/* 80857DF8  48 00 00 B0 */	b lbl_80857EA8
lbl_80857DFC:
/* 80857DFC  3B 80 00 01 */	li r28, 1
/* 80857E00  80 7E 0E 80 */	lwz r3, 0xe80(r30)
/* 80857E04  2C 03 00 28 */	cmpwi r3, 0x28
/* 80857E08  40 80 00 14 */	bge lbl_80857E1C
/* 80857E0C  38 63 00 01 */	addi r3, r3, 1
/* 80857E10  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80857E14  4B 80 38 38 */	b dKyw_rain_set__Fi
/* 80857E18  48 00 00 90 */	b lbl_80857EA8
lbl_80857E1C:
/* 80857E1C  38 63 FF FF */	addi r3, r3, -1
/* 80857E20  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80857E24  4B 80 38 28 */	b dKyw_rain_set__Fi
/* 80857E28  48 00 00 80 */	b lbl_80857EA8
lbl_80857E2C:
/* 80857E2C  38 00 00 01 */	li r0, 1
/* 80857E30  90 1F 0E D8 */	stw r0, 0xed8(r31)
lbl_80857E34:
/* 80857E34  3B 80 00 02 */	li r28, 2
/* 80857E38  80 7E 0E 80 */	lwz r3, 0xe80(r30)
/* 80857E3C  2C 03 00 FA */	cmpwi r3, 0xfa
/* 80857E40  40 80 00 68 */	bge lbl_80857EA8
/* 80857E44  38 63 00 01 */	addi r3, r3, 1
/* 80857E48  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80857E4C  4B 80 38 00 */	b dKyw_rain_set__Fi
/* 80857E50  48 00 00 58 */	b lbl_80857EA8
lbl_80857E54:
/* 80857E54  3B 80 00 01 */	li r28, 1
/* 80857E58  38 00 00 01 */	li r0, 1
/* 80857E5C  90 1F 0E D8 */	stw r0, 0xed8(r31)
/* 80857E60  4B FF FB 8D */	bl dice_rain_minus__Fv
/* 80857E64  48 00 00 44 */	b lbl_80857EA8
lbl_80857E68:
/* 80857E68  3B 80 00 00 */	li r28, 0
/* 80857E6C  80 1F 0E D8 */	lwz r0, 0xed8(r31)
/* 80857E70  2C 00 00 01 */	cmpwi r0, 1
/* 80857E74  40 82 00 0C */	bne lbl_80857E80
/* 80857E78  38 00 00 00 */	li r0, 0
/* 80857E7C  90 1F 0E D8 */	stw r0, 0xed8(r31)
lbl_80857E80:
/* 80857E80  80 7E 0E 80 */	lwz r3, 0xe80(r30)
/* 80857E84  2C 03 00 02 */	cmpwi r3, 2
/* 80857E88  40 81 00 10 */	ble lbl_80857E98
/* 80857E8C  38 03 FF FE */	addi r0, r3, -2
/* 80857E90  90 1E 0E 80 */	stw r0, 0xe80(r30)
/* 80857E94  48 00 00 0C */	b lbl_80857EA0
lbl_80857E98:
/* 80857E98  38 00 00 00 */	li r0, 0
/* 80857E9C  90 1E 0E 80 */	stw r0, 0xe80(r30)
lbl_80857EA0:
/* 80857EA0  80 7E 0E 80 */	lwz r3, 0xe80(r30)
/* 80857EA4  4B 80 37 A8 */	b dKyw_rain_set__Fi
lbl_80857EA8:
/* 80857EA8  88 7E 12 C8 */	lbz r3, 0x12c8(r30)
/* 80857EAC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80857EB0  7C 03 00 40 */	cmplw r3, r0
/* 80857EB4  41 82 00 14 */	beq lbl_80857EC8
/* 80857EB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80857EBC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80857EC0  9B 83 12 C8 */	stb r28, 0x12c8(r3)
/* 80857EC4  9B 83 12 C5 */	stb r28, 0x12c5(r3)
lbl_80857EC8:
/* 80857EC8  88 1F 12 CD */	lbz r0, 0x12cd(r31)
/* 80857ECC  28 00 00 00 */	cmplwi r0, 0
/* 80857ED0  40 82 00 38 */	bne lbl_80857F08
/* 80857ED4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80857ED8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80857EDC  88 03 12 CE */	lbz r0, 0x12ce(r3)
/* 80857EE0  28 00 00 00 */	cmplwi r0, 0
/* 80857EE4  40 82 00 24 */	bne lbl_80857F08
/* 80857EE8  88 83 12 C5 */	lbz r4, 0x12c5(r3)
/* 80857EEC  28 04 00 FF */	cmplwi r4, 0xff
/* 80857EF0  41 82 00 18 */	beq lbl_80857F08
/* 80857EF4  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 80857EF8  7C 00 20 40 */	cmplw r0, r4
/* 80857EFC  41 82 00 0C */	beq lbl_80857F08
/* 80857F00  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80857F04  D0 03 11 E0 */	stfs f0, 0x11e0(r3)
lbl_80857F08:
/* 80857F08  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80857F0C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80857F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80857F14  4B B0 A3 10 */	b _restgpr_28
/* 80857F18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80857F1C  7C 08 03 A6 */	mtlr r0
/* 80857F20  38 21 00 30 */	addi r1, r1, 0x30
/* 80857F24  4E 80 00 20 */	blr 
