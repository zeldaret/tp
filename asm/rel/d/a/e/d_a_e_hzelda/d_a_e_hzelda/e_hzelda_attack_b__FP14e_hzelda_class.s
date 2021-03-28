lbl_806F1C9C:
/* 806F1C9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806F1CA0  7C 08 02 A6 */	mflr r0
/* 806F1CA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806F1CA8  39 61 00 30 */	addi r11, r1, 0x30
/* 806F1CAC  4B C7 05 30 */	b _savegpr_29
/* 806F1CB0  7C 7E 1B 78 */	mr r30, r3
/* 806F1CB4  3C 60 80 6F */	lis r3, lit_3767@ha
/* 806F1CB8  3B E3 55 14 */	addi r31, r3, lit_3767@l
/* 806F1CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F1CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F1CC4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806F1CC8  38 00 00 05 */	li r0, 5
/* 806F1CCC  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 806F1CD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E2@ha */
/* 806F1CD4  38 03 04 E2 */	addi r0, r3, 0x04E2 /* 0x000704E2@l */
/* 806F1CD8  90 01 00 08 */	stw r0, 8(r1)
/* 806F1CDC  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 806F1CE0  38 81 00 08 */	addi r4, r1, 8
/* 806F1CE4  38 A0 00 00 */	li r5, 0
/* 806F1CE8  38 C0 FF FF */	li r6, -1
/* 806F1CEC  81 9E 05 D8 */	lwz r12, 0x5d8(r30)
/* 806F1CF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F1CF4  7D 89 03 A6 */	mtctr r12
/* 806F1CF8  4E 80 04 21 */	bctrl 
/* 806F1CFC  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 806F1D00  2C 00 00 02 */	cmpwi r0, 2
/* 806F1D04  41 82 01 3C */	beq lbl_806F1E40
/* 806F1D08  40 80 00 14 */	bge lbl_806F1D1C
/* 806F1D0C  2C 00 00 00 */	cmpwi r0, 0
/* 806F1D10  41 82 00 18 */	beq lbl_806F1D28
/* 806F1D14  40 80 00 34 */	bge lbl_806F1D48
/* 806F1D18  48 00 02 24 */	b lbl_806F1F3C
lbl_806F1D1C:
/* 806F1D1C  2C 00 00 04 */	cmpwi r0, 4
/* 806F1D20  40 80 02 1C */	bge lbl_806F1F3C
/* 806F1D24  48 00 01 84 */	b lbl_806F1EA8
lbl_806F1D28:
/* 806F1D28  7F C3 F3 78 */	mr r3, r30
/* 806F1D2C  38 80 00 0F */	li r4, 0xf
/* 806F1D30  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F1D34  38 A0 00 00 */	li r5, 0
/* 806F1D38  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F1D3C  4B FF F0 35 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F1D40  38 00 00 01 */	li r0, 1
/* 806F1D44  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_806F1D48:
/* 806F1D48  38 00 00 01 */	li r0, 1
/* 806F1D4C  90 1E 06 8C */	stw r0, 0x68c(r30)
/* 806F1D50  38 60 00 0C */	li r3, 0xc
/* 806F1D54  38 80 FF FF */	li r4, -1
/* 806F1D58  4B 93 BD 44 */	b dComIfGs_onOneZoneSwitch__Fii
/* 806F1D5C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 806F1D60  38 80 00 01 */	li r4, 1
/* 806F1D64  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F1D68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F1D6C  40 82 00 18 */	bne lbl_806F1D84
/* 806F1D70  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F1D74  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F1D78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F1D7C  41 82 00 08 */	beq lbl_806F1D84
/* 806F1D80  38 80 00 00 */	li r4, 0
lbl_806F1D84:
/* 806F1D84  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F1D88  41 82 01 B4 */	beq lbl_806F1F3C
/* 806F1D8C  38 00 00 02 */	li r0, 2
/* 806F1D90  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 806F1D94  7F C3 F3 78 */	mr r3, r30
/* 806F1D98  38 80 00 0E */	li r4, 0xe
/* 806F1D9C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F1DA0  38 A0 00 02 */	li r5, 2
/* 806F1DA4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F1DA8  4B FF EF C9 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F1DAC  38 00 00 3C */	li r0, 0x3c
/* 806F1DB0  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 806F1DB4  38 00 00 01 */	li r0, 1
/* 806F1DB8  B0 1E 07 1A */	sth r0, 0x71a(r30)
/* 806F1DBC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806F1DC0  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 806F1DC4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806F1DC8  D0 1E 07 2C */	stfs f0, 0x72c(r30)
/* 806F1DCC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806F1DD0  D0 1E 07 30 */	stfs f0, 0x730(r30)
/* 806F1DD4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806F1DD8  D0 1E 07 2C */	stfs f0, 0x72c(r30)
/* 806F1DDC  38 00 00 00 */	li r0, 0
/* 806F1DE0  90 1E 07 20 */	stw r0, 0x720(r30)
/* 806F1DE4  A8 7E 07 18 */	lha r3, 0x718(r30)
/* 806F1DE8  7C 60 07 35 */	extsh. r0, r3
/* 806F1DEC  40 82 00 10 */	bne lbl_806F1DFC
/* 806F1DF0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806F1DF4  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 806F1DF8  48 00 00 20 */	b lbl_806F1E18
lbl_806F1DFC:
/* 806F1DFC  2C 03 00 01 */	cmpwi r3, 1
/* 806F1E00  40 82 00 10 */	bne lbl_806F1E10
/* 806F1E04  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 806F1E08  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 806F1E0C  48 00 00 0C */	b lbl_806F1E18
lbl_806F1E10:
/* 806F1E10  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806F1E14  D0 1E 07 24 */	stfs f0, 0x724(r30)
lbl_806F1E18:
/* 806F1E18  A8 7E 07 18 */	lha r3, 0x718(r30)
/* 806F1E1C  38 03 00 01 */	addi r0, r3, 1
/* 806F1E20  B0 1E 07 18 */	sth r0, 0x718(r30)
/* 806F1E24  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806F1E28  4B B7 5B 2C */	b cM_rndF__Ff
/* 806F1E2C  FC 00 08 1E */	fctiwz f0, f1
/* 806F1E30  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806F1E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F1E38  B0 1E 07 1C */	sth r0, 0x71c(r30)
/* 806F1E3C  48 00 01 00 */	b lbl_806F1F3C
lbl_806F1E40:
/* 806F1E40  38 00 00 01 */	li r0, 1
/* 806F1E44  90 1E 06 8C */	stw r0, 0x68c(r30)
/* 806F1E48  38 60 00 0C */	li r3, 0xc
/* 806F1E4C  38 80 FF FF */	li r4, -1
/* 806F1E50  4B 93 BC 4C */	b dComIfGs_onOneZoneSwitch__Fii
/* 806F1E54  80 1E 07 20 */	lwz r0, 0x720(r30)
/* 806F1E58  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 806F1E5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F1E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F1E64  3C 00 43 30 */	lis r0, 0x4330
/* 806F1E68  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F1E6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806F1E70  EC 20 08 28 */	fsubs f1, f0, f1
/* 806F1E74  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806F1E78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1E7C  4C 41 13 82 */	cror 2, 1, 2
/* 806F1E80  40 82 00 BC */	bne lbl_806F1F3C
/* 806F1E84  7F C3 F3 78 */	mr r3, r30
/* 806F1E88  38 80 00 0C */	li r4, 0xc
/* 806F1E8C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806F1E90  38 A0 00 00 */	li r5, 0
/* 806F1E94  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F1E98  4B FF EE D9 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F1E9C  38 00 00 03 */	li r0, 3
/* 806F1EA0  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 806F1EA4  48 00 00 98 */	b lbl_806F1F3C
lbl_806F1EA8:
/* 806F1EA8  38 60 00 0C */	li r3, 0xc
/* 806F1EAC  38 80 FF FF */	li r4, -1
/* 806F1EB0  4B 93 BB EC */	b dComIfGs_onOneZoneSwitch__Fii
/* 806F1EB4  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 806F1EB8  38 80 00 01 */	li r4, 1
/* 806F1EBC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F1EC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F1EC4  40 82 00 18 */	bne lbl_806F1EDC
/* 806F1EC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F1ECC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F1ED0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F1ED4  41 82 00 08 */	beq lbl_806F1EDC
/* 806F1ED8  38 80 00 00 */	li r4, 0
lbl_806F1EDC:
/* 806F1EDC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F1EE0  41 82 00 1C */	beq lbl_806F1EFC
/* 806F1EE4  7F C3 F3 78 */	mr r3, r30
/* 806F1EE8  38 80 00 15 */	li r4, 0x15
/* 806F1EEC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806F1EF0  38 A0 00 02 */	li r5, 2
/* 806F1EF4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F1EF8  4B FF EE 79 */	bl anm_init__FP14e_hzelda_classifUcf
lbl_806F1EFC:
/* 806F1EFC  80 1E 07 20 */	lwz r0, 0x720(r30)
/* 806F1F00  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 806F1F04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806F1F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F1F0C  3C 00 43 30 */	lis r0, 0x4330
/* 806F1F10  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F1F14  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806F1F18  EC 20 08 28 */	fsubs f1, f0, f1
/* 806F1F1C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806F1F20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1F24  4C 41 13 82 */	cror 2, 1, 2
/* 806F1F28  40 82 00 14 */	bne lbl_806F1F3C
/* 806F1F2C  38 00 00 00 */	li r0, 0
/* 806F1F30  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 806F1F34  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 806F1F38  B0 1E 07 1A */	sth r0, 0x71a(r30)
lbl_806F1F3C:
/* 806F1F3C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806F1F40  A8 9E 06 A4 */	lha r4, 0x6a4(r30)
/* 806F1F44  38 A0 00 02 */	li r5, 2
/* 806F1F48  38 C0 04 00 */	li r6, 0x400
/* 806F1F4C  4B B7 E6 BC */	b cLib_addCalcAngleS2__FPssss
/* 806F1F50  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806F1F54  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 806F1F58  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F1F5C  C0 7E 06 9C */	lfs f3, 0x69c(r30)
/* 806F1F60  4B B7 DA DC */	b cLib_addCalc2__FPffff
/* 806F1F64  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806F1F68  C0 3E 05 BC */	lfs f1, 0x5bc(r30)
/* 806F1F6C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 806F1F70  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806F1F74  4B B7 DA C8 */	b cLib_addCalc2__FPffff
/* 806F1F78  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 806F1F7C  C0 3E 05 C0 */	lfs f1, 0x5c0(r30)
/* 806F1F80  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F1F84  C0 7E 06 9C */	lfs f3, 0x69c(r30)
/* 806F1F88  4B B7 DA B4 */	b cLib_addCalc2__FPffff
/* 806F1F8C  39 61 00 30 */	addi r11, r1, 0x30
/* 806F1F90  4B C7 02 98 */	b _restgpr_29
/* 806F1F94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806F1F98  7C 08 03 A6 */	mtlr r0
/* 806F1F9C  38 21 00 30 */	addi r1, r1, 0x30
/* 806F1FA0  4E 80 00 20 */	blr 
