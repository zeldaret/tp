lbl_805C0CAC:
/* 805C0CAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805C0CB0  7C 08 02 A6 */	mflr r0
/* 805C0CB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805C0CB8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805C0CBC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805C0CC0  39 61 00 40 */	addi r11, r1, 0x40
/* 805C0CC4  4B DA 15 18 */	b _savegpr_29
/* 805C0CC8  7C 7E 1B 78 */	mr r30, r3
/* 805C0CCC  FF E0 08 90 */	fmr f31, f1
/* 805C0CD0  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805C0CD4  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805C0CD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C0CDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C0CE0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 805C0CE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805C0CE8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 805C0CEC  88 1E 07 E4 */	lbz r0, 0x7e4(r30)
/* 805C0CF0  54 00 64 26 */	rlwinm r0, r0, 0xc, 0x10, 0x13
/* 805C0CF4  7C 64 02 14 */	add r3, r4, r0
/* 805C0CF8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C0CFC  C0 5E 07 3C */	lfs f2, 0x73c(r30)
/* 805C0D00  EC 22 00 32 */	fmuls f1, f2, f0
/* 805C0D04  7C 04 04 2E */	lfsx f0, r4, r0
/* 805C0D08  EC 02 00 32 */	fmuls f0, f2, f0
/* 805C0D0C  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 805C0D10  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C0D14  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 805C0D18  D0 3E 07 B0 */	stfs f1, 0x7b0(r30)
/* 805C0D1C  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 805C0D20  38 9E 07 B4 */	addi r4, r30, 0x7b4
/* 805C0D24  7C 65 1B 78 */	mr r5, r3
/* 805C0D28  4B D8 63 68 */	b PSVECAdd
/* 805C0D2C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C0D30  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 805C0D34  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C0D38  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C0D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0D40  40 80 00 08 */	bge lbl_805C0D48
/* 805C0D44  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
lbl_805C0D48:
/* 805C0D48  7F C3 F3 78 */	mr r3, r30
/* 805C0D4C  4B FF C3 11 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C0D50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C0D54  41 82 00 0C */	beq lbl_805C0D60
/* 805C0D58  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805C0D5C  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
lbl_805C0D60:
/* 805C0D60  C0 3E 07 AC */	lfs f1, 0x7ac(r30)
/* 805C0D64  C0 1E 07 40 */	lfs f0, 0x740(r30)
/* 805C0D68  EC 01 00 2A */	fadds f0, f1, f0
/* 805C0D6C  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 805C0D70  38 7E 07 40 */	addi r3, r30, 0x740
/* 805C0D74  FC 20 F8 90 */	fmr f1, f31
/* 805C0D78  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C0D7C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 805C0D80  4B CA EC BC */	b cLib_addCalc2__FPffff
/* 805C0D84  38 61 00 0C */	addi r3, r1, 0xc
/* 805C0D88  38 9E 07 A8 */	addi r4, r30, 0x7a8
/* 805C0D8C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805C0D90  4B CA 5D A4 */	b __mi__4cXyzCFRC3Vec
/* 805C0D94  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805C0D98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805C0D9C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805C0DA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C0DA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805C0DA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C0DAC  38 61 00 18 */	addi r3, r1, 0x18
/* 805C0DB0  4B D8 63 88 */	b PSVECSquareMag
/* 805C0DB4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C0DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0DBC  40 81 00 58 */	ble lbl_805C0E14
/* 805C0DC0  FC 00 08 34 */	frsqrte f0, f1
/* 805C0DC4  C8 9F 03 98 */	lfd f4, 0x398(r31)
/* 805C0DC8  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0DCC  C8 7F 03 A0 */	lfd f3, 0x3a0(r31)
/* 805C0DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 805C0DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 805C0DFC  FC 01 00 32 */	fmul f0, f1, f0
/* 805C0E00  FC 03 00 28 */	fsub f0, f3, f0
/* 805C0E04  FC 02 00 32 */	fmul f0, f2, f0
/* 805C0E08  FC 21 00 32 */	fmul f1, f1, f0
/* 805C0E0C  FC 20 08 18 */	frsp f1, f1
/* 805C0E10  48 00 00 88 */	b lbl_805C0E98
lbl_805C0E14:
/* 805C0E14  C8 1F 03 A8 */	lfd f0, 0x3a8(r31)
/* 805C0E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0E1C  40 80 00 10 */	bge lbl_805C0E2C
/* 805C0E20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C0E24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805C0E28  48 00 00 70 */	b lbl_805C0E98
lbl_805C0E2C:
/* 805C0E2C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C0E30  80 81 00 08 */	lwz r4, 8(r1)
/* 805C0E34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805C0E38  3C 00 7F 80 */	lis r0, 0x7f80
/* 805C0E3C  7C 03 00 00 */	cmpw r3, r0
/* 805C0E40  41 82 00 14 */	beq lbl_805C0E54
/* 805C0E44  40 80 00 40 */	bge lbl_805C0E84
/* 805C0E48  2C 03 00 00 */	cmpwi r3, 0
/* 805C0E4C  41 82 00 20 */	beq lbl_805C0E6C
/* 805C0E50  48 00 00 34 */	b lbl_805C0E84
lbl_805C0E54:
/* 805C0E54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0E58  41 82 00 0C */	beq lbl_805C0E64
/* 805C0E5C  38 00 00 01 */	li r0, 1
/* 805C0E60  48 00 00 28 */	b lbl_805C0E88
lbl_805C0E64:
/* 805C0E64  38 00 00 02 */	li r0, 2
/* 805C0E68  48 00 00 20 */	b lbl_805C0E88
lbl_805C0E6C:
/* 805C0E6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805C0E70  41 82 00 0C */	beq lbl_805C0E7C
/* 805C0E74  38 00 00 05 */	li r0, 5
/* 805C0E78  48 00 00 10 */	b lbl_805C0E88
lbl_805C0E7C:
/* 805C0E7C  38 00 00 03 */	li r0, 3
/* 805C0E80  48 00 00 08 */	b lbl_805C0E88
lbl_805C0E84:
/* 805C0E84  38 00 00 04 */	li r0, 4
lbl_805C0E88:
/* 805C0E88  2C 00 00 01 */	cmpwi r0, 1
/* 805C0E8C  40 82 00 0C */	bne lbl_805C0E98
/* 805C0E90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805C0E94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805C0E98:
/* 805C0E98  C0 1F 03 EC */	lfs f0, 0x3ec(r31)
/* 805C0E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C0EA0  40 81 00 0C */	ble lbl_805C0EAC
/* 805C0EA4  38 60 00 00 */	li r3, 0
/* 805C0EA8  48 00 00 30 */	b lbl_805C0ED8
lbl_805C0EAC:
/* 805C0EAC  88 1E 07 E9 */	lbz r0, 0x7e9(r30)
/* 805C0EB0  28 00 00 00 */	cmplwi r0, 0
/* 805C0EB4  40 82 00 14 */	bne lbl_805C0EC8
/* 805C0EB8  88 7E 07 E4 */	lbz r3, 0x7e4(r30)
/* 805C0EBC  38 03 00 01 */	addi r0, r3, 1
/* 805C0EC0  98 1E 07 E4 */	stb r0, 0x7e4(r30)
/* 805C0EC4  48 00 00 10 */	b lbl_805C0ED4
lbl_805C0EC8:
/* 805C0EC8  88 7E 07 E4 */	lbz r3, 0x7e4(r30)
/* 805C0ECC  38 03 FF FF */	addi r0, r3, -1
/* 805C0ED0  98 1E 07 E4 */	stb r0, 0x7e4(r30)
lbl_805C0ED4:
/* 805C0ED4  38 60 00 01 */	li r3, 1
lbl_805C0ED8:
/* 805C0ED8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805C0EDC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805C0EE0  39 61 00 40 */	addi r11, r1, 0x40
/* 805C0EE4  4B DA 13 44 */	b _restgpr_29
/* 805C0EE8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805C0EEC  7C 08 03 A6 */	mtlr r0
/* 805C0EF0  38 21 00 50 */	addi r1, r1, 0x50
/* 805C0EF4  4E 80 00 20 */	blr 
