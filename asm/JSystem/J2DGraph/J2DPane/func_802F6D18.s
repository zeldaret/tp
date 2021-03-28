lbl_802F6D18:
/* 802F6D18  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802F6D1C  7C 08 02 A6 */	mflr r0
/* 802F6D20  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F6D24  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802F6D28  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802F6D2C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802F6D30  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802F6D34  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 802F6D38  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 802F6D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F6D40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F6D44  7C 7E 1B 78 */	mr r30, r3
/* 802F6D48  C0 22 C7 F0 */	lfs f1, lit_1469(r2)
/* 802F6D4C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F6D50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802F6D54  40 82 00 20 */	bne lbl_802F6D74
/* 802F6D58  D0 21 00 08 */	stfs f1, 8(r1)
/* 802F6D5C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802F6D60  C0 24 00 00 */	lfs f1, 0(r4)
/* 802F6D64  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F6D68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F6D6C  D0 3E 00 D4 */	stfs f1, 0xd4(r30)
/* 802F6D70  48 00 00 5C */	b lbl_802F6DCC
lbl_802F6D74:
/* 802F6D74  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 802F6D78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802F6D7C  40 82 00 24 */	bne lbl_802F6DA0
/* 802F6D80  C0 44 00 08 */	lfs f2, 8(r4)
/* 802F6D84  C0 04 00 00 */	lfs f0, 0(r4)
/* 802F6D88  EC 02 00 28 */	fsubs f0, f2, f0
/* 802F6D8C  FC 00 00 50 */	fneg f0, f0
/* 802F6D90  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F6D94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802F6D98  D0 5E 00 D4 */	stfs f2, 0xd4(r30)
/* 802F6D9C  48 00 00 30 */	b lbl_802F6DCC
lbl_802F6DA0:
/* 802F6DA0  C0 64 00 08 */	lfs f3, 8(r4)
/* 802F6DA4  C0 84 00 00 */	lfs f4, 0(r4)
/* 802F6DA8  EC 03 20 28 */	fsubs f0, f3, f4
/* 802F6DAC  C0 22 C8 08 */	lfs f1, lit_1725(r2)
/* 802F6DB0  EC 40 00 72 */	fmuls f2, f0, f1
/* 802F6DB4  FC 00 10 50 */	fneg f0, f2
/* 802F6DB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F6DBC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802F6DC0  EC 04 18 2A */	fadds f0, f4, f3
/* 802F6DC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 802F6DC8  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
lbl_802F6DCC:
/* 802F6DCC  C0 22 C7 F0 */	lfs f1, lit_1469(r2)
/* 802F6DD0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802F6DD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802F6DD8  40 82 00 20 */	bne lbl_802F6DF8
/* 802F6DDC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802F6DE0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802F6DE4  C0 24 00 04 */	lfs f1, 4(r4)
/* 802F6DE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F6DEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802F6DF0  D0 3E 00 D8 */	stfs f1, 0xd8(r30)
/* 802F6DF4  48 00 00 5C */	b lbl_802F6E50
lbl_802F6DF8:
/* 802F6DF8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 802F6DFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802F6E00  40 82 00 24 */	bne lbl_802F6E24
/* 802F6E04  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 802F6E08  C0 04 00 04 */	lfs f0, 4(r4)
/* 802F6E0C  EC 02 00 28 */	fsubs f0, f2, f0
/* 802F6E10  FC 00 00 50 */	fneg f0, f0
/* 802F6E14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F6E18  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802F6E1C  D0 5E 00 D8 */	stfs f2, 0xd8(r30)
/* 802F6E20  48 00 00 30 */	b lbl_802F6E50
lbl_802F6E24:
/* 802F6E24  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 802F6E28  C0 84 00 04 */	lfs f4, 4(r4)
/* 802F6E2C  EC 03 20 28 */	fsubs f0, f3, f4
/* 802F6E30  C0 22 C8 08 */	lfs f1, lit_1725(r2)
/* 802F6E34  EC 40 00 72 */	fmuls f2, f0, f1
/* 802F6E38  FC 00 10 50 */	fneg f0, f2
/* 802F6E3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F6E40  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802F6E44  EC 04 18 2A */	fadds f0, f4, f3
/* 802F6E48  EC 00 00 72 */	fmuls f0, f0, f1
/* 802F6E4C  D0 1E 00 D8 */	stfs f0, 0xd8(r30)
lbl_802F6E50:
/* 802F6E50  C0 21 00 08 */	lfs f1, 8(r1)
/* 802F6E54  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802F6E58  EF C1 00 28 */	fsubs f30, f1, f0
/* 802F6E5C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802F6E60  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802F6E64  EF A1 00 28 */	fsubs f29, f1, f0
/* 802F6E68  7F C3 F3 78 */	mr r3, r30
/* 802F6E6C  48 00 0C 21 */	bl getFirstChildPane__7J2DPaneFv
/* 802F6E70  7C 7F 1B 78 */	mr r31, r3
/* 802F6E74  C3 E2 C7 F0 */	lfs f31, lit_1469(r2)
/* 802F6E78  48 00 00 4C */	b lbl_802F6EC4
lbl_802F6E7C:
/* 802F6E7C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 802F6E80  EC 00 F0 2A */	fadds f0, f0, f30
/* 802F6E84  D0 1F 00 D4 */	stfs f0, 0xd4(r31)
/* 802F6E88  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 802F6E8C  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F6E90  D0 1F 00 D8 */	stfs f0, 0xd8(r31)
/* 802F6E94  FC 1F F0 00 */	fcmpu cr0, f31, f30
/* 802F6E98  40 82 00 0C */	bne lbl_802F6EA4
/* 802F6E9C  FC 1F E8 00 */	fcmpu cr0, f31, f29
/* 802F6EA0  41 82 00 18 */	beq lbl_802F6EB8
lbl_802F6EA4:
/* 802F6EA4  7F E3 FB 78 */	mr r3, r31
/* 802F6EA8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F6EAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F6EB0  7D 89 03 A6 */	mtctr r12
/* 802F6EB4  4E 80 04 21 */	bctrl 
lbl_802F6EB8:
/* 802F6EB8  7F E3 FB 78 */	mr r3, r31
/* 802F6EBC  48 00 0C 09 */	bl getNextChildPane__7J2DPaneFv
/* 802F6EC0  7C 7F 1B 78 */	mr r31, r3
lbl_802F6EC4:
/* 802F6EC4  28 1F 00 00 */	cmplwi r31, 0
/* 802F6EC8  40 82 FF B4 */	bne lbl_802F6E7C
/* 802F6ECC  80 61 00 08 */	lwz r3, 8(r1)
/* 802F6ED0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F6ED4  90 7E 00 20 */	stw r3, 0x20(r30)
/* 802F6ED8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 802F6EDC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802F6EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F6EE4  90 7E 00 28 */	stw r3, 0x28(r30)
/* 802F6EE8  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 802F6EEC  7F C3 F3 78 */	mr r3, r30
/* 802F6EF0  48 00 0C 0D */	bl getParentPane__7J2DPaneFv
/* 802F6EF4  28 03 00 00 */	cmplwi r3, 0
/* 802F6EF8  41 82 00 24 */	beq lbl_802F6F1C
/* 802F6EFC  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 802F6F00  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F6F04  EC 01 00 2A */	fadds f0, f1, f0
/* 802F6F08  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 802F6F0C  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 802F6F10  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F6F14  EC 01 00 2A */	fadds f0, f1, f0
/* 802F6F18  D0 1E 00 D8 */	stfs f0, 0xd8(r30)
lbl_802F6F1C:
/* 802F6F1C  7F C3 F3 78 */	mr r3, r30
/* 802F6F20  81 9E 00 00 */	lwz r12, 0(r30)
/* 802F6F24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F6F28  7D 89 03 A6 */	mtctr r12
/* 802F6F2C  4E 80 04 21 */	bctrl 
/* 802F6F30  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802F6F34  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802F6F38  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802F6F3C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802F6F40  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 802F6F44  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 802F6F48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F6F4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F6F50  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F6F54  7C 08 03 A6 */	mtlr r0
/* 802F6F58  38 21 00 50 */	addi r1, r1, 0x50
/* 802F6F5C  4E 80 00 20 */	blr 
