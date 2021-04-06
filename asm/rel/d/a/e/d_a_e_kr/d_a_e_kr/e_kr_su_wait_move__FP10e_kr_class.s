lbl_80702C08:
/* 80702C08  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80702C0C  7C 08 02 A6 */	mflr r0
/* 80702C10  90 01 00 74 */	stw r0, 0x74(r1)
/* 80702C14  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80702C18  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80702C1C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80702C20  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80702C24  39 61 00 50 */	addi r11, r1, 0x50
/* 80702C28  4B C5 F5 AD */	bl _savegpr_27
/* 80702C2C  7C 7D 1B 78 */	mr r29, r3
/* 80702C30  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 80702C34  3B E3 5A F8 */	addi r31, r3, lit_3903@l /* 0x80705AF8@l */
/* 80702C38  3B C0 FF FF */	li r30, -1
/* 80702C3C  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80702C40  FC 00 02 10 */	fabs f0, f0
/* 80702C44  FC 20 00 18 */	frsp f1, f0
/* 80702C48  FF E0 08 90 */	fmr f31, f1
/* 80702C4C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80702C50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80702C54  40 80 00 08 */	bge lbl_80702C5C
/* 80702C58  FF E0 00 90 */	fmr f31, f0
lbl_80702C5C:
/* 80702C5C  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80702C60  FC 00 02 10 */	fabs f0, f0
/* 80702C64  FC 20 00 18 */	frsp f1, f0
/* 80702C68  FF C0 08 90 */	fmr f30, f1
/* 80702C6C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80702C70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80702C74  40 80 00 08 */	bge lbl_80702C7C
/* 80702C78  FF C0 00 90 */	fmr f30, f0
lbl_80702C7C:
/* 80702C7C  38 00 00 02 */	li r0, 2
/* 80702C80  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 80702C84  A8 7D 06 72 */	lha r3, 0x672(r29)
/* 80702C88  38 03 00 01 */	addi r0, r3, 1
/* 80702C8C  28 00 00 15 */	cmplwi r0, 0x15
/* 80702C90  41 81 05 40 */	bgt lbl_807031D0
/* 80702C94  3C 60 80 70 */	lis r3, lit_5210@ha /* 0x80705D74@ha */
/* 80702C98  38 63 5D 74 */	addi r3, r3, lit_5210@l /* 0x80705D74@l */
/* 80702C9C  54 00 10 3A */	slwi r0, r0, 2
/* 80702CA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80702CA4  7C 09 03 A6 */	mtctr r0
/* 80702CA8  4E 80 04 20 */	bctr 
lbl_80702CAC:
/* 80702CAC  38 80 00 01 */	li r4, 1
/* 80702CB0  98 9D 09 1C */	stb r4, 0x91c(r29)
/* 80702CB4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80702CB8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80702CBC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80702CC0  40 82 00 18 */	bne lbl_80702CD8
/* 80702CC4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80702CC8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80702CCC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80702CD0  41 82 00 08 */	beq lbl_80702CD8
/* 80702CD4  38 80 00 00 */	li r4, 0
lbl_80702CD8:
/* 80702CD8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80702CDC  41 82 04 F4 */	beq lbl_807031D0
/* 80702CE0  38 00 00 00 */	li r0, 0
/* 80702CE4  B0 1D 06 72 */	sth r0, 0x672(r29)
lbl_80702CE8:
/* 80702CE8  7F A3 EB 78 */	mr r3, r29
/* 80702CEC  38 80 00 15 */	li r4, 0x15
/* 80702CF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80702CF4  38 A0 00 02 */	li r5, 2
/* 80702CF8  FC 40 08 90 */	fmr f2, f1
/* 80702CFC  4B FF CF DD */	bl anm_init__FP10e_kr_classifUcf
/* 80702D00  38 00 00 01 */	li r0, 1
/* 80702D04  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702D08  38 00 00 64 */	li r0, 0x64
/* 80702D0C  B0 1D 06 9C */	sth r0, 0x69c(r29)
lbl_80702D10:
/* 80702D10  38 00 00 01 */	li r0, 1
/* 80702D14  98 1D 09 1C */	stb r0, 0x91c(r29)
/* 80702D18  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80702D1C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80702D20  38 A0 00 05 */	li r5, 5
/* 80702D24  38 C0 03 00 */	li r6, 0x300
/* 80702D28  4B B6 D8 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80702D2C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80702D30  38 80 00 00 */	li r4, 0
/* 80702D34  38 A0 00 05 */	li r5, 5
/* 80702D38  38 C0 08 00 */	li r6, 0x800
/* 80702D3C  4B B6 D8 CD */	bl cLib_addCalcAngleS2__FPssss
/* 80702D40  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80702D44  38 80 00 00 */	li r4, 0
/* 80702D48  38 A0 00 05 */	li r5, 5
/* 80702D4C  38 C0 08 00 */	li r6, 0x800
/* 80702D50  4B B6 D8 B9 */	bl cLib_addCalcAngleS2__FPssss
/* 80702D54  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80702D58  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80702D5C  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80702D60  FC 60 F8 90 */	fmr f3, f31
/* 80702D64  4B B6 CC D9 */	bl cLib_addCalc2__FPffff
/* 80702D68  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80702D6C  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702D70  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80702D74  FC 60 F0 90 */	fmr f3, f30
/* 80702D78  4B B6 CC C5 */	bl cLib_addCalc2__FPffff
/* 80702D7C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80702D80  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80702D84  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80702D88  2C 00 00 00 */	cmpwi r0, 0
/* 80702D8C  40 82 04 44 */	bne lbl_807031D0
/* 80702D90  7F A3 EB 78 */	mr r3, r29
/* 80702D94  4B FF D1 C1 */	bl e_kr_player_view_check__FP10e_kr_class
/* 80702D98  2C 03 00 00 */	cmpwi r3, 0
/* 80702D9C  41 82 04 34 */	beq lbl_807031D0
/* 80702DA0  38 00 00 02 */	li r0, 2
/* 80702DA4  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702DA8  38 00 00 1E */	li r0, 0x1e
/* 80702DAC  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 80702DB0  7F A3 EB 78 */	mr r3, r29
/* 80702DB4  38 80 00 07 */	li r4, 7
/* 80702DB8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80702DBC  38 A0 00 00 */	li r5, 0
/* 80702DC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80702DC4  4B FF CF 15 */	bl anm_init__FP10e_kr_classifUcf
/* 80702DC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007002D@ha */
/* 80702DCC  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0007002D@l */
/* 80702DD0  90 01 00 08 */	stw r0, 8(r1)
/* 80702DD4  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80702DD8  38 81 00 08 */	addi r4, r1, 8
/* 80702DDC  38 A0 FF FF */	li r5, -1
/* 80702DE0  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 80702DE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80702DE8  7D 89 03 A6 */	mtctr r12
/* 80702DEC  4E 80 04 21 */	bctrl 
/* 80702DF0  48 00 03 E0 */	b lbl_807031D0
lbl_80702DF4:
/* 80702DF4  38 00 00 01 */	li r0, 1
/* 80702DF8  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 80702DFC  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80702E00  2C 00 00 00 */	cmpwi r0, 0
/* 80702E04  40 82 03 CC */	bne lbl_807031D0
/* 80702E08  38 00 00 03 */	li r0, 3
/* 80702E0C  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702E10  7F A3 EB 78 */	mr r3, r29
/* 80702E14  38 80 00 08 */	li r4, 8
/* 80702E18  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80702E1C  38 A0 00 02 */	li r5, 2
/* 80702E20  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80702E24  3C C0 80 70 */	lis r6, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80702E28  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l /* 0x80705FF4@l */
/* 80702E2C  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 80702E30  EC 42 00 32 */	fmuls f2, f2, f0
/* 80702E34  4B FF CE A5 */	bl anm_init__FP10e_kr_classifUcf
/* 80702E38  38 00 00 46 */	li r0, 0x46
/* 80702E3C  B0 1D 06 9C */	sth r0, 0x69c(r29)
lbl_80702E40:
/* 80702E40  38 00 00 01 */	li r0, 1
/* 80702E44  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 80702E48  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80702E4C  A8 9D 06 C0 */	lha r4, 0x6c0(r29)
/* 80702E50  38 A0 00 0A */	li r5, 0xa
/* 80702E54  38 C0 02 00 */	li r6, 0x200
/* 80702E58  4B B6 D7 B1 */	bl cLib_addCalcAngleS2__FPssss
/* 80702E5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80702E60  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80702E64  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80702E68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80702E6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80702E70  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80702E74  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80702E78  80 63 00 00 */	lwz r3, 0(r3)
/* 80702E7C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80702E80  4B 90 95 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 80702E84  38 61 00 18 */	addi r3, r1, 0x18
/* 80702E88  38 81 00 0C */	addi r4, r1, 0xc
/* 80702E8C  4B B6 E0 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80702E90  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80702E94  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80702E98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80702E9C  EC 21 00 2A */	fadds f1, f1, f0
/* 80702EA0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702EA4  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80702EA8  4B B6 CB 95 */	bl cLib_addCalc2__FPffff
/* 80702EAC  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80702EB0  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80702EB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80702EB8  EC 21 00 2A */	fadds f1, f1, f0
/* 80702EBC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702EC0  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80702EC4  4B B6 CB 79 */	bl cLib_addCalc2__FPffff
/* 80702EC8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80702ECC  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702ED0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80702ED4  EC 21 00 2A */	fadds f1, f1, f0
/* 80702ED8  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80702EDC  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80702EE0  4B B6 CB 5D */	bl cLib_addCalc2__FPffff
/* 80702EE4  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 80702EE8  2C 00 00 00 */	cmpwi r0, 0
/* 80702EEC  40 82 02 E4 */	bne lbl_807031D0
/* 80702EF0  38 00 00 03 */	li r0, 3
/* 80702EF4  B0 1D 06 68 */	sth r0, 0x668(r29)
/* 80702EF8  38 00 00 00 */	li r0, 0
/* 80702EFC  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80702F00  48 00 02 D0 */	b lbl_807031D0
lbl_80702F04:
/* 80702F04  3B C0 00 00 */	li r30, 0
/* 80702F08  38 00 00 00 */	li r0, 0
/* 80702F0C  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 80702F10  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80702F14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80702F18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80702F1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80702F20  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80702F24  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80702F28  80 63 00 00 */	lwz r3, 0(r3)
/* 80702F2C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80702F30  4B 90 94 AD */	bl mDoMtx_YrotS__FPA4_fs
/* 80702F34  38 61 00 18 */	addi r3, r1, 0x18
/* 80702F38  38 81 00 0C */	addi r4, r1, 0xc
/* 80702F3C  4B B6 DF B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80702F40  C0 5F 00 F4 */	lfs f2, 0xf4(r31)
/* 80702F44  A8 1D 06 72 */	lha r0, 0x672(r29)
/* 80702F48  2C 00 00 0A */	cmpwi r0, 0xa
/* 80702F4C  40 82 00 08 */	bne lbl_80702F54
/* 80702F50  C0 5F 00 70 */	lfs f2, 0x70(r31)
lbl_80702F54:
/* 80702F54  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80702F58  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80702F5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80702F60  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80702F64  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80702F68  EC 00 10 2A */	fadds f0, f0, f2
/* 80702F6C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 80702F70  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80702F74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80702F78  EC 01 00 2A */	fadds f0, f1, f0
/* 80702F7C  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 80702F80  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80702F84  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 80702F88  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80702F8C  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 80702F90  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80702F94  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80702F98  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 80702F9C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80702FA0  EC 61 00 28 */	fsubs f3, f1, f0
/* 80702FA4  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 80702FA8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80702FAC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80702FB0  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 80702FB4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80702FB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80702FBC  EC 40 00 32 */	fmuls f2, f0, f0
/* 80702FC0  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80702FC4  EC 04 01 32 */	fmuls f0, f4, f4
/* 80702FC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80702FCC  EC 42 00 2A */	fadds f2, f2, f0
/* 80702FD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80702FD4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80702FD8  40 81 00 0C */	ble lbl_80702FE4
/* 80702FDC  FC 00 10 34 */	frsqrte f0, f2
/* 80702FE0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80702FE4:
/* 80702FE4  A8 1D 06 72 */	lha r0, 0x672(r29)
/* 80702FE8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80702FEC  40 82 00 1C */	bne lbl_80703008
/* 80702FF0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80702FF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80702FF8  40 80 01 D8 */	bge lbl_807031D0
/* 80702FFC  38 00 00 0B */	li r0, 0xb
/* 80703000  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80703004  48 00 01 CC */	b lbl_807031D0
lbl_80703008:
/* 80703008  2C 00 00 0B */	cmpwi r0, 0xb
/* 8070300C  40 82 00 58 */	bne lbl_80703064
/* 80703010  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80703014  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80703018  A8 03 00 50 */	lha r0, 0x50(r3)
/* 8070301C  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 80703020  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80703024  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80703028  3C 00 43 30 */	lis r0, 0x4330
/* 8070302C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80703030  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80703034  EC 00 08 28 */	fsubs f0, f0, f1
/* 80703038  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070303C  40 80 01 94 */	bge lbl_807031D0
/* 80703040  38 00 00 0C */	li r0, 0xc
/* 80703044  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80703048  7F A3 EB 78 */	mr r3, r29
/* 8070304C  38 80 00 0B */	li r4, 0xb
/* 80703050  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80703054  38 A0 00 00 */	li r5, 0
/* 80703058  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070305C  4B FF CC 7D */	bl anm_init__FP10e_kr_classifUcf
/* 80703060  48 00 01 70 */	b lbl_807031D0
lbl_80703064:
/* 80703064  2C 00 00 0C */	cmpwi r0, 0xc
/* 80703068  40 82 01 68 */	bne lbl_807031D0
/* 8070306C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80703070  D0 1D 0E A8 */	stfs f0, 0xea8(r29)
/* 80703074  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80703078  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070307C  40 80 01 54 */	bge lbl_807031D0
/* 80703080  38 00 00 14 */	li r0, 0x14
/* 80703084  B0 1D 06 72 */	sth r0, 0x672(r29)
/* 80703088  7F A3 EB 78 */	mr r3, r29
/* 8070308C  38 80 00 0F */	li r4, 0xf
/* 80703090  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80703094  38 A0 00 02 */	li r5, 2
/* 80703098  3C C0 80 70 */	lis r6, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 8070309C  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l /* 0x80705FF4@l */
/* 807030A0  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 807030A4  4B FF CC 35 */	bl anm_init__FP10e_kr_classifUcf
/* 807030A8  38 00 00 0A */	li r0, 0xa
/* 807030AC  98 1D 06 70 */	stb r0, 0x670(r29)
/* 807030B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807030B4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807030B8  38 00 00 00 */	li r0, 0
/* 807030BC  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 807030C0  3B C0 FF FF */	li r30, -1
/* 807030C4  48 00 01 0C */	b lbl_807031D0
lbl_807030C8:
/* 807030C8  38 00 00 01 */	li r0, 1
/* 807030CC  98 1D 09 1C */	stb r0, 0x91c(r29)
/* 807030D0  38 00 00 00 */	li r0, 0
/* 807030D4  98 1D 0E 8C */	stb r0, 0xe8c(r29)
/* 807030D8  AB 7D 06 D8 */	lha r27, 0x6d8(r29)
/* 807030DC  38 1B 00 01 */	addi r0, r27, 1
/* 807030E0  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 807030E4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807030E8  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 807030EC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807030F0  FC 60 F8 90 */	fmr f3, f31
/* 807030F4  4B B6 C9 49 */	bl cLib_addCalc2__FPffff
/* 807030F8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807030FC  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80703100  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80703104  FC 60 F0 90 */	fmr f3, f30
/* 80703108  4B B6 C9 35 */	bl cLib_addCalc2__FPffff
/* 8070310C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80703110  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80703114  EC 01 00 2A */	fadds f0, f1, f0
/* 80703118  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8070311C  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80703120  3B 83 5F F4 */	addi r28, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80703124  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80703128  7C 1B 00 00 */	cmpw r27, r0
/* 8070312C  40 81 00 14 */	ble lbl_80703140
/* 80703130  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80703134  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80703138  EC 01 00 28 */	fsubs f0, f1, f0
/* 8070313C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80703140:
/* 80703140  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80703144  38 80 00 00 */	li r4, 0
/* 80703148  38 A0 00 05 */	li r5, 5
/* 8070314C  38 C0 08 00 */	li r6, 0x800
/* 80703150  4B B6 D4 B9 */	bl cLib_addCalcAngleS2__FPssss
/* 80703154  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80703158  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 8070315C  38 A0 00 05 */	li r5, 5
/* 80703160  38 C0 03 00 */	li r6, 0x300
/* 80703164  4B B6 D4 A5 */	bl cLib_addCalcAngleS2__FPssss
/* 80703168  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 8070316C  38 80 00 00 */	li r4, 0
/* 80703170  38 A0 00 05 */	li r5, 5
/* 80703174  38 C0 08 00 */	li r6, 0x800
/* 80703178  4B B6 D4 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8070317C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80703180  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80703184  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80703188  4C 40 13 82 */	cror 2, 0, 2
/* 8070318C  40 82 00 44 */	bne lbl_807031D0
/* 80703190  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80703194  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80703198  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8070319C  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 807031A0  7C 1B 00 00 */	cmpw r27, r0
/* 807031A4  40 81 00 2C */	ble lbl_807031D0
/* 807031A8  7F A3 EB 78 */	mr r3, r29
/* 807031AC  38 80 00 13 */	li r4, 0x13
/* 807031B0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807031B4  38 A0 00 00 */	li r5, 0
/* 807031B8  3C C0 80 70 */	lis r6, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 807031BC  38 C6 5F F4 */	addi r6, r6, l_e_krHIO@l /* 0x80705FF4@l */
/* 807031C0  C0 46 00 48 */	lfs f2, 0x48(r6)
/* 807031C4  4B FF CB 15 */	bl anm_init__FP10e_kr_classifUcf
/* 807031C8  38 00 FF FF */	li r0, -1
/* 807031CC  B0 1D 06 72 */	sth r0, 0x672(r29)
lbl_807031D0:
/* 807031D0  7F C0 07 75 */	extsb. r0, r30
/* 807031D4  41 82 00 08 */	beq lbl_807031DC
/* 807031D8  48 00 00 0C */	b lbl_807031E4
lbl_807031DC:
/* 807031DC  7F A3 EB 78 */	mr r3, r29
/* 807031E0  4B FF D1 6D */	bl e_kr_pos_move__FP10e_kr_class
lbl_807031E4:
/* 807031E4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807031E8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807031EC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 807031F0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 807031F4  39 61 00 50 */	addi r11, r1, 0x50
/* 807031F8  4B C5 F0 29 */	bl _restgpr_27
/* 807031FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80703200  7C 08 03 A6 */	mtlr r0
/* 80703204  38 21 00 70 */	addi r1, r1, 0x70
/* 80703208  4E 80 00 20 */	blr 
