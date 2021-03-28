lbl_805D497C:
/* 805D497C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805D4980  7C 08 02 A6 */	mflr r0
/* 805D4984  90 01 00 54 */	stw r0, 0x54(r1)
/* 805D4988  39 61 00 50 */	addi r11, r1, 0x50
/* 805D498C  4B D8 D8 44 */	b _savegpr_26
/* 805D4990  7C 7A 1B 78 */	mr r26, r3
/* 805D4994  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805D4998  3B A4 CA 54 */	addi r29, r4, lit_3932@l
/* 805D499C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805D49A0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 805D49A4  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 805D49A8  4B FF F8 F5 */	bl mBattle2MoveFSet__8daB_DS_cFv
/* 805D49AC  7C 7F 1B 78 */	mr r31, r3
/* 805D49B0  3B 60 00 00 */	li r27, 0
/* 805D49B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D49B8  40 82 00 70 */	bne lbl_805D4A28
/* 805D49BC  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D49C0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D49C4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D49C8  7D 89 03 A6 */	mtctr r12
/* 805D49CC  4E 80 04 21 */	bctrl 
/* 805D49D0  28 03 00 00 */	cmplwi r3, 0
/* 805D49D4  41 82 00 54 */	beq lbl_805D4A28
/* 805D49D8  38 61 00 20 */	addi r3, r1, 0x20
/* 805D49DC  38 9A 07 18 */	addi r4, r26, 0x718
/* 805D49E0  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 805D49E4  4B C9 21 50 */	b __mi__4cXyzCFRC3Vec
/* 805D49E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805D49EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D49F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805D49F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D49F8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805D49FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D4A00  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D4A04  4B C9 27 24 */	b atan2sX_Z__4cXyzCFv
/* 805D4A08  7C 64 1B 78 */	mr r4, r3
/* 805D4A0C  38 7A 04 DE */	addi r3, r26, 0x4de
/* 805D4A10  38 A0 00 01 */	li r5, 1
/* 805D4A14  38 C0 04 00 */	li r6, 0x400
/* 805D4A18  4B C9 BB F0 */	b cLib_addCalcAngleS2__FPssss
/* 805D4A1C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 805D4A20  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 805D4A24  48 00 00 10 */	b lbl_805D4A34
lbl_805D4A28:
/* 805D4A28  7F 43 D3 78 */	mr r3, r26
/* 805D4A2C  4B FF F3 55 */	bl mNeckAngleSet__8daB_DS_cFv
/* 805D4A30  7C 7B 1B 78 */	mr r27, r3
lbl_805D4A34:
/* 805D4A34  80 BA 06 84 */	lwz r5, 0x684(r26)
/* 805D4A38  2C 05 00 04 */	cmpwi r5, 4
/* 805D4A3C  41 82 04 20 */	beq lbl_805D4E5C
/* 805D4A40  40 80 00 1C */	bge lbl_805D4A5C
/* 805D4A44  2C 05 00 00 */	cmpwi r5, 0
/* 805D4A48  41 82 00 2C */	beq lbl_805D4A74
/* 805D4A4C  41 80 05 8C */	blt lbl_805D4FD8
/* 805D4A50  2C 05 00 03 */	cmpwi r5, 3
/* 805D4A54  40 80 03 6C */	bge lbl_805D4DC0
/* 805D4A58  48 00 00 8C */	b lbl_805D4AE4
lbl_805D4A5C:
/* 805D4A5C  2C 05 00 64 */	cmpwi r5, 0x64
/* 805D4A60  41 82 05 24 */	beq lbl_805D4F84
/* 805D4A64  40 80 05 74 */	bge lbl_805D4FD8
/* 805D4A68  2C 05 00 0A */	cmpwi r5, 0xa
/* 805D4A6C  41 82 05 18 */	beq lbl_805D4F84
/* 805D4A70  48 00 05 68 */	b lbl_805D4FD8
lbl_805D4A74:
/* 805D4A74  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D4A78  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D4A7C  A8 03 00 2E */	lha r0, 0x2e(r3)
/* 805D4A80  90 1A 08 1C */	stw r0, 0x81c(r26)
/* 805D4A84  38 00 00 00 */	li r0, 0
/* 805D4A88  98 1A 08 5A */	stb r0, 0x85a(r26)
/* 805D4A8C  7F 43 D3 78 */	mr r3, r26
/* 805D4A90  38 80 00 2C */	li r4, 0x2c
/* 805D4A94  38 A0 00 02 */	li r5, 2
/* 805D4A98  C0 3D 01 90 */	lfs f1, 0x190(r29)
/* 805D4A9C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D4AA0  4B FF 70 29 */	bl setBck__8daB_DS_cFiUcff
/* 805D4AA4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4AA8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D4AAC  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D4AB0  7D 89 03 A6 */	mtctr r12
/* 805D4AB4  4E 80 04 21 */	bctrl 
/* 805D4AB8  28 03 00 00 */	cmplwi r3, 0
/* 805D4ABC  40 82 00 1C */	bne lbl_805D4AD8
/* 805D4AC0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D4AC4  D0 1A 08 08 */	stfs f0, 0x808(r26)
/* 805D4AC8  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D4ACC  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D4AD0  A8 03 00 30 */	lha r0, 0x30(r3)
/* 805D4AD4  90 1A 08 34 */	stw r0, 0x834(r26)
lbl_805D4AD8:
/* 805D4AD8  80 7A 06 84 */	lwz r3, 0x684(r26)
/* 805D4ADC  38 03 00 01 */	addi r0, r3, 1
/* 805D4AE0  90 1A 06 84 */	stw r0, 0x684(r26)
lbl_805D4AE4:
/* 805D4AE4  38 61 00 14 */	addi r3, r1, 0x14
/* 805D4AE8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805D4AEC  38 BA 04 A8 */	addi r5, r26, 0x4a8
/* 805D4AF0  4B C9 20 44 */	b __mi__4cXyzCFRC3Vec
/* 805D4AF4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805D4AF8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D4AFC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805D4B00  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D4B04  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805D4B08  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D4B0C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D4B10  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D4B14  38 7A 08 1C */	addi r3, r26, 0x81c
/* 805D4B18  48 00 7D CD */	bl func_805DC8E4
/* 805D4B1C  2C 03 00 00 */	cmpwi r3, 0
/* 805D4B20  41 82 01 14 */	beq lbl_805D4C34
/* 805D4B24  80 1A 08 1C */	lwz r0, 0x81c(r26)
/* 805D4B28  2C 00 00 05 */	cmpwi r0, 5
/* 805D4B2C  40 81 04 AC */	ble lbl_805D4FD8
/* 805D4B30  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D4B34  4B D7 26 04 */	b PSVECSquareMag
/* 805D4B38  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D4B3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4B40  40 81 00 58 */	ble lbl_805D4B98
/* 805D4B44  FC 00 08 34 */	frsqrte f0, f1
/* 805D4B48  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 805D4B4C  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4B50  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 805D4B54  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4B58  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4B5C  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4B60  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4B64  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4B68  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4B6C  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4B70  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4B74  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4B78  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4B7C  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4B80  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4B84  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4B88  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4B8C  FC 21 00 32 */	fmul f1, f1, f0
/* 805D4B90  FC 20 08 18 */	frsp f1, f1
/* 805D4B94  48 00 00 88 */	b lbl_805D4C1C
lbl_805D4B98:
/* 805D4B98  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 805D4B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4BA0  40 80 00 10 */	bge lbl_805D4BB0
/* 805D4BA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D4BA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805D4BAC  48 00 00 70 */	b lbl_805D4C1C
lbl_805D4BB0:
/* 805D4BB0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805D4BB4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805D4BB8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D4BBC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D4BC0  7C 03 00 00 */	cmpw r3, r0
/* 805D4BC4  41 82 00 14 */	beq lbl_805D4BD8
/* 805D4BC8  40 80 00 40 */	bge lbl_805D4C08
/* 805D4BCC  2C 03 00 00 */	cmpwi r3, 0
/* 805D4BD0  41 82 00 20 */	beq lbl_805D4BF0
/* 805D4BD4  48 00 00 34 */	b lbl_805D4C08
lbl_805D4BD8:
/* 805D4BD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4BDC  41 82 00 0C */	beq lbl_805D4BE8
/* 805D4BE0  38 00 00 01 */	li r0, 1
/* 805D4BE4  48 00 00 28 */	b lbl_805D4C0C
lbl_805D4BE8:
/* 805D4BE8  38 00 00 02 */	li r0, 2
/* 805D4BEC  48 00 00 20 */	b lbl_805D4C0C
lbl_805D4BF0:
/* 805D4BF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4BF4  41 82 00 0C */	beq lbl_805D4C00
/* 805D4BF8  38 00 00 05 */	li r0, 5
/* 805D4BFC  48 00 00 10 */	b lbl_805D4C0C
lbl_805D4C00:
/* 805D4C00  38 00 00 03 */	li r0, 3
/* 805D4C04  48 00 00 08 */	b lbl_805D4C0C
lbl_805D4C08:
/* 805D4C08  38 00 00 04 */	li r0, 4
lbl_805D4C0C:
/* 805D4C0C  2C 00 00 01 */	cmpwi r0, 1
/* 805D4C10  40 82 00 0C */	bne lbl_805D4C1C
/* 805D4C14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D4C18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805D4C1C:
/* 805D4C1C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D4C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4C24  40 80 03 B4 */	bge lbl_805D4FD8
/* 805D4C28  38 00 00 05 */	li r0, 5
/* 805D4C2C  90 1A 08 1C */	stw r0, 0x81c(r26)
/* 805D4C30  48 00 03 A8 */	b lbl_805D4FD8
lbl_805D4C34:
/* 805D4C34  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D4C38  4B D7 25 00 */	b PSVECSquareMag
/* 805D4C3C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805D4C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4C44  40 81 00 58 */	ble lbl_805D4C9C
/* 805D4C48  FC 00 08 34 */	frsqrte f0, f1
/* 805D4C4C  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 805D4C50  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4C54  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 805D4C58  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4C60  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4C64  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4C68  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4C70  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4C74  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4C78  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 805D4C80  FC 00 00 32 */	fmul f0, f0, f0
/* 805D4C84  FC 01 00 32 */	fmul f0, f1, f0
/* 805D4C88  FC 03 00 28 */	fsub f0, f3, f0
/* 805D4C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 805D4C90  FC 21 00 32 */	fmul f1, f1, f0
/* 805D4C94  FC 20 08 18 */	frsp f1, f1
/* 805D4C98  48 00 00 88 */	b lbl_805D4D20
lbl_805D4C9C:
/* 805D4C9C  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 805D4CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4CA4  40 80 00 10 */	bge lbl_805D4CB4
/* 805D4CA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D4CAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805D4CB0  48 00 00 70 */	b lbl_805D4D20
lbl_805D4CB4:
/* 805D4CB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D4CB8  80 81 00 08 */	lwz r4, 8(r1)
/* 805D4CBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805D4CC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 805D4CC4  7C 03 00 00 */	cmpw r3, r0
/* 805D4CC8  41 82 00 14 */	beq lbl_805D4CDC
/* 805D4CCC  40 80 00 40 */	bge lbl_805D4D0C
/* 805D4CD0  2C 03 00 00 */	cmpwi r3, 0
/* 805D4CD4  41 82 00 20 */	beq lbl_805D4CF4
/* 805D4CD8  48 00 00 34 */	b lbl_805D4D0C
lbl_805D4CDC:
/* 805D4CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4CE0  41 82 00 0C */	beq lbl_805D4CEC
/* 805D4CE4  38 00 00 01 */	li r0, 1
/* 805D4CE8  48 00 00 28 */	b lbl_805D4D10
lbl_805D4CEC:
/* 805D4CEC  38 00 00 02 */	li r0, 2
/* 805D4CF0  48 00 00 20 */	b lbl_805D4D10
lbl_805D4CF4:
/* 805D4CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805D4CF8  41 82 00 0C */	beq lbl_805D4D04
/* 805D4CFC  38 00 00 05 */	li r0, 5
/* 805D4D00  48 00 00 10 */	b lbl_805D4D10
lbl_805D4D04:
/* 805D4D04  38 00 00 03 */	li r0, 3
/* 805D4D08  48 00 00 08 */	b lbl_805D4D10
lbl_805D4D0C:
/* 805D4D0C  38 00 00 04 */	li r0, 4
lbl_805D4D10:
/* 805D4D10  2C 00 00 01 */	cmpwi r0, 1
/* 805D4D14  40 82 00 0C */	bne lbl_805D4D20
/* 805D4D18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805D4D1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805D4D20:
/* 805D4D20  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805D4D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D4D28  40 81 00 20 */	ble lbl_805D4D48
/* 805D4D2C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 805D4D30  41 82 02 A8 */	beq lbl_805D4FD8
/* 805D4D34  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 805D4D38  41 82 02 A0 */	beq lbl_805D4FD8
/* 805D4D3C  A8 1A 07 CC */	lha r0, 0x7cc(r26)
/* 805D4D40  2C 00 28 80 */	cmpwi r0, 0x2880
/* 805D4D44  41 81 02 94 */	bgt lbl_805D4FD8
lbl_805D4D48:
/* 805D4D48  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4D4C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805D4D50  7C 00 07 35 */	extsh. r0, r0
/* 805D4D54  41 82 00 20 */	beq lbl_805D4D74
/* 805D4D58  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D4D5C  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D4D60  A8 03 00 30 */	lha r0, 0x30(r3)
/* 805D4D64  90 1A 08 34 */	stw r0, 0x834(r26)
/* 805D4D68  38 00 00 00 */	li r0, 0
/* 805D4D6C  98 1A 08 60 */	stb r0, 0x860(r26)
/* 805D4D70  48 00 02 68 */	b lbl_805D4FD8
lbl_805D4D74:
/* 805D4D74  80 1A 06 84 */	lwz r0, 0x684(r26)
/* 805D4D78  2C 00 00 01 */	cmpwi r0, 1
/* 805D4D7C  40 82 00 1C */	bne lbl_805D4D98
/* 805D4D80  A8 1A 07 CE */	lha r0, 0x7ce(r26)
/* 805D4D84  2C 00 28 00 */	cmpwi r0, 0x2800
/* 805D4D88  40 81 00 28 */	ble lbl_805D4DB0
/* 805D4D8C  38 00 28 00 */	li r0, 0x2800
/* 805D4D90  B0 1A 07 CE */	sth r0, 0x7ce(r26)
/* 805D4D94  48 00 00 1C */	b lbl_805D4DB0
lbl_805D4D98:
/* 805D4D98  7F 43 D3 78 */	mr r3, r26
/* 805D4D9C  38 80 00 29 */	li r4, 0x29
/* 805D4DA0  38 A0 00 00 */	li r5, 0
/* 805D4DA4  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D4DA8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D4DAC  4B FF 6D 1D */	bl setBck__8daB_DS_cFiUcff
lbl_805D4DB0:
/* 805D4DB0  80 7A 06 84 */	lwz r3, 0x684(r26)
/* 805D4DB4  38 03 00 01 */	addi r0, r3, 1
/* 805D4DB8  90 1A 06 84 */	stw r0, 0x684(r26)
/* 805D4DBC  48 00 02 1C */	b lbl_805D4FD8
lbl_805D4DC0:
/* 805D4DC0  80 9A 05 B4 */	lwz r4, 0x5b4(r26)
/* 805D4DC4  38 60 00 01 */	li r3, 1
/* 805D4DC8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805D4DCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D4DD0  40 82 00 18 */	bne lbl_805D4DE8
/* 805D4DD4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805D4DD8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805D4DDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D4DE0  41 82 00 08 */	beq lbl_805D4DE8
/* 805D4DE4  38 60 00 00 */	li r3, 0
lbl_805D4DE8:
/* 805D4DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D4DEC  40 82 00 44 */	bne lbl_805D4E30
/* 805D4DF0  38 64 00 0C */	addi r3, r4, 0xc
/* 805D4DF4  C0 3D 04 B4 */	lfs f1, 0x4b4(r29)
/* 805D4DF8  4B D5 36 34 */	b checkPass__12J3DFrameCtrlFf
/* 805D4DFC  2C 03 00 00 */	cmpwi r3, 0
/* 805D4E00  41 82 01 D8 */	beq lbl_805D4FD8
/* 805D4E04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D9@ha */
/* 805D4E08  38 03 04 D9 */	addi r0, r3, 0x04D9 /* 0x000704D9@l */
/* 805D4E0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D4E10  38 7A 05 DC */	addi r3, r26, 0x5dc
/* 805D4E14  38 81 00 10 */	addi r4, r1, 0x10
/* 805D4E18  38 A0 FF FF */	li r5, -1
/* 805D4E1C  81 9A 05 DC */	lwz r12, 0x5dc(r26)
/* 805D4E20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D4E24  7D 89 03 A6 */	mtctr r12
/* 805D4E28  4E 80 04 21 */	bctrl 
/* 805D4E2C  48 00 01 AC */	b lbl_805D4FD8
lbl_805D4E30:
/* 805D4E30  7F 43 D3 78 */	mr r3, r26
/* 805D4E34  38 80 00 2A */	li r4, 0x2a
/* 805D4E38  38 A0 00 02 */	li r5, 2
/* 805D4E3C  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D4E40  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D4E44  4B FF 6C 85 */	bl setBck__8daB_DS_cFiUcff
/* 805D4E48  38 00 00 01 */	li r0, 1
/* 805D4E4C  98 1A 08 5A */	stb r0, 0x85a(r26)
/* 805D4E50  80 7A 06 84 */	lwz r3, 0x684(r26)
/* 805D4E54  38 03 00 01 */	addi r0, r3, 1
/* 805D4E58  90 1A 06 84 */	stw r0, 0x684(r26)
lbl_805D4E5C:
/* 805D4E5C  88 1A 08 5A */	lbz r0, 0x85a(r26)
/* 805D4E60  28 00 00 00 */	cmplwi r0, 0
/* 805D4E64  41 82 00 10 */	beq lbl_805D4E74
/* 805D4E68  38 00 00 03 */	li r0, 3
/* 805D4E6C  90 1A 06 A8 */	stw r0, 0x6a8(r26)
/* 805D4E70  48 00 01 68 */	b lbl_805D4FD8
lbl_805D4E74:
/* 805D4E74  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4E78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D4E7C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D4E80  7D 89 03 A6 */	mtctr r12
/* 805D4E84  4E 80 04 21 */	bctrl 
/* 805D4E88  28 03 00 00 */	cmplwi r3, 0
/* 805D4E8C  41 82 00 58 */	beq lbl_805D4EE4
/* 805D4E90  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4E94  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 805D4E98  7C 00 07 35 */	extsh. r0, r0
/* 805D4E9C  40 82 00 48 */	bne lbl_805D4EE4
/* 805D4EA0  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D4EA4  38 83 DA BC */	addi r4, r3, l_HIO@l
/* 805D4EA8  A8 64 00 46 */	lha r3, 0x46(r4)
/* 805D4EAC  A8 1A 07 CE */	lha r0, 0x7ce(r26)
/* 805D4EB0  7C 03 00 50 */	subf r0, r3, r0
/* 805D4EB4  B0 1A 07 CE */	sth r0, 0x7ce(r26)
/* 805D4EB8  A8 7A 07 CE */	lha r3, 0x7ce(r26)
/* 805D4EBC  A8 04 00 48 */	lha r0, 0x48(r4)
/* 805D4EC0  7C 03 00 00 */	cmpw r3, r0
/* 805D4EC4  41 81 00 9C */	bgt lbl_805D4F60
/* 805D4EC8  38 00 00 02 */	li r0, 2
/* 805D4ECC  90 1A 06 A8 */	stw r0, 0x6a8(r26)
/* 805D4ED0  7F 43 D3 78 */	mr r3, r26
/* 805D4ED4  38 80 00 03 */	li r4, 3
/* 805D4ED8  38 A0 00 00 */	li r5, 0
/* 805D4EDC  4B FF 6C 99 */	bl setActionMode__8daB_DS_cFii
/* 805D4EE0  48 00 00 F8 */	b lbl_805D4FD8
lbl_805D4EE4:
/* 805D4EE4  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4EE8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D4EEC  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805D4EF0  7D 89 03 A6 */	mtctr r12
/* 805D4EF4  4E 80 04 21 */	bctrl 
/* 805D4EF8  28 03 00 00 */	cmplwi r3, 0
/* 805D4EFC  41 82 00 40 */	beq lbl_805D4F3C
/* 805D4F00  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4F04  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D4F08  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 805D4F0C  7D 89 03 A6 */	mtctr r12
/* 805D4F10  4E 80 04 21 */	bctrl 
/* 805D4F14  28 03 00 00 */	cmplwi r3, 0
/* 805D4F18  41 82 00 48 */	beq lbl_805D4F60
/* 805D4F1C  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805D4F20  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D4F24  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 805D4F28  7D 89 03 A6 */	mtctr r12
/* 805D4F2C  4E 80 04 21 */	bctrl 
/* 805D4F30  80 03 06 78 */	lwz r0, 0x678(r3)
/* 805D4F34  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D4F38  41 82 00 28 */	beq lbl_805D4F60
lbl_805D4F3C:
/* 805D4F3C  7F 43 D3 78 */	mr r3, r26
/* 805D4F40  38 80 00 2B */	li r4, 0x2b
/* 805D4F44  38 A0 00 00 */	li r5, 0
/* 805D4F48  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D4F4C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D4F50  4B FF 6B 79 */	bl setBck__8daB_DS_cFiUcff
/* 805D4F54  38 00 00 64 */	li r0, 0x64
/* 805D4F58  90 1A 06 84 */	stw r0, 0x684(r26)
/* 805D4F5C  48 00 00 7C */	b lbl_805D4FD8
lbl_805D4F60:
/* 805D4F60  7F 43 D3 78 */	mr r3, r26
/* 805D4F64  38 80 00 2B */	li r4, 0x2b
/* 805D4F68  38 A0 00 00 */	li r5, 0
/* 805D4F6C  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 805D4F70  C0 5D 00 08 */	lfs f2, 8(r29)
/* 805D4F74  4B FF 6B 55 */	bl setBck__8daB_DS_cFiUcff
/* 805D4F78  38 00 00 0A */	li r0, 0xa
/* 805D4F7C  90 1A 06 84 */	stw r0, 0x684(r26)
/* 805D4F80  48 00 00 58 */	b lbl_805D4FD8
lbl_805D4F84:
/* 805D4F84  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 805D4F88  38 80 00 01 */	li r4, 1
/* 805D4F8C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D4F90  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D4F94  40 82 00 18 */	bne lbl_805D4FAC
/* 805D4F98  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805D4F9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D4FA0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D4FA4  41 82 00 08 */	beq lbl_805D4FAC
/* 805D4FA8  38 80 00 00 */	li r4, 0
lbl_805D4FAC:
/* 805D4FAC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D4FB0  41 82 00 28 */	beq lbl_805D4FD8
/* 805D4FB4  2C 05 00 0A */	cmpwi r5, 0xa
/* 805D4FB8  40 82 00 10 */	bne lbl_805D4FC8
/* 805D4FBC  38 00 00 00 */	li r0, 0
/* 805D4FC0  90 1A 06 84 */	stw r0, 0x684(r26)
/* 805D4FC4  48 00 00 14 */	b lbl_805D4FD8
lbl_805D4FC8:
/* 805D4FC8  7F 43 D3 78 */	mr r3, r26
/* 805D4FCC  38 80 00 01 */	li r4, 1
/* 805D4FD0  38 A0 00 00 */	li r5, 0
/* 805D4FD4  4B FF 6B A1 */	bl setActionMode__8daB_DS_cFii
lbl_805D4FD8:
/* 805D4FD8  38 7A 06 A8 */	addi r3, r26, 0x6a8
/* 805D4FDC  48 00 79 09 */	bl func_805DC8E4
/* 805D4FE0  2C 03 00 01 */	cmpwi r3, 1
/* 805D4FE4  40 82 00 38 */	bne lbl_805D501C
/* 805D4FE8  80 9A 2E 18 */	lwz r4, 0x2e18(r26)
/* 805D4FEC  28 04 00 00 */	cmplwi r4, 0
/* 805D4FF0  41 82 00 2C */	beq lbl_805D501C
/* 805D4FF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D4FF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D4FFC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805D5000  38 63 02 10 */	addi r3, r3, 0x210
/* 805D5004  4B A7 69 14 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 805D5008  28 03 00 00 */	cmplwi r3, 0
/* 805D500C  41 82 00 10 */	beq lbl_805D501C
/* 805D5010  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 805D5014  60 00 00 04 */	ori r0, r0, 4
/* 805D5018  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_805D501C:
/* 805D501C  7F 43 D3 78 */	mr r3, r26
/* 805D5020  38 80 00 01 */	li r4, 1
/* 805D5024  4B FF E9 81 */	bl mFuwafuwaSet__8daB_DS_cFb
/* 805D5028  39 61 00 50 */	addi r11, r1, 0x50
/* 805D502C  4B D8 D1 F0 */	b _restgpr_26
/* 805D5030  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805D5034  7C 08 03 A6 */	mtlr r0
/* 805D5038  38 21 00 50 */	addi r1, r1, 0x50
/* 805D503C  4E 80 00 20 */	blr 
