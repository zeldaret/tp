lbl_802E9D2C:
/* 802E9D2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E9D30  7C 08 02 A6 */	mflr r0
/* 802E9D34  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E9D38  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802E9D3C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802E9D40  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802E9D44  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802E9D48  39 61 00 20 */	addi r11, r1, 0x20
/* 802E9D4C  48 07 84 91 */	bl _savegpr_29
/* 802E9D50  7C 9D 23 78 */	mr r29, r4
/* 802E9D54  7C BE 2B 78 */	mr r30, r5
/* 802E9D58  7C DF 33 78 */	mr r31, r6
/* 802E9D5C  C0 22 C7 68 */	lfs f1, lit_1488(r2)
/* 802E9D60  C0 04 00 08 */	lfs f0, 8(r4)
/* 802E9D64  EC 21 00 32 */	fmuls f1, f1, f0
/* 802E9D68  C0 02 C7 6C */	lfs f0, lit_1489(r2)
/* 802E9D6C  EF E1 00 24 */	fdivs f31, f1, f0
/* 802E9D70  FC 20 F8 90 */	fmr f1, f31
/* 802E9D74  48 08 22 B5 */	bl cos
/* 802E9D78  FC 20 08 18 */	frsp f1, f1
/* 802E9D7C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802E9D80  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9D84  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802E9D88  FC 20 F8 90 */	fmr f1, f31
/* 802E9D8C  48 08 28 05 */	bl sin
/* 802E9D90  FC 20 08 18 */	frsp f1, f1
/* 802E9D94  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802E9D98  FC 00 00 50 */	fneg f0, f0
/* 802E9D9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9DA0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802E9DA4  C0 02 C7 70 */	lfs f0, lit_1490(r2)
/* 802E9DA8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802E9DAC  FC 20 F8 90 */	fmr f1, f31
/* 802E9DB0  48 08 27 E1 */	bl sin
/* 802E9DB4  FF C0 08 18 */	frsp f30, f1
/* 802E9DB8  FC 20 F8 90 */	fmr f1, f31
/* 802E9DBC  48 08 22 6D */	bl cos
/* 802E9DC0  FC 20 08 18 */	frsp f1, f1
/* 802E9DC4  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 802E9DC8  C0 BE 00 00 */	lfs f5, 0(r30)
/* 802E9DCC  C0 9D 00 00 */	lfs f4, 0(r29)
/* 802E9DD0  FC 00 20 50 */	fneg f0, f4
/* 802E9DD4  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9DD8  EC 45 00 32 */	fmuls f2, f5, f0
/* 802E9DDC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802E9DE0  EC 04 07 B2 */	fmuls f0, f4, f30
/* 802E9DE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802E9DE8  EC 02 00 2A */	fadds f0, f2, f0
/* 802E9DEC  EC 05 00 2A */	fadds f0, f5, f0
/* 802E9DF0  EC 03 00 2A */	fadds f0, f3, f0
/* 802E9DF4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802E9DF8  FC 20 F8 90 */	fmr f1, f31
/* 802E9DFC  48 08 27 95 */	bl sin
/* 802E9E00  FC 20 08 18 */	frsp f1, f1
/* 802E9E04  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E9E08  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9E0C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802E9E10  FC 20 F8 90 */	fmr f1, f31
/* 802E9E14  48 08 22 15 */	bl cos
/* 802E9E18  FC 20 08 18 */	frsp f1, f1
/* 802E9E1C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E9E20  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9E24  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802E9E28  C0 02 C7 70 */	lfs f0, lit_1490(r2)
/* 802E9E2C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 802E9E30  FC 20 F8 90 */	fmr f1, f31
/* 802E9E34  48 08 21 F5 */	bl cos
/* 802E9E38  FF C0 08 18 */	frsp f30, f1
/* 802E9E3C  FC 20 F8 90 */	fmr f1, f31
/* 802E9E40  48 08 27 51 */	bl sin
/* 802E9E44  FC 60 08 18 */	frsp f3, f1
/* 802E9E48  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 802E9E4C  C0 BE 00 04 */	lfs f5, 4(r30)
/* 802E9E50  C0 9D 00 04 */	lfs f4, 4(r29)
/* 802E9E54  C0 3E 00 00 */	lfs f1, 0(r30)
/* 802E9E58  FC 00 20 50 */	fneg f0, f4
/* 802E9E5C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 802E9E60  EC 21 00 32 */	fmuls f1, f1, f0
/* 802E9E64  EC 04 07 B2 */	fmuls f0, f4, f30
/* 802E9E68  EC 05 00 32 */	fmuls f0, f5, f0
/* 802E9E6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802E9E70  EC 05 00 2A */	fadds f0, f5, f0
/* 802E9E74  EC 02 00 2A */	fadds f0, f2, f0
/* 802E9E78  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 802E9E7C  C0 22 C7 70 */	lfs f1, lit_1490(r2)
/* 802E9E80  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 802E9E84  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 802E9E88  C0 02 C7 74 */	lfs f0, lit_1491(r2)
/* 802E9E8C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802E9E90  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 802E9E94  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802E9E98  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802E9E9C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802E9EA0  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802E9EA4  39 61 00 20 */	addi r11, r1, 0x20
/* 802E9EA8  48 07 83 81 */	bl _restgpr_29
/* 802E9EAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E9EB0  7C 08 03 A6 */	mtlr r0
/* 802E9EB4  38 21 00 40 */	addi r1, r1, 0x40
/* 802E9EB8  4E 80 00 20 */	blr 
