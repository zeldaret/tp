lbl_802C7CF4:
/* 802C7CF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C7CF8  7C 08 02 A6 */	mflr r0
/* 802C7CFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C7D00  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C7D04  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802C7D08  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802C7D0C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802C7D10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C7D14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C7D18  7C 7E 1B 78 */	mr r30, r3
/* 802C7D1C  7C 9F 23 78 */	mr r31, r4
/* 802C7D20  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 802C7D24  7C 00 07 75 */	extsb. r0, r0
/* 802C7D28  40 80 00 88 */	bge lbl_802C7DB0
/* 802C7D2C  C0 22 C4 2C */	lfs f1, lit_4422(r2)
/* 802C7D30  C0 42 BE 20 */	lfs f2, cEqualCSlope__6Z2Calc(r2)
/* 802C7D34  C0 62 BE 24 */	lfs f3, cEqualPSlope__6Z2Calc(r2)
/* 802C7D38  4B FE 1A DD */	bl getRandom__6Z2CalcFfff
/* 802C7D3C  C0 02 C3 60 */	lfs f0, lit_3574(r2)
/* 802C7D40  EF C1 00 2A */	fadds f30, f1, f0
/* 802C7D44  C0 22 C4 2C */	lfs f1, lit_4422(r2)
/* 802C7D48  C0 42 BE 20 */	lfs f2, cEqualCSlope__6Z2Calc(r2)
/* 802C7D4C  C0 62 BE 24 */	lfs f3, cEqualPSlope__6Z2Calc(r2)
/* 802C7D50  4B FE 1A C5 */	bl getRandom__6Z2CalcFfff
/* 802C7D54  C0 02 C3 60 */	lfs f0, lit_3574(r2)
/* 802C7D58  EC 81 00 2A */	fadds f4, f1, f0
/* 802C7D5C  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009002A@ha */
/* 802C7D60  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0009002A@l */
/* 802C7D64  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C7D68  38 7E 01 18 */	addi r3, r30, 0x118
/* 802C7D6C  38 81 00 0C */	addi r4, r1, 0xc
/* 802C7D70  7F E0 07 74 */	extsb r0, r31
/* 802C7D74  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7D78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7D80  3C 00 43 30 */	lis r0, 0x4330
/* 802C7D84  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7D88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C7D8C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7D90  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C7D94  EC 21 00 24 */	fdivs f1, f1, f0
/* 802C7D98  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C7D9C  FC 60 F0 90 */	fmr f3, f30
/* 802C7DA0  FC A0 10 90 */	fmr f5, f2
/* 802C7DA4  38 A0 00 00 */	li r5, 0
/* 802C7DA8  4B FF DB 61 */	bl startEnvSe__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C7DAC  48 00 00 94 */	b lbl_802C7E40
lbl_802C7DB0:
/* 802C7DB0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 802C7DB4  C3 C2 C3 44 */	lfs f30, lit_3502(r2)
/* 802C7DB8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802C7DBC  40 81 00 08 */	ble lbl_802C7DC4
/* 802C7DC0  48 00 00 18 */	b lbl_802C7DD8
lbl_802C7DC4:
/* 802C7DC4  C3 C2 C3 48 */	lfs f30, lit_3503(r2)
/* 802C7DC8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802C7DCC  40 80 00 08 */	bge lbl_802C7DD4
/* 802C7DD0  48 00 00 08 */	b lbl_802C7DD8
lbl_802C7DD4:
/* 802C7DD4  FF C0 00 90 */	fmr f30, f0
lbl_802C7DD8:
/* 802C7DD8  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009002C@ha */
/* 802C7DDC  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0009002C@l */
/* 802C7DE0  90 01 00 08 */	stw r0, 8(r1)
/* 802C7DE4  38 7E 00 64 */	addi r3, r30, 0x64
/* 802C7DE8  4B FE 6F D9 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C7DEC  FF E0 08 90 */	fmr f31, f1
/* 802C7DF0  38 7E 00 64 */	addi r3, r30, 0x64
/* 802C7DF4  4B FE 6E ED */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C7DF8  FC 60 08 90 */	fmr f3, f1
/* 802C7DFC  38 7E 01 18 */	addi r3, r30, 0x118
/* 802C7E00  38 81 00 08 */	addi r4, r1, 8
/* 802C7E04  7F E0 07 74 */	extsb r0, r31
/* 802C7E08  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C7E0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7E14  3C 00 43 30 */	lis r0, 0x4330
/* 802C7E18  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7E1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C7E20  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C7E24  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C7E28  EC 21 00 24 */	fdivs f1, f1, f0
/* 802C7E2C  FC 40 F0 90 */	fmr f2, f30
/* 802C7E30  FC 80 F8 90 */	fmr f4, f31
/* 802C7E34  C0 A2 C3 44 */	lfs f5, lit_3502(r2)
/* 802C7E38  38 A0 00 00 */	li r5, 0
/* 802C7E3C  4B FF DA CD */	bl startEnvSe__11Z2EnvSeBaseF10JAISoundIDfffffUl
lbl_802C7E40:
/* 802C7E40  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802C7E44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C7E48  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802C7E4C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802C7E50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C7E54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C7E58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C7E5C  7C 08 03 A6 */	mtlr r0
/* 802C7E60  38 21 00 40 */	addi r1, r1, 0x40
/* 802C7E64  4E 80 00 20 */	blr 
