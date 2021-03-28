lbl_80529D7C:
/* 80529D7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80529D80  7C 08 02 A6 */	mflr r0
/* 80529D84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80529D88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80529D8C  3C 80 80 53 */	lis r4, lit_3679@ha
/* 80529D90  3B E4 61 68 */	addi r31, r4, lit_3679@l
/* 80529D94  80 03 06 4C */	lwz r0, 0x64c(r3)
/* 80529D98  90 01 00 08 */	stw r0, 8(r1)
/* 80529D9C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80529DA0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80529DA4  38 81 00 08 */	addi r4, r1, 8
/* 80529DA8  4B AE FA 50 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80529DAC  28 03 00 00 */	cmplwi r3, 0
/* 80529DB0  41 82 00 88 */	beq lbl_80529E38
/* 80529DB4  88 03 10 AB */	lbz r0, 0x10ab(r3)
/* 80529DB8  28 00 00 00 */	cmplwi r0, 0
/* 80529DBC  40 82 00 7C */	bne lbl_80529E38
/* 80529DC0  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80529DC4  C0 23 0F 60 */	lfs f1, 0xf60(r3)
/* 80529DC8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80529DCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80529DD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80529DD4  FC 00 00 1E */	fctiwz f0, f0
/* 80529DD8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80529DDC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80529DE0  2C 00 00 00 */	cmpwi r0, 0
/* 80529DE4  40 80 00 0C */	bge lbl_80529DF0
/* 80529DE8  38 00 00 00 */	li r0, 0
/* 80529DEC  48 00 00 10 */	b lbl_80529DFC
lbl_80529DF0:
/* 80529DF0  2C 00 00 03 */	cmpwi r0, 3
/* 80529DF4  40 81 00 08 */	ble lbl_80529DFC
/* 80529DF8  38 00 00 03 */	li r0, 3
lbl_80529DFC:
/* 80529DFC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80529E00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80529E04  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80529E08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80529E0C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80529E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529E18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80529E1C  54 00 10 3A */	slwi r0, r0, 2
/* 80529E20  3C 80 80 53 */	lis r4, vib_p@ha
/* 80529E24  38 84 64 CC */	addi r4, r4, vib_p@l
/* 80529E28  7C 84 00 2E */	lwzx r4, r4, r0
/* 80529E2C  38 A0 00 01 */	li r5, 1
/* 80529E30  38 C1 00 0C */	addi r6, r1, 0xc
/* 80529E34  4B B4 5B F0 */	b StartShock__12dVibration_cFii4cXyz
lbl_80529E38:
/* 80529E38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80529E3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80529E40  7C 08 03 A6 */	mtlr r0
/* 80529E44  38 21 00 30 */	addi r1, r1, 0x30
/* 80529E48  4E 80 00 20 */	blr 
