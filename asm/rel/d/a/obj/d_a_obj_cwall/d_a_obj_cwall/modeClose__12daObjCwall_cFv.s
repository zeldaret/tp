lbl_80BD8BF0:
/* 80BD8BF0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80BD8BF4  7C 08 02 A6 */	mflr r0
/* 80BD8BF8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BD8BFC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80BD8C00  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80BD8C04  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BD8C08  4B 78 95 C8 */	b _savegpr_26
/* 80BD8C0C  7C 7A 1B 78 */	mr r26, r3
/* 80BD8C10  3C 60 80 BE */	lis r3, l_wallBmd@ha
/* 80BD8C14  3B C3 9F A4 */	addi r30, r3, l_wallBmd@l
/* 80BD8C18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD8C1C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80BD8C20  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80BD8C24  C0 5A 0F 40 */	lfs f2, 0xf40(r26)
/* 80BD8C28  C0 1A 0F 38 */	lfs f0, 0xf38(r26)
/* 80BD8C2C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD8C30  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BD8C34  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80BD8C38  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BD8C3C  C0 5A 04 B0 */	lfs f2, 0x4b0(r26)
/* 80BD8C40  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80BD8C44  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BD8C48  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BD8C4C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80BD8C50  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BD8C54  38 81 00 48 */	addi r4, r1, 0x48
/* 80BD8C58  4B 76 E7 44 */	b PSVECSquareDistance
/* 80BD8C5C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BD8C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8C64  40 81 00 58 */	ble lbl_80BD8CBC
/* 80BD8C68  FC 00 08 34 */	frsqrte f0, f1
/* 80BD8C6C  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80BD8C70  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8C74  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80BD8C78  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8C7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8C80  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8C84  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8C88  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8C8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8C90  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8C94  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8C98  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8C9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8CA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8CA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8CA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8CAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8CB0  FF E1 00 32 */	fmul f31, f1, f0
/* 80BD8CB4  FF E0 F8 18 */	frsp f31, f31
/* 80BD8CB8  48 00 00 90 */	b lbl_80BD8D48
lbl_80BD8CBC:
/* 80BD8CBC  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80BD8CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8CC4  40 80 00 10 */	bge lbl_80BD8CD4
/* 80BD8CC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD8CCC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BD8CD0  48 00 00 78 */	b lbl_80BD8D48
lbl_80BD8CD4:
/* 80BD8CD4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BD8CD8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BD8CDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD8CE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD8CE4  7C 03 00 00 */	cmpw r3, r0
/* 80BD8CE8  41 82 00 14 */	beq lbl_80BD8CFC
/* 80BD8CEC  40 80 00 40 */	bge lbl_80BD8D2C
/* 80BD8CF0  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8CF4  41 82 00 20 */	beq lbl_80BD8D14
/* 80BD8CF8  48 00 00 34 */	b lbl_80BD8D2C
lbl_80BD8CFC:
/* 80BD8CFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8D00  41 82 00 0C */	beq lbl_80BD8D0C
/* 80BD8D04  38 00 00 01 */	li r0, 1
/* 80BD8D08  48 00 00 28 */	b lbl_80BD8D30
lbl_80BD8D0C:
/* 80BD8D0C  38 00 00 02 */	li r0, 2
/* 80BD8D10  48 00 00 20 */	b lbl_80BD8D30
lbl_80BD8D14:
/* 80BD8D14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8D18  41 82 00 0C */	beq lbl_80BD8D24
/* 80BD8D1C  38 00 00 05 */	li r0, 5
/* 80BD8D20  48 00 00 10 */	b lbl_80BD8D30
lbl_80BD8D24:
/* 80BD8D24  38 00 00 03 */	li r0, 3
/* 80BD8D28  48 00 00 08 */	b lbl_80BD8D30
lbl_80BD8D2C:
/* 80BD8D2C  38 00 00 04 */	li r0, 4
lbl_80BD8D30:
/* 80BD8D30  2C 00 00 01 */	cmpwi r0, 1
/* 80BD8D34  40 82 00 10 */	bne lbl_80BD8D44
/* 80BD8D38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD8D3C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80BD8D40  48 00 00 08 */	b lbl_80BD8D48
lbl_80BD8D44:
/* 80BD8D44  FF E0 08 90 */	fmr f31, f1
lbl_80BD8D48:
/* 80BD8D48  3B 80 00 00 */	li r28, 0
/* 80BD8D4C  8B 7A 0F 0E */	lbz r27, 0xf0e(r26)
/* 80BD8D50  88 1A 0E 90 */	lbz r0, 0xe90(r26)
/* 80BD8D54  28 00 00 00 */	cmplwi r0, 0
/* 80BD8D58  41 82 01 D4 */	beq lbl_80BD8F2C
/* 80BD8D5C  7F 43 D3 78 */	mr r3, r26
/* 80BD8D60  38 81 00 78 */	addi r4, r1, 0x78
/* 80BD8D64  4B FF EA 25 */	bl getChainBasePos__12daObjCwall_cFP4cXyz
/* 80BD8D68  C0 1A 0E DC */	lfs f0, 0xedc(r26)
/* 80BD8D6C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BD8D70  C0 1A 0E E0 */	lfs f0, 0xee0(r26)
/* 80BD8D74  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BD8D78  C0 1A 0E E4 */	lfs f0, 0xee4(r26)
/* 80BD8D7C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BD8D80  38 61 00 6C */	addi r3, r1, 0x6c
/* 80BD8D84  38 81 00 78 */	addi r4, r1, 0x78
/* 80BD8D88  4B 76 E6 14 */	b PSVECSquareDistance
/* 80BD8D8C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BD8D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8D94  40 81 00 58 */	ble lbl_80BD8DEC
/* 80BD8D98  FC 00 08 34 */	frsqrte f0, f1
/* 80BD8D9C  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80BD8DA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8DA4  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80BD8DA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8DAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8DB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8DB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8DB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8DBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8DC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8DC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8DC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8DCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8DE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD8DE4  FC 20 08 18 */	frsp f1, f1
/* 80BD8DE8  48 00 00 88 */	b lbl_80BD8E70
lbl_80BD8DEC:
/* 80BD8DEC  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80BD8DF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8DF4  40 80 00 10 */	bge lbl_80BD8E04
/* 80BD8DF8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD8DFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD8E00  48 00 00 70 */	b lbl_80BD8E70
lbl_80BD8E04:
/* 80BD8E04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BD8E08  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BD8E0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD8E10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD8E14  7C 03 00 00 */	cmpw r3, r0
/* 80BD8E18  41 82 00 14 */	beq lbl_80BD8E2C
/* 80BD8E1C  40 80 00 40 */	bge lbl_80BD8E5C
/* 80BD8E20  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8E24  41 82 00 20 */	beq lbl_80BD8E44
/* 80BD8E28  48 00 00 34 */	b lbl_80BD8E5C
lbl_80BD8E2C:
/* 80BD8E2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8E30  41 82 00 0C */	beq lbl_80BD8E3C
/* 80BD8E34  38 00 00 01 */	li r0, 1
/* 80BD8E38  48 00 00 28 */	b lbl_80BD8E60
lbl_80BD8E3C:
/* 80BD8E3C  38 00 00 02 */	li r0, 2
/* 80BD8E40  48 00 00 20 */	b lbl_80BD8E60
lbl_80BD8E44:
/* 80BD8E44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD8E48  41 82 00 0C */	beq lbl_80BD8E54
/* 80BD8E4C  38 00 00 05 */	li r0, 5
/* 80BD8E50  48 00 00 10 */	b lbl_80BD8E60
lbl_80BD8E54:
/* 80BD8E54  38 00 00 03 */	li r0, 3
/* 80BD8E58  48 00 00 08 */	b lbl_80BD8E60
lbl_80BD8E5C:
/* 80BD8E5C  38 00 00 04 */	li r0, 4
lbl_80BD8E60:
/* 80BD8E60  2C 00 00 01 */	cmpwi r0, 1
/* 80BD8E64  40 82 00 0C */	bne lbl_80BD8E70
/* 80BD8E68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD8E6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD8E70:
/* 80BD8E70  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80BD8E74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8E78  40 81 00 68 */	ble lbl_80BD8EE0
/* 80BD8E7C  38 00 00 01 */	li r0, 1
/* 80BD8E80  98 1A 0E 91 */	stb r0, 0xe91(r26)
/* 80BD8E84  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BD8E88  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80BD8E8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BD8E90  40 82 00 10 */	bne lbl_80BD8EA0
/* 80BD8E94  C0 1A 05 00 */	lfs f0, 0x500(r26)
/* 80BD8E98  D0 1A 0F 50 */	stfs f0, 0xf50(r26)
/* 80BD8E9C  48 00 00 4C */	b lbl_80BD8EE8
lbl_80BD8EA0:
/* 80BD8EA0  7F 43 D3 78 */	mr r3, r26
/* 80BD8EA4  48 00 08 D9 */	bl checkPull__12daObjCwall_cFv
/* 80BD8EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8EAC  41 82 00 28 */	beq lbl_80BD8ED4
/* 80BD8EB0  C0 1A 05 00 */	lfs f0, 0x500(r26)
/* 80BD8EB4  FC 00 02 10 */	fabs f0, f0
/* 80BD8EB8  FC 00 00 18 */	frsp f0, f0
/* 80BD8EBC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BD8EC0  FC 20 0A 10 */	fabs f1, f1
/* 80BD8EC4  FC 20 08 18 */	frsp f1, f1
/* 80BD8EC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD8ECC  D0 1A 0F 50 */	stfs f0, 0xf50(r26)
/* 80BD8ED0  48 00 00 18 */	b lbl_80BD8EE8
lbl_80BD8ED4:
/* 80BD8ED4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BD8ED8  D0 1A 0F 50 */	stfs f0, 0xf50(r26)
/* 80BD8EDC  48 00 00 0C */	b lbl_80BD8EE8
lbl_80BD8EE0:
/* 80BD8EE0  38 00 00 00 */	li r0, 0
/* 80BD8EE4  98 1A 0E 91 */	stb r0, 0xe91(r26)
lbl_80BD8EE8:
/* 80BD8EE8  88 1A 0E 91 */	lbz r0, 0xe91(r26)
/* 80BD8EEC  28 00 00 00 */	cmplwi r0, 0
/* 80BD8EF0  41 82 00 24 */	beq lbl_80BD8F14
/* 80BD8EF4  7F 43 D3 78 */	mr r3, r26
/* 80BD8EF8  48 00 06 A9 */	bl checkPullNow__12daObjCwall_cFv
/* 80BD8EFC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD8F00  41 82 00 14 */	beq lbl_80BD8F14
/* 80BD8F04  88 7A 0F 0E */	lbz r3, 0xf0e(r26)
/* 80BD8F08  38 03 00 01 */	addi r0, r3, 1
/* 80BD8F0C  98 1A 0F 0E */	stb r0, 0xf0e(r26)
/* 80BD8F10  48 00 00 0C */	b lbl_80BD8F1C
lbl_80BD8F14:
/* 80BD8F14  38 00 00 00 */	li r0, 0
/* 80BD8F18  98 1A 0F 0E */	stb r0, 0xf0e(r26)
lbl_80BD8F1C:
/* 80BD8F1C  88 1A 0F 0E */	lbz r0, 0xf0e(r26)
/* 80BD8F20  28 00 00 08 */	cmplwi r0, 8
/* 80BD8F24  41 80 00 08 */	blt lbl_80BD8F2C
/* 80BD8F28  3B 80 00 01 */	li r28, 1
lbl_80BD8F2C:
/* 80BD8F2C  88 1A 0F 0E */	lbz r0, 0xf0e(r26)
/* 80BD8F30  7C 1B 00 40 */	cmplw r27, r0
/* 80BD8F34  40 82 00 0C */	bne lbl_80BD8F40
/* 80BD8F38  38 00 00 00 */	li r0, 0
/* 80BD8F3C  98 1A 0F 0E */	stb r0, 0xf0e(r26)
lbl_80BD8F40:
/* 80BD8F40  C0 3A 05 00 */	lfs f1, 0x500(r26)
/* 80BD8F44  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80BD8F48  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD8F4C  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80BD8F50  C0 3A 05 00 */	lfs f1, 0x500(r26)
/* 80BD8F54  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80BD8F58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8F5C  40 81 00 08 */	ble lbl_80BD8F64
/* 80BD8F60  D0 1A 05 00 */	stfs f0, 0x500(r26)
lbl_80BD8F64:
/* 80BD8F64  C0 1A 05 00 */	lfs f0, 0x500(r26)
/* 80BD8F68  FC 00 02 10 */	fabs f0, f0
/* 80BD8F6C  FC 20 00 18 */	frsp f1, f0
/* 80BD8F70  38 7A 0F 38 */	addi r3, r26, 0xf38
/* 80BD8F74  38 9A 04 A8 */	addi r4, r26, 0x4a8
/* 80BD8F78  4B 69 78 34 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BD8F7C  7C 7B 1B 78 */	mr r27, r3
/* 80BD8F80  C0 5A 0F 40 */	lfs f2, 0xf40(r26)
/* 80BD8F84  C0 1A 0F 38 */	lfs f0, 0xf38(r26)
/* 80BD8F88  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BD8F8C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BD8F90  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BD8F94  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80BD8F98  C0 5A 04 B0 */	lfs f2, 0x4b0(r26)
/* 80BD8F9C  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80BD8FA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD8FA4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BD8FA8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80BD8FAC  38 61 00 24 */	addi r3, r1, 0x24
/* 80BD8FB0  38 81 00 30 */	addi r4, r1, 0x30
/* 80BD8FB4  4B 76 E3 E8 */	b PSVECSquareDistance
/* 80BD8FB8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80BD8FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD8FC0  40 81 00 58 */	ble lbl_80BD9018
/* 80BD8FC4  FC 00 08 34 */	frsqrte f0, f1
/* 80BD8FC8  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 80BD8FCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8FD0  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 80BD8FD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8FD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8FDC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8FE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8FE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8FE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD8FEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD8FF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD8FF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD8FF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BD8FFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BD9000  FC 01 00 32 */	fmul f0, f1, f0
/* 80BD9004  FC 03 00 28 */	fsub f0, f3, f0
/* 80BD9008  FC 02 00 32 */	fmul f0, f2, f0
/* 80BD900C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BD9010  FC 20 08 18 */	frsp f1, f1
/* 80BD9014  48 00 00 88 */	b lbl_80BD909C
lbl_80BD9018:
/* 80BD9018  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 80BD901C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD9020  40 80 00 10 */	bge lbl_80BD9030
/* 80BD9024  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD9028  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BD902C  48 00 00 70 */	b lbl_80BD909C
lbl_80BD9030:
/* 80BD9030  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BD9034  80 81 00 08 */	lwz r4, 8(r1)
/* 80BD9038  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BD903C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BD9040  7C 03 00 00 */	cmpw r3, r0
/* 80BD9044  41 82 00 14 */	beq lbl_80BD9058
/* 80BD9048  40 80 00 40 */	bge lbl_80BD9088
/* 80BD904C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD9050  41 82 00 20 */	beq lbl_80BD9070
/* 80BD9054  48 00 00 34 */	b lbl_80BD9088
lbl_80BD9058:
/* 80BD9058  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD905C  41 82 00 0C */	beq lbl_80BD9068
/* 80BD9060  38 00 00 01 */	li r0, 1
/* 80BD9064  48 00 00 28 */	b lbl_80BD908C
lbl_80BD9068:
/* 80BD9068  38 00 00 02 */	li r0, 2
/* 80BD906C  48 00 00 20 */	b lbl_80BD908C
lbl_80BD9070:
/* 80BD9070  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BD9074  41 82 00 0C */	beq lbl_80BD9080
/* 80BD9078  38 00 00 05 */	li r0, 5
/* 80BD907C  48 00 00 10 */	b lbl_80BD908C
lbl_80BD9080:
/* 80BD9080  38 00 00 03 */	li r0, 3
/* 80BD9084  48 00 00 08 */	b lbl_80BD908C
lbl_80BD9088:
/* 80BD9088  38 00 00 04 */	li r0, 4
lbl_80BD908C:
/* 80BD908C  2C 00 00 01 */	cmpwi r0, 1
/* 80BD9090  40 82 00 0C */	bne lbl_80BD909C
/* 80BD9094  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BD9098  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BD909C:
/* 80BD909C  2C 1B 00 00 */	cmpwi r27, 0
/* 80BD90A0  41 82 00 DC */	beq lbl_80BD917C
/* 80BD90A4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80BD90A8  41 82 00 18 */	beq lbl_80BD90C0
/* 80BD90AC  38 00 00 00 */	li r0, 0
/* 80BD90B0  98 1A 0F 0D */	stb r0, 0xf0d(r26)
/* 80BD90B4  7F 43 D3 78 */	mr r3, r26
/* 80BD90B8  4B FF F6 91 */	bl initWalk__12daObjCwall_cFv
/* 80BD90BC  48 00 00 B4 */	b lbl_80BD9170
lbl_80BD90C0:
/* 80BD90C0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80BD90C4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80BD90C8  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80BD90CC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BD90D0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80BD90D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD90D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD90DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BD90E0  38 80 00 04 */	li r4, 4
/* 80BD90E4  38 A0 00 1F */	li r5, 0x1f
/* 80BD90E8  38 C1 00 54 */	addi r6, r1, 0x54
/* 80BD90EC  4B 49 69 38 */	b StartShock__12dVibration_cFii4cXyz
/* 80BD90F0  38 00 00 00 */	li r0, 0
/* 80BD90F4  98 1A 0F 0D */	stb r0, 0xf0d(r26)
/* 80BD90F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080138@ha */
/* 80BD90FC  38 03 01 38 */	addi r0, r3, 0x0138 /* 0x00080138@l */
/* 80BD9100  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BD9104  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD9108  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD910C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD9110  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD9114  38 BA 0F 2C */	addi r5, r26, 0xf2c
/* 80BD9118  38 C0 00 00 */	li r6, 0
/* 80BD911C  38 E0 00 00 */	li r7, 0
/* 80BD9120  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80BD9124  FC 40 08 90 */	fmr f2, f1
/* 80BD9128  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 80BD912C  FC 80 18 90 */	fmr f4, f3
/* 80BD9130  39 00 00 00 */	li r8, 0
/* 80BD9134  4B 6D 28 50 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD9138  7F 43 D3 78 */	mr r3, r26
/* 80BD913C  4B FF F4 59 */	bl initWait__12daObjCwall_cFv
/* 80BD9140  88 1A 0F 59 */	lbz r0, 0xf59(r26)
/* 80BD9144  28 00 00 05 */	cmplwi r0, 5
/* 80BD9148  41 80 00 28 */	blt lbl_80BD9170
/* 80BD914C  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80BD9150  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80BD9154  28 04 00 FF */	cmplwi r4, 0xff
/* 80BD9158  41 82 00 18 */	beq lbl_80BD9170
/* 80BD915C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD9160  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD9164  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80BD9168  7C 05 07 74 */	extsb r5, r0
/* 80BD916C  4B 45 C0 94 */	b onSwitch__10dSv_info_cFii
lbl_80BD9170:
/* 80BD9170  38 00 00 00 */	li r0, 0
/* 80BD9174  98 1A 0F 59 */	stb r0, 0xf59(r26)
/* 80BD9178  48 00 01 5C */	b lbl_80BD92D4
lbl_80BD917C:
/* 80BD917C  FC 00 F8 1E */	fctiwz f0, f31
/* 80BD9180  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80BD9184  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80BD9188  38 60 00 4B */	li r3, 0x4b
/* 80BD918C  7F 60 1B D6 */	divw r27, r0, r3
/* 80BD9190  FC 00 08 1E */	fctiwz f0, f1
/* 80BD9194  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80BD9198  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BD919C  7C 00 1B D6 */	divw r0, r0, r3
/* 80BD91A0  7C 00 D8 00 */	cmpw r0, r27
/* 80BD91A4  41 82 00 90 */	beq lbl_80BD9234
/* 80BD91A8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80BD91AC  41 82 00 1C */	beq lbl_80BD91C8
/* 80BD91B0  9B 7A 0F 0D */	stb r27, 0xf0d(r26)
/* 80BD91B4  7F 43 D3 78 */	mr r3, r26
/* 80BD91B8  4B FF F3 DD */	bl initWait__12daObjCwall_cFv
/* 80BD91BC  38 00 00 08 */	li r0, 8
/* 80BD91C0  98 1A 0F 0E */	stb r0, 0xf0e(r26)
/* 80BD91C4  48 00 00 70 */	b lbl_80BD9234
lbl_80BD91C8:
/* 80BD91C8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BD91CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BD91D0  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80BD91D4  7D 89 03 A6 */	mtctr r12
/* 80BD91D8  4E 80 04 21 */	bctrl 
/* 80BD91DC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD91E0  41 82 00 54 */	beq lbl_80BD9234
/* 80BD91E4  80 7A 0E 8C */	lwz r3, 0xe8c(r26)
/* 80BD91E8  38 A3 00 04 */	addi r5, r3, 4
/* 80BD91EC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008016F@ha */
/* 80BD91F0  38 03 01 6F */	addi r0, r3, 0x016F /* 0x0008016F@l */
/* 80BD91F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BD91F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD91FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD9200  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD9204  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BD9208  38 C0 00 00 */	li r6, 0
/* 80BD920C  38 E0 00 00 */	li r7, 0
/* 80BD9210  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80BD9214  FC 40 08 90 */	fmr f2, f1
/* 80BD9218  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 80BD921C  FC 80 18 90 */	fmr f4, f3
/* 80BD9220  39 00 00 00 */	li r8, 0
/* 80BD9224  4B 6D 27 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD9228  9B 7A 0F 0D */	stb r27, 0xf0d(r26)
/* 80BD922C  7F 43 D3 78 */	mr r3, r26
/* 80BD9230  4B FF F3 65 */	bl initWait__12daObjCwall_cFv
lbl_80BD9234:
/* 80BD9234  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80BD9238  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BD923C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80BD9240  7D 89 03 A6 */	mtctr r12
/* 80BD9244  4E 80 04 21 */	bctrl 
/* 80BD9248  2C 03 00 00 */	cmpwi r3, 0
/* 80BD924C  41 82 00 48 */	beq lbl_80BD9294
/* 80BD9250  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008016E@ha */
/* 80BD9254  38 03 01 6E */	addi r0, r3, 0x016E /* 0x0008016E@l */
/* 80BD9258  90 01 00 18 */	stw r0, 0x18(r1)
/* 80BD925C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD9260  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD9264  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD9268  38 81 00 18 */	addi r4, r1, 0x18
/* 80BD926C  38 BA 0F 2C */	addi r5, r26, 0xf2c
/* 80BD9270  38 C0 00 00 */	li r6, 0
/* 80BD9274  38 E0 00 00 */	li r7, 0
/* 80BD9278  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80BD927C  FC 40 08 90 */	fmr f2, f1
/* 80BD9280  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 80BD9284  FC 80 18 90 */	fmr f4, f3
/* 80BD9288  39 00 00 00 */	li r8, 0
/* 80BD928C  4B 6D 32 80 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BD9290  48 00 00 44 */	b lbl_80BD92D4
lbl_80BD9294:
/* 80BD9294  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080137@ha */
/* 80BD9298  38 03 01 37 */	addi r0, r3, 0x0137 /* 0x00080137@l */
/* 80BD929C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD92A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BD92A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BD92A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD92AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD92B0  38 BA 0F 2C */	addi r5, r26, 0xf2c
/* 80BD92B4  38 C0 00 00 */	li r6, 0
/* 80BD92B8  38 E0 00 00 */	li r7, 0
/* 80BD92BC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80BD92C0  FC 40 08 90 */	fmr f2, f1
/* 80BD92C4  C0 7E 00 D8 */	lfs f3, 0xd8(r30)
/* 80BD92C8  FC 80 18 90 */	fmr f4, f3
/* 80BD92CC  39 00 00 00 */	li r8, 0
/* 80BD92D0  4B 6D 32 3C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BD92D4:
/* 80BD92D4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80BD92D8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BD92DC  38 7E 00 28 */	addi r3, r30, 0x28
/* 80BD92E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BD92E4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BD92E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BD92EC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BD92F0  38 7A 0F 38 */	addi r3, r26, 0xf38
/* 80BD92F4  4B 43 3A 70 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BD92F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD92FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD9300  A8 9A 04 B6 */	lha r4, 0x4b6(r26)
/* 80BD9304  4B 43 31 30 */	b mDoMtx_YrotM__FPA4_fs
/* 80BD9308  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BD930C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BD9310  38 81 00 60 */	addi r4, r1, 0x60
/* 80BD9314  7C 85 23 78 */	mr r5, r4
/* 80BD9318  4B 76 DA 54 */	b PSMTXMultVec
/* 80BD931C  38 7A 07 0C */	addi r3, r26, 0x70c
/* 80BD9320  38 81 00 60 */	addi r4, r1, 0x60
/* 80BD9324  4B 69 5E B8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80BD9328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD932C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD9330  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BD9334  38 9A 05 E8 */	addi r4, r26, 0x5e8
/* 80BD9338  4B 68 B8 70 */	b Set__4cCcSFP8cCcD_Obj
/* 80BD933C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80BD9340  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80BD9344  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BD9348  4B 78 8E D4 */	b _restgpr_26
/* 80BD934C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80BD9350  7C 08 03 A6 */	mtlr r0
/* 80BD9354  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80BD9358  4E 80 00 20 */	blr 
