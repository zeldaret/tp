lbl_80D19C34:
/* 80D19C34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D19C38  7C 08 02 A6 */	mflr r0
/* 80D19C3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D19C40  39 61 00 40 */	addi r11, r1, 0x40
/* 80D19C44  4B 64 85 98 */	b _savegpr_29
/* 80D19C48  7C 7F 1B 78 */	mr r31, r3
/* 80D19C4C  3C 60 80 D2 */	lis r3, lit_3775@ha
/* 80D19C50  3B C3 B6 D8 */	addi r30, r3, lit_3775@l
/* 80D19C54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D19C58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D19C5C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80D19C60  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80D19C64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D19C68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D19C6C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80D19C70  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D19C74  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D19C78  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80D19C7C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D19C80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D19C84  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D19C88  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80D19C8C  38 61 00 0C */	addi r3, r1, 0xc
/* 80D19C90  38 81 00 18 */	addi r4, r1, 0x18
/* 80D19C94  4B 62 D7 08 */	b PSVECSquareDistance
/* 80D19C98  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80D19C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19CA0  40 81 00 58 */	ble lbl_80D19CF8
/* 80D19CA4  FC 00 08 34 */	frsqrte f0, f1
/* 80D19CA8  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80D19CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D19CB0  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80D19CB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D19CB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D19CBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D19CC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D19CC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D19CC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D19CCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D19CD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D19CD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D19CD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D19CDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D19CE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D19CE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D19CE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D19CEC  FC 21 00 32 */	fmul f1, f1, f0
/* 80D19CF0  FC 20 08 18 */	frsp f1, f1
/* 80D19CF4  48 00 00 88 */	b lbl_80D19D7C
lbl_80D19CF8:
/* 80D19CF8  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80D19CFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19D00  40 80 00 10 */	bge lbl_80D19D10
/* 80D19D04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D19D08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D19D0C  48 00 00 70 */	b lbl_80D19D7C
lbl_80D19D10:
/* 80D19D10  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D19D14  80 81 00 08 */	lwz r4, 8(r1)
/* 80D19D18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D19D1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D19D20  7C 03 00 00 */	cmpw r3, r0
/* 80D19D24  41 82 00 14 */	beq lbl_80D19D38
/* 80D19D28  40 80 00 40 */	bge lbl_80D19D68
/* 80D19D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80D19D30  41 82 00 20 */	beq lbl_80D19D50
/* 80D19D34  48 00 00 34 */	b lbl_80D19D68
lbl_80D19D38:
/* 80D19D38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D19D3C  41 82 00 0C */	beq lbl_80D19D48
/* 80D19D40  38 00 00 01 */	li r0, 1
/* 80D19D44  48 00 00 28 */	b lbl_80D19D6C
lbl_80D19D48:
/* 80D19D48  38 00 00 02 */	li r0, 2
/* 80D19D4C  48 00 00 20 */	b lbl_80D19D6C
lbl_80D19D50:
/* 80D19D50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D19D54  41 82 00 0C */	beq lbl_80D19D60
/* 80D19D58  38 00 00 05 */	li r0, 5
/* 80D19D5C  48 00 00 10 */	b lbl_80D19D6C
lbl_80D19D60:
/* 80D19D60  38 00 00 03 */	li r0, 3
/* 80D19D64  48 00 00 08 */	b lbl_80D19D6C
lbl_80D19D68:
/* 80D19D68  38 00 00 04 */	li r0, 4
lbl_80D19D6C:
/* 80D19D6C  2C 00 00 01 */	cmpwi r0, 1
/* 80D19D70  40 82 00 0C */	bne lbl_80D19D7C
/* 80D19D74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D19D78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D19D7C:
/* 80D19D7C  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80D19D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19D84  40 80 00 AC */	bge lbl_80D19E30
/* 80D19D88  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D19D8C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D19D90  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D19D94  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80D19D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19D9C  40 80 00 94 */	bge lbl_80D19E30
/* 80D19DA0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80D19DA4  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80D19DA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D19DAC  40 82 00 84 */	bne lbl_80D19E30
/* 80D19DB0  7F A3 EB 78 */	mr r3, r29
/* 80D19DB4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80D19DB8  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 80D19DBC  7D 89 03 A6 */	mtctr r12
/* 80D19DC0  4E 80 04 21 */	bctrl 
/* 80D19DC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D19DC8  41 82 00 68 */	beq lbl_80D19E30
/* 80D19DCC  38 00 00 02 */	li r0, 2
/* 80D19DD0  98 1F 07 11 */	stb r0, 0x711(r31)
/* 80D19DD4  38 00 00 00 */	li r0, 0
/* 80D19DD8  98 1F 07 12 */	stb r0, 0x712(r31)
/* 80D19DDC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80D19DE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D19DE4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80D19DE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D19DEC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80D19DF0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D19DF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D19DF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D19DFC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D19E00  38 80 00 09 */	li r4, 9
/* 80D19E04  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80D19E08  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80D19E0C  7D 89 03 A6 */	mtctr r12
/* 80D19E10  4E 80 04 21 */	bctrl 
/* 80D19E14  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80D19E18  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80D19E1C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D19E20  4B 62 C6 90 */	b PSMTXCopy
/* 80D19E24  38 61 00 24 */	addi r3, r1, 0x24
/* 80D19E28  38 9F 07 3C */	addi r4, r31, 0x73c
/* 80D19E2C  4B 55 70 C0 */	b MtxPosition__FP4cXyzP4cXyz
lbl_80D19E30:
/* 80D19E30  39 61 00 40 */	addi r11, r1, 0x40
/* 80D19E34  4B 64 83 F4 */	b _restgpr_29
/* 80D19E38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D19E3C  7C 08 03 A6 */	mtlr r0
/* 80D19E40  38 21 00 40 */	addi r1, r1, 0x40
/* 80D19E44  4E 80 00 20 */	blr 
