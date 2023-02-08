lbl_800F8D04:
/* 800F8D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F8D08  7C 08 02 A6 */	mflr r0
/* 800F8D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F8D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F8D14  7C 7F 1B 78 */	mr r31, r3
/* 800F8D18  C0 23 1F DC */	lfs f1, 0x1fdc(r3)
/* 800F8D1C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F8D20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800F8D24  41 82 00 24 */	beq lbl_800F8D48
/* 800F8D28  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800F8D2C  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800F8D30  38 A0 00 05 */	li r5, 5
/* 800F8D34  38 C0 10 00 */	li r6, 0x1000
/* 800F8D38  38 E0 08 00 */	li r7, 0x800
/* 800F8D3C  48 17 78 05 */	bl cLib_addCalcAngleS__FPsssss
/* 800F8D40  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F8D44  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800F8D48:
/* 800F8D48  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800F8D4C  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 800F8D50  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F8D54  FC 00 02 10 */	fabs f0, f0
/* 800F8D58  FC 00 00 18 */	frsp f0, f0
/* 800F8D5C  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 800F8D60  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 800F8D64  40 81 00 14 */	ble lbl_800F8D78
/* 800F8D68  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800F8D6C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F8D70  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800F8D74  48 17 6C 09 */	bl cLib_addCalc__FPfffff
lbl_800F8D78:
/* 800F8D78  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800F8D7C  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 800F8D80  EC 00 08 28 */	fsubs f0, f0, f1
/* 800F8D84  FC 00 02 10 */	fabs f0, f0
/* 800F8D88  FC 00 00 18 */	frsp f0, f0
/* 800F8D8C  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 800F8D90  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 800F8D94  40 81 00 14 */	ble lbl_800F8DA8
/* 800F8D98  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 800F8D9C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F8DA0  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800F8DA4  48 17 6B D9 */	bl cLib_addCalc__FPfffff
lbl_800F8DA8:
/* 800F8DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F8DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F8DB0  7C 08 03 A6 */	mtlr r0
/* 800F8DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800F8DB8  4E 80 00 20 */	blr 
