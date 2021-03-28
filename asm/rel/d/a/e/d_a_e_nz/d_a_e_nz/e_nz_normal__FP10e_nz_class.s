lbl_80729C24:
/* 80729C24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80729C28  7C 08 02 A6 */	mflr r0
/* 80729C2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80729C30  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80729C34  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80729C38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80729C3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80729C40  7C 7E 1B 78 */	mr r30, r3
/* 80729C44  3C 60 80 73 */	lis r3, lit_3789@ha
/* 80729C48  3B E3 C1 80 */	addi r31, r3, lit_3789@l
/* 80729C4C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80729C50  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 80729C54  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80729C58  40 82 00 40 */	bne lbl_80729C98
/* 80729C5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80729C60  4B B3 DC F4 */	b cM_rndF__Ff
/* 80729C64  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80729C68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80729C6C  40 80 00 2C */	bge lbl_80729C98
/* 80729C70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C4@ha */
/* 80729C74  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000700C4@l */
/* 80729C78  90 01 00 08 */	stw r0, 8(r1)
/* 80729C7C  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80729C80  38 81 00 08 */	addi r4, r1, 8
/* 80729C84  38 A0 FF FF */	li r5, -1
/* 80729C88  81 9E 05 F4 */	lwz r12, 0x5f4(r30)
/* 80729C8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80729C90  7D 89 03 A6 */	mtctr r12
/* 80729C94  4E 80 04 21 */	bctrl 
lbl_80729C98:
/* 80729C98  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 80729C9C  2C 00 00 02 */	cmpwi r0, 2
/* 80729CA0  41 82 02 0C */	beq lbl_80729EAC
/* 80729CA4  40 80 00 14 */	bge lbl_80729CB8
/* 80729CA8  2C 00 00 00 */	cmpwi r0, 0
/* 80729CAC  41 82 00 18 */	beq lbl_80729CC4
/* 80729CB0  40 80 00 70 */	bge lbl_80729D20
/* 80729CB4  48 00 02 70 */	b lbl_80729F24
lbl_80729CB8:
/* 80729CB8  2C 00 00 04 */	cmpwi r0, 4
/* 80729CBC  40 80 02 68 */	bge lbl_80729F24
/* 80729CC0  48 00 02 50 */	b lbl_80729F10
lbl_80729CC4:
/* 80729CC4  7F C3 F3 78 */	mr r3, r30
/* 80729CC8  38 80 00 09 */	li r4, 9
/* 80729CCC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80729CD0  38 A0 00 02 */	li r5, 2
/* 80729CD4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80729CD8  4B FF FD 65 */	bl anm_init__FP10e_nz_classifUcf
/* 80729CDC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80729CE0  4B B3 DC 74 */	b cM_rndF__Ff
/* 80729CE4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80729CE8  EC 00 08 2A */	fadds f0, f0, f1
/* 80729CEC  FC 00 00 1E */	fctiwz f0, f0
/* 80729CF0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80729CF4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80729CF8  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80729CFC  38 00 00 01 */	li r0, 1
/* 80729D00  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80729D04  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80729D08  4B B3 DC 4C */	b cM_rndF__Ff
/* 80729D0C  FC 00 08 1E */	fctiwz f0, f1
/* 80729D10  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80729D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80729D18  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 80729D1C  48 00 02 08 */	b lbl_80729F24
lbl_80729D20:
/* 80729D20  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80729D24  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80729D28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80729D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80729D30  4C 41 13 82 */	cror 2, 1, 2
/* 80729D34  40 82 00 24 */	bne lbl_80729D58
/* 80729D38  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80729D3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80729D40  4C 40 13 82 */	cror 2, 0, 2
/* 80729D44  40 82 00 14 */	bne lbl_80729D58
/* 80729D48  3C 60 80 73 */	lis r3, l_HIO@ha
/* 80729D4C  38 63 C4 34 */	addi r3, r3, l_HIO@l
/* 80729D50  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 80729D54  D3 FE 05 2C */	stfs f31, 0x52c(r30)
lbl_80729D58:
/* 80729D58  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80729D5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80729D60  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80729D64  4B BF E6 C8 */	b checkPass__12J3DFrameCtrlFf
/* 80729D68  2C 03 00 00 */	cmpwi r3, 0
/* 80729D6C  41 82 00 2C */	beq lbl_80729D98
/* 80729D70  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80729D74  4B B3 DC 18 */	b cM_rndFX__Ff
/* 80729D78  FC 00 08 1E */	fctiwz f0, f1
/* 80729D7C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80729D80  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80729D84  A8 1E 05 D4 */	lha r0, 0x5d4(r30)
/* 80729D88  7C 00 1A 14 */	add r0, r0, r3
/* 80729D8C  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80729D90  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80729D94  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80729D98:
/* 80729D98  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80729D9C  38 63 00 0C */	addi r3, r3, 0xc
/* 80729DA0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80729DA4  4B BF E6 88 */	b checkPass__12J3DFrameCtrlFf
/* 80729DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80729DAC  41 82 00 0C */	beq lbl_80729DB8
/* 80729DB0  38 00 00 01 */	li r0, 1
/* 80729DB4  98 1E 0A 78 */	stb r0, 0xa78(r30)
lbl_80729DB8:
/* 80729DB8  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80729DBC  2C 00 00 00 */	cmpwi r0, 0
/* 80729DC0  40 82 00 8C */	bne lbl_80729E4C
/* 80729DC4  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80729DC8  38 63 00 0C */	addi r3, r3, 0xc
/* 80729DCC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80729DD0  4B BF E6 5C */	b checkPass__12J3DFrameCtrlFf
/* 80729DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80729DD8  41 82 00 74 */	beq lbl_80729E4C
/* 80729DDC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80729DE0  4B B3 DB 74 */	b cM_rndF__Ff
/* 80729DE4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80729DE8  EC 00 08 2A */	fadds f0, f0, f1
/* 80729DEC  FC 00 00 1E */	fctiwz f0, f0
/* 80729DF0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80729DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80729DF8  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80729DFC  38 00 00 02 */	li r0, 2
/* 80729E00  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80729E04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80729E08  4B B3 DB 4C */	b cM_rndF__Ff
/* 80729E0C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80729E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80729E14  40 80 00 20 */	bge lbl_80729E34
/* 80729E18  7F C3 F3 78 */	mr r3, r30
/* 80729E1C  38 80 00 0A */	li r4, 0xa
/* 80729E20  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80729E24  38 A0 00 02 */	li r5, 2
/* 80729E28  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80729E2C  4B FF FC 11 */	bl anm_init__FP10e_nz_classifUcf
/* 80729E30  48 00 00 1C */	b lbl_80729E4C
lbl_80729E34:
/* 80729E34  7F C3 F3 78 */	mr r3, r30
/* 80729E38  38 80 00 08 */	li r4, 8
/* 80729E3C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80729E40  38 A0 00 02 */	li r5, 2
/* 80729E44  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80729E48  4B FF FB F5 */	bl anm_init__FP10e_nz_classifUcf
lbl_80729E4C:
/* 80729E4C  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 80729E50  2C 00 00 00 */	cmpwi r0, 0
/* 80729E54  40 82 00 D0 */	bne lbl_80729F24
/* 80729E58  7F C3 F3 78 */	mr r3, r30
/* 80729E5C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80729E60  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80729E64  4B 8F 30 6C */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 80729E68  2C 03 00 00 */	cmpwi r3, 0
/* 80729E6C  41 82 00 B8 */	beq lbl_80729F24
/* 80729E70  38 00 00 14 */	li r0, 0x14
/* 80729E74  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 80729E78  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80729E7C  4B B3 DA D8 */	b cM_rndF__Ff
/* 80729E80  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80729E84  EC 00 08 2A */	fadds f0, f0, f1
/* 80729E88  FC 00 00 1E */	fctiwz f0, f0
/* 80729E8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80729E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80729E94  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80729E98  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80729E9C  3C 63 00 01 */	addis r3, r3, 1
/* 80729EA0  38 03 80 00 */	addi r0, r3, -32768
/* 80729EA4  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80729EA8  48 00 00 7C */	b lbl_80729F24
lbl_80729EAC:
/* 80729EAC  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80729EB0  2C 00 00 00 */	cmpwi r0, 0
/* 80729EB4  40 82 00 70 */	bne lbl_80729F24
/* 80729EB8  38 00 00 03 */	li r0, 3
/* 80729EBC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80729EC0  38 00 00 05 */	li r0, 5
/* 80729EC4  B0 1E 06 A2 */	sth r0, 0x6a2(r30)
/* 80729EC8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80729ECC  4B B3 DA C0 */	b cM_rndFX__Ff
/* 80729ED0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80729ED4  EC 20 08 2A */	fadds f1, f0, f1
/* 80729ED8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80729EDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80729EE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80729EE4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80729EE8  4B B3 DA A4 */	b cM_rndFX__Ff
/* 80729EEC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80729EF0  EC 20 08 2A */	fadds f1, f0, f1
/* 80729EF4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80729EF8  EC 41 00 28 */	fsubs f2, f1, f0
/* 80729EFC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80729F00  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80729F04  4B B3 D7 70 */	b cM_atan2s__Fff
/* 80729F08  B0 7E 05 D4 */	sth r3, 0x5d4(r30)
/* 80729F0C  48 00 00 18 */	b lbl_80729F24
lbl_80729F10:
/* 80729F10  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80729F14  2C 00 00 00 */	cmpwi r0, 0
/* 80729F18  40 82 00 0C */	bne lbl_80729F24
/* 80729F1C  38 00 00 00 */	li r0, 0
/* 80729F20  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80729F24:
/* 80729F24  3C 60 80 73 */	lis r3, data_8072C454@ha
/* 80729F28  88 03 C4 54 */	lbz r0, data_8072C454@l(r3)
/* 80729F2C  28 00 00 FF */	cmplwi r0, 0xff
/* 80729F30  41 82 00 BC */	beq lbl_80729FEC
/* 80729F34  7F C3 F3 78 */	mr r3, r30
/* 80729F38  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80729F3C  4B FF FB AD */	bl pl_check__FP10e_nz_classf
/* 80729F40  2C 03 00 00 */	cmpwi r3, 0
/* 80729F44  41 82 00 A8 */	beq lbl_80729FEC
/* 80729F48  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 80729F4C  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80729F50  C0 3E 06 9C */	lfs f1, 0x69c(r30)
/* 80729F54  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80729F58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80729F5C  40 80 00 90 */	bge lbl_80729FEC
/* 80729F60  80 1E 05 E4 */	lwz r0, 0x5e4(r30)
/* 80729F64  2C 00 00 08 */	cmpwi r0, 8
/* 80729F68  41 82 00 24 */	beq lbl_80729F8C
/* 80729F6C  2C 00 00 09 */	cmpwi r0, 9
/* 80729F70  40 82 00 7C */	bne lbl_80729FEC
/* 80729F74  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 80729F78  38 63 00 0C */	addi r3, r3, 0xc
/* 80729F7C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80729F80  4B BF E4 AC */	b checkPass__12J3DFrameCtrlFf
/* 80729F84  2C 03 00 00 */	cmpwi r3, 0
/* 80729F88  41 82 00 64 */	beq lbl_80729FEC
lbl_80729F8C:
/* 80729F8C  38 C0 00 00 */	li r6, 0
/* 80729F90  3C 60 80 73 */	lis r3, data_8072C454@ha
/* 80729F94  88 83 C4 54 */	lbz r4, data_8072C454@l(r3)
/* 80729F98  3C 60 80 73 */	lis r3, stick_bit@ha
/* 80729F9C  38 63 C2 84 */	addi r3, r3, stick_bit@l
/* 80729FA0  38 00 00 08 */	li r0, 8
/* 80729FA4  7C 09 03 A6 */	mtctr r0
lbl_80729FA8:
/* 80729FA8  88 A3 00 00 */	lbz r5, 0(r3)
/* 80729FAC  7C 80 28 39 */	and. r0, r4, r5
/* 80729FB0  40 82 00 20 */	bne lbl_80729FD0
/* 80729FB4  3C 60 80 73 */	lis r3, data_8072C454@ha
/* 80729FB8  8C 03 C4 54 */	lbzu r0, data_8072C454@l(r3)
/* 80729FBC  7C 00 2B 78 */	or r0, r0, r5
/* 80729FC0  98 03 00 00 */	stb r0, 0(r3)
/* 80729FC4  38 06 00 01 */	addi r0, r6, 1
/* 80729FC8  98 1E 06 AC */	stb r0, 0x6ac(r30)
/* 80729FCC  48 00 00 10 */	b lbl_80729FDC
lbl_80729FD0:
/* 80729FD0  38 C6 00 01 */	addi r6, r6, 1
/* 80729FD4  38 63 00 01 */	addi r3, r3, 1
/* 80729FD8  42 00 FF D0 */	bdnz lbl_80729FA8
lbl_80729FDC:
/* 80729FDC  38 00 00 01 */	li r0, 1
/* 80729FE0  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 80729FE4  38 00 00 00 */	li r0, 0
/* 80729FE8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_80729FEC:
/* 80729FEC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80729FF0  A8 9E 05 D4 */	lha r4, 0x5d4(r30)
/* 80729FF4  38 A0 00 02 */	li r5, 2
/* 80729FF8  38 C0 20 00 */	li r6, 0x2000
/* 80729FFC  4B B4 66 0C */	b cLib_addCalcAngleS2__FPssss
/* 8072A000  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8072A004  FC 20 F8 90 */	fmr f1, f31
/* 8072A008  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A00C  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8072A010  3C 80 80 73 */	lis r4, l_HIO@ha
/* 8072A014  38 84 C4 34 */	addi r4, r4, l_HIO@l
/* 8072A018  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8072A01C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8072A020  4B B4 5A 1C */	b cLib_addCalc2__FPffff
/* 8072A024  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8072A028  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8072A02C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8072A030  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8072A034  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8072A038  7C 08 03 A6 */	mtlr r0
/* 8072A03C  38 21 00 40 */	addi r1, r1, 0x40
/* 8072A040  4E 80 00 20 */	blr 
