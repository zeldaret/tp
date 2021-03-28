lbl_80D65D60:
/* 80D65D60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D65D64  7C 08 02 A6 */	mflr r0
/* 80D65D68  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D65D6C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80D65D70  3C 80 80 D6 */	lis r4, l_sph_src@ha
/* 80D65D74  3B E4 62 10 */	addi r31, r4, l_sph_src@l
/* 80D65D78  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 80D65D7C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D65D80  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80D65D84  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D65D88  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80D65D8C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D65D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D65D94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D65D98  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D65D9C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D65DA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D65DA4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D65DA8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D65DAC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D65DB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D65DB4  38 61 00 18 */	addi r3, r1, 0x18
/* 80D65DB8  38 81 00 30 */	addi r4, r1, 0x30
/* 80D65DBC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80D65DC0  4B 50 0D 74 */	b __mi__4cXyzCFRC3Vec
/* 80D65DC4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D65DC8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D65DCC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D65DD0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D65DD4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80D65DD8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D65DDC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80D65DE0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D65DE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D65DE8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D65DEC  38 61 00 0C */	addi r3, r1, 0xc
/* 80D65DF0  4B 5E 13 48 */	b PSVECSquareMag
/* 80D65DF4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D65DF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D65DFC  40 81 00 58 */	ble lbl_80D65E54
/* 80D65E00  FC 00 08 34 */	frsqrte f0, f1
/* 80D65E04  C8 9F 00 58 */	lfd f4, 0x58(r31)
/* 80D65E08  FC 44 00 32 */	fmul f2, f4, f0
/* 80D65E0C  C8 7F 00 60 */	lfd f3, 0x60(r31)
/* 80D65E10  FC 00 00 32 */	fmul f0, f0, f0
/* 80D65E14  FC 01 00 32 */	fmul f0, f1, f0
/* 80D65E18  FC 03 00 28 */	fsub f0, f3, f0
/* 80D65E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D65E20  FC 44 00 32 */	fmul f2, f4, f0
/* 80D65E24  FC 00 00 32 */	fmul f0, f0, f0
/* 80D65E28  FC 01 00 32 */	fmul f0, f1, f0
/* 80D65E2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D65E30  FC 02 00 32 */	fmul f0, f2, f0
/* 80D65E34  FC 44 00 32 */	fmul f2, f4, f0
/* 80D65E38  FC 00 00 32 */	fmul f0, f0, f0
/* 80D65E3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D65E40  FC 03 00 28 */	fsub f0, f3, f0
/* 80D65E44  FC 02 00 32 */	fmul f0, f2, f0
/* 80D65E48  FC 21 00 32 */	fmul f1, f1, f0
/* 80D65E4C  FC 20 08 18 */	frsp f1, f1
/* 80D65E50  48 00 00 88 */	b lbl_80D65ED8
lbl_80D65E54:
/* 80D65E54  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 80D65E58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D65E5C  40 80 00 10 */	bge lbl_80D65E6C
/* 80D65E60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D65E64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D65E68  48 00 00 70 */	b lbl_80D65ED8
lbl_80D65E6C:
/* 80D65E6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D65E70  80 81 00 08 */	lwz r4, 8(r1)
/* 80D65E74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D65E78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D65E7C  7C 03 00 00 */	cmpw r3, r0
/* 80D65E80  41 82 00 14 */	beq lbl_80D65E94
/* 80D65E84  40 80 00 40 */	bge lbl_80D65EC4
/* 80D65E88  2C 03 00 00 */	cmpwi r3, 0
/* 80D65E8C  41 82 00 20 */	beq lbl_80D65EAC
/* 80D65E90  48 00 00 34 */	b lbl_80D65EC4
lbl_80D65E94:
/* 80D65E94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D65E98  41 82 00 0C */	beq lbl_80D65EA4
/* 80D65E9C  38 00 00 01 */	li r0, 1
/* 80D65EA0  48 00 00 28 */	b lbl_80D65EC8
lbl_80D65EA4:
/* 80D65EA4  38 00 00 02 */	li r0, 2
/* 80D65EA8  48 00 00 20 */	b lbl_80D65EC8
lbl_80D65EAC:
/* 80D65EAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D65EB0  41 82 00 0C */	beq lbl_80D65EBC
/* 80D65EB4  38 00 00 05 */	li r0, 5
/* 80D65EB8  48 00 00 10 */	b lbl_80D65EC8
lbl_80D65EBC:
/* 80D65EBC  38 00 00 03 */	li r0, 3
/* 80D65EC0  48 00 00 08 */	b lbl_80D65EC8
lbl_80D65EC4:
/* 80D65EC4  38 00 00 04 */	li r0, 4
lbl_80D65EC8:
/* 80D65EC8  2C 00 00 01 */	cmpwi r0, 1
/* 80D65ECC  40 82 00 0C */	bne lbl_80D65ED8
/* 80D65ED0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D65ED4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D65ED8:
/* 80D65ED8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80D65EDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D65EE0  7C 08 03 A6 */	mtlr r0
/* 80D65EE4  38 21 00 50 */	addi r1, r1, 0x50
/* 80D65EE8  4E 80 00 20 */	blr 
