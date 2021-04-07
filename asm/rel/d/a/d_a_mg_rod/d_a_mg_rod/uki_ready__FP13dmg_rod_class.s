lbl_804B2C54:
/* 804B2C54  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B2C58  7C 08 02 A6 */	mflr r0
/* 804B2C5C  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B2C60  39 61 00 50 */	addi r11, r1, 0x50
/* 804B2C64  4B EA F5 71 */	bl _savegpr_27
/* 804B2C68  7C 7B 1B 78 */	mr r27, r3
/* 804B2C6C  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804B2C70  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804B2C74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B2C78  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B2C7C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 804B2C80  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B2C84  80 03 05 84 */	lwz r0, 0x584(r3)
/* 804B2C88  54 1D 06 30 */	rlwinm r29, r0, 0, 0x18, 0x18
/* 804B2C8C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B2C90  D0 1B 15 08 */	stfs f0, 0x1508(r27)
/* 804B2C94  38 61 00 0C */	addi r3, r1, 0xc
/* 804B2C98  38 9B 06 C8 */	addi r4, r27, 0x6c8
/* 804B2C9C  38 BB 06 D4 */	addi r5, r27, 0x6d4
/* 804B2CA0  4B DB 3E 95 */	bl __mi__4cXyzCFRC3Vec
/* 804B2CA4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804B2CA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B2CAC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804B2CB0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B2CB4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804B2CB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B2CBC  38 61 00 24 */	addi r3, r1, 0x24
/* 804B2CC0  4B E9 44 79 */	bl PSVECSquareMag
/* 804B2CC4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B2CC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2CCC  40 81 00 58 */	ble lbl_804B2D24
/* 804B2CD0  FC 00 08 34 */	frsqrte f0, f1
/* 804B2CD4  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804B2CD8  FC 44 00 32 */	fmul f2, f4, f0
/* 804B2CDC  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804B2CE0  FC 00 00 32 */	fmul f0, f0, f0
/* 804B2CE4  FC 01 00 32 */	fmul f0, f1, f0
/* 804B2CE8  FC 03 00 28 */	fsub f0, f3, f0
/* 804B2CEC  FC 02 00 32 */	fmul f0, f2, f0
/* 804B2CF0  FC 44 00 32 */	fmul f2, f4, f0
/* 804B2CF4  FC 00 00 32 */	fmul f0, f0, f0
/* 804B2CF8  FC 01 00 32 */	fmul f0, f1, f0
/* 804B2CFC  FC 03 00 28 */	fsub f0, f3, f0
/* 804B2D00  FC 02 00 32 */	fmul f0, f2, f0
/* 804B2D04  FC 44 00 32 */	fmul f2, f4, f0
/* 804B2D08  FC 00 00 32 */	fmul f0, f0, f0
/* 804B2D0C  FC 01 00 32 */	fmul f0, f1, f0
/* 804B2D10  FC 03 00 28 */	fsub f0, f3, f0
/* 804B2D14  FC 02 00 32 */	fmul f0, f2, f0
/* 804B2D18  FC 21 00 32 */	fmul f1, f1, f0
/* 804B2D1C  FC 20 08 18 */	frsp f1, f1
/* 804B2D20  48 00 00 88 */	b lbl_804B2DA8
lbl_804B2D24:
/* 804B2D24  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804B2D28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2D2C  40 80 00 10 */	bge lbl_804B2D3C
/* 804B2D30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B2D34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B2D38  48 00 00 70 */	b lbl_804B2DA8
lbl_804B2D3C:
/* 804B2D3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B2D40  80 81 00 08 */	lwz r4, 8(r1)
/* 804B2D44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B2D48  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B2D4C  7C 03 00 00 */	cmpw r3, r0
/* 804B2D50  41 82 00 14 */	beq lbl_804B2D64
/* 804B2D54  40 80 00 40 */	bge lbl_804B2D94
/* 804B2D58  2C 03 00 00 */	cmpwi r3, 0
/* 804B2D5C  41 82 00 20 */	beq lbl_804B2D7C
/* 804B2D60  48 00 00 34 */	b lbl_804B2D94
lbl_804B2D64:
/* 804B2D64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B2D68  41 82 00 0C */	beq lbl_804B2D74
/* 804B2D6C  38 00 00 01 */	li r0, 1
/* 804B2D70  48 00 00 28 */	b lbl_804B2D98
lbl_804B2D74:
/* 804B2D74  38 00 00 02 */	li r0, 2
/* 804B2D78  48 00 00 20 */	b lbl_804B2D98
lbl_804B2D7C:
/* 804B2D7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B2D80  41 82 00 0C */	beq lbl_804B2D8C
/* 804B2D84  38 00 00 05 */	li r0, 5
/* 804B2D88  48 00 00 10 */	b lbl_804B2D98
lbl_804B2D8C:
/* 804B2D8C  38 00 00 03 */	li r0, 3
/* 804B2D90  48 00 00 08 */	b lbl_804B2D98
lbl_804B2D94:
/* 804B2D94  38 00 00 04 */	li r0, 4
lbl_804B2D98:
/* 804B2D98  2C 00 00 01 */	cmpwi r0, 1
/* 804B2D9C  40 82 00 0C */	bne lbl_804B2DA8
/* 804B2DA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B2DA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B2DA8:
/* 804B2DA8  C0 5E 02 08 */	lfs f2, 0x208(r30)
/* 804B2DAC  C0 1B 06 A0 */	lfs f0, 0x6a0(r27)
/* 804B2DB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B2DB4  EC 22 00 32 */	fmuls f1, f2, f0
/* 804B2DB8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B2DBC  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 804B2DC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2DC4  40 81 00 2C */	ble lbl_804B2DF0
/* 804B2DC8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804B2DCC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804B2DD0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804B2DD4  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804B2DD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2DDC  40 81 00 08 */	ble lbl_804B2DE4
/* 804B2DE0  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_804B2DE4:
/* 804B2DE4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B2DE8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804B2DEC  48 00 00 58 */	b lbl_804B2E44
lbl_804B2DF0:
/* 804B2DF0  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804B2DF4  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 804B2DF8  EC 41 00 32 */	fmuls f2, f1, f0
/* 804B2DFC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 804B2E00  A8 1B 05 78 */	lha r0, 0x578(r27)
/* 804B2E04  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 804B2E08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B2E0C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B2E10  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B2E14  7C 63 04 2E */	lfsx f3, r3, r0
/* 804B2E18  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804B2E1C  EC 20 10 2A */	fadds f1, f0, f2
/* 804B2E20  EC 02 00 F2 */	fmuls f0, f2, f3
/* 804B2E24  EC 21 00 2A */	fadds f1, f1, f0
/* 804B2E28  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804B2E2C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804B2E30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2E34  40 81 00 08 */	ble lbl_804B2E3C
/* 804B2E38  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_804B2E3C:
/* 804B2E3C  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 804B2E40  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_804B2E44:
/* 804B2E44  38 7B 06 F8 */	addi r3, r27, 0x6f8
/* 804B2E48  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804B2E4C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2E50  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 804B2E54  4B DB CB E9 */	bl cLib_addCalc2__FPffff
/* 804B2E58  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B2E5C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B2E60  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804B2E64  7D 89 03 A6 */	mtctr r12
/* 804B2E68  4E 80 04 21 */	bctrl 
/* 804B2E6C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804B2E70  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804B2E74  80 84 00 00 */	lwz r4, 0(r4)
/* 804B2E78  4B E9 36 39 */	bl PSMTXCopy
/* 804B2E7C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B2E80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B2E84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B2E88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804B2E8C  38 61 00 24 */	addi r3, r1, 0x24
/* 804B2E90  38 81 00 18 */	addi r4, r1, 0x18
/* 804B2E94  4B DB E0 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804B2E98  A8 1B 05 80 */	lha r0, 0x580(r27)
/* 804B2E9C  2C 00 00 00 */	cmpwi r0, 0
/* 804B2EA0  41 82 00 20 */	beq lbl_804B2EC0
/* 804B2EA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804B2EA8  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 804B2EAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804B2EB0  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 804B2EB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B2EB8  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 804B2EBC  48 00 00 54 */	b lbl_804B2F10
lbl_804B2EC0:
/* 804B2EC0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 804B2EC4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804B2EC8  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2ECC  C0 7B 10 94 */	lfs f3, 0x1094(r27)
/* 804B2ED0  4B DB CB 6D */	bl cLib_addCalc2__FPffff
/* 804B2ED4  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 804B2ED8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804B2EDC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2EE0  C0 7B 10 94 */	lfs f3, 0x1094(r27)
/* 804B2EE4  4B DB CB 59 */	bl cLib_addCalc2__FPffff
/* 804B2EE8  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 804B2EEC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804B2EF0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2EF4  C0 7B 10 94 */	lfs f3, 0x1094(r27)
/* 804B2EF8  4B DB CB 45 */	bl cLib_addCalc2__FPffff
/* 804B2EFC  38 7B 10 94 */	addi r3, r27, 0x1094
/* 804B2F00  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 804B2F04  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2F08  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 804B2F0C  4B DB CB 31 */	bl cLib_addCalc2__FPffff
lbl_804B2F10:
/* 804B2F10  7F 63 DB 78 */	mr r3, r27
/* 804B2F14  4B FF 8D CD */	bl line_control2_u__FP13dmg_rod_class
/* 804B2F18  7F 63 DB 78 */	mr r3, r27
/* 804B2F1C  4B FF F7 41 */	bl uki_calc__FP13dmg_rod_class
/* 804B2F20  38 7B 0F 64 */	addi r3, r27, 0xf64
/* 804B2F24  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 804B2F28  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2F2C  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 804B2F30  4B DB CB 0D */	bl cLib_addCalc2__FPffff
/* 804B2F34  38 7B 0F 68 */	addi r3, r27, 0xf68
/* 804B2F38  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804B2F3C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B2F40  C0 7E 02 0C */	lfs f3, 0x20c(r30)
/* 804B2F44  4B DB CA F9 */	bl cLib_addCalc2__FPffff
/* 804B2F48  A8 1B 05 7A */	lha r0, 0x57a(r27)
/* 804B2F4C  2C 00 00 00 */	cmpwi r0, 0
/* 804B2F50  40 82 01 80 */	bne lbl_804B30D0
/* 804B2F54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B2F58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B2F5C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804B2F60  28 00 00 00 */	cmplwi r0, 0
/* 804B2F64  40 82 01 6C */	bne lbl_804B30D0
/* 804B2F68  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B2F6C  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B2F70  40 80 01 60 */	bge lbl_804B30D0
/* 804B2F74  3C 60 80 4C */	lis r3, henna@ha /* 0x804BBBD0@ha */
/* 804B2F78  38 63 BB D0 */	addi r3, r3, henna@l /* 0x804BBBD0@l */
/* 804B2F7C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2F80  28 03 00 00 */	cmplwi r3, 0
/* 804B2F84  41 82 00 10 */	beq lbl_804B2F94
/* 804B2F88  A8 03 07 52 */	lha r0, 0x752(r3)
/* 804B2F8C  2C 00 00 00 */	cmpwi r0, 0
/* 804B2F90  40 82 01 40 */	bne lbl_804B30D0
lbl_804B2F94:
/* 804B2F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B2F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B2F9C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804B2FA0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804B2FA4  41 82 00 08 */	beq lbl_804B2FAC
/* 804B2FA8  48 00 01 28 */	b lbl_804B30D0
lbl_804B2FAC:
/* 804B2FAC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B2FB0  80 03 05 84 */	lwz r0, 0x584(r3)
/* 804B2FB4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804B2FB8  41 82 00 48 */	beq lbl_804B3000
/* 804B2FBC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 804B2FC0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B2FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2FC8  40 80 00 38 */	bge lbl_804B3000
/* 804B2FCC  C0 3B 14 DC */	lfs f1, 0x14dc(r27)
/* 804B2FD0  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 804B2FD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B2FD8  40 80 00 28 */	bge lbl_804B3000
/* 804B2FDC  88 7B 14 E4 */	lbz r3, 0x14e4(r27)
/* 804B2FE0  38 03 00 01 */	addi r0, r3, 1
/* 804B2FE4  98 1B 14 E4 */	stb r0, 0x14e4(r27)
/* 804B2FE8  88 1B 14 E4 */	lbz r0, 0x14e4(r27)
/* 804B2FEC  28 00 00 06 */	cmplwi r0, 6
/* 804B2FF0  40 81 00 18 */	ble lbl_804B3008
/* 804B2FF4  38 00 00 01 */	li r0, 1
/* 804B2FF8  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
/* 804B2FFC  48 00 00 0C */	b lbl_804B3008
lbl_804B3000:
/* 804B3000  38 00 00 00 */	li r0, 0
/* 804B3004  98 1B 14 E4 */	stb r0, 0x14e4(r27)
lbl_804B3008:
/* 804B3008  28 1D 00 00 */	cmplwi r29, 0
/* 804B300C  41 82 00 0C */	beq lbl_804B3018
/* 804B3010  38 00 00 01 */	li r0, 1
/* 804B3014  B0 1B 13 B4 */	sth r0, 0x13b4(r27)
lbl_804B3018:
/* 804B3018  A8 1B 13 B4 */	lha r0, 0x13b4(r27)
/* 804B301C  2C 00 00 00 */	cmpwi r0, 0
/* 804B3020  41 82 00 B0 */	beq lbl_804B30D0
/* 804B3024  83 BF 5D B4 */	lwz r29, 0x5db4(r31)
/* 804B3028  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 804B302C  4B CA B9 F5 */	bl checkFishingRodItem__9daPy_py_cFi
/* 804B3030  2C 03 00 00 */	cmpwi r3, 0
/* 804B3034  41 82 00 10 */	beq lbl_804B3044
/* 804B3038  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 804B303C  64 00 20 00 */	oris r0, r0, 0x2000
/* 804B3040  90 1D 05 78 */	stw r0, 0x578(r29)
lbl_804B3044:
/* 804B3044  38 00 00 01 */	li r0, 1
/* 804B3048  B0 1B 0F 7E */	sth r0, 0xf7e(r27)
/* 804B304C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B3050  D0 1B 06 E0 */	stfs f0, 0x6e0(r27)
/* 804B3054  D0 1B 15 04 */	stfs f0, 0x1504(r27)
/* 804B3058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B305C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B3060  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804B3064  7C 00 07 74 */	extsb r0, r0
/* 804B3068  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804B306C  7C 63 02 14 */	add r3, r3, r0
/* 804B3070  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804B3074  4B CC E5 A1 */	bl dCam_getControledAngleY__FP12camera_class
/* 804B3078  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 804B307C  7C 03 00 50 */	subf r0, r3, r0
/* 804B3080  B0 1B 14 18 */	sth r0, 0x1418(r27)
/* 804B3084  38 00 00 14 */	li r0, 0x14
/* 804B3088  B0 1B 05 7A */	sth r0, 0x57a(r27)
/* 804B308C  38 00 00 00 */	li r0, 0
/* 804B3090  98 1B 10 2E */	stb r0, 0x102e(r27)
/* 804B3094  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B3098  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020079@ha */
/* 804B309C  38 84 00 79 */	addi r4, r4, 0x0079 /* 0x00020079@l */
/* 804B30A0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B30A4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804B30A8  7D 89 03 A6 */	mtctr r12
/* 804B30AC  4E 80 04 21 */	bctrl 
/* 804B30B0  38 00 00 14 */	li r0, 0x14
/* 804B30B4  B0 1B 05 86 */	sth r0, 0x586(r27)
/* 804B30B8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B30BC  D0 1B 06 FC */	stfs f0, 0x6fc(r27)
/* 804B30C0  D0 1B 06 E0 */	stfs f0, 0x6e0(r27)
/* 804B30C4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B30C8  D0 1B 0F 68 */	stfs f0, 0xf68(r27)
/* 804B30CC  D0 1B 0F 64 */	stfs f0, 0xf64(r27)
lbl_804B30D0:
/* 804B30D0  39 61 00 50 */	addi r11, r1, 0x50
/* 804B30D4  4B EA F1 4D */	bl _restgpr_27
/* 804B30D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B30DC  7C 08 03 A6 */	mtlr r0
/* 804B30E0  38 21 00 50 */	addi r1, r1, 0x50
/* 804B30E4  4E 80 00 20 */	blr 
