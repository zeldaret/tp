lbl_80243DCC:
/* 80243DCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80243DD0  7C 08 02 A6 */	mflr r0
/* 80243DD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80243DD8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80243DDC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80243DE0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80243DE4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80243DE8  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 80243DEC  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 80243DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80243DF4  7C 7F 1B 78 */	mr r31, r3
/* 80243DF8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80243DFC  41 82 00 10 */	beq lbl_80243E0C
/* 80243E00  C0 02 B2 50 */	lfs f0, lit_4427(r2)
/* 80243E04  D0 1F 19 90 */	stfs f0, 0x1990(r31)
/* 80243E08  48 00 00 14 */	b lbl_80243E1C
lbl_80243E0C:
/* 80243E0C  C0 3F 19 90 */	lfs f1, 0x1990(r31)
/* 80243E10  C0 1F 19 80 */	lfs f0, 0x1980(r31)
/* 80243E14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80243E18  D0 1F 19 90 */	stfs f0, 0x1990(r31)
lbl_80243E1C:
/* 80243E1C  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80243E20  48 01 04 C9 */	bl getGlobalPosX__8CPaneMgrFv
/* 80243E24  FF C0 08 90 */	fmr f30, f1
/* 80243E28  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 80243E2C  80 83 00 04 */	lwz r4, 4(r3)
/* 80243E30  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80243E34  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80243E38  EF E1 00 28 */	fsubs f31, f1, f0
/* 80243E3C  48 01 04 AD */	bl getGlobalPosX__8CPaneMgrFv
/* 80243E40  EC 61 F8 2A */	fadds f3, f1, f31
/* 80243E44  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 80243E48  C3 E3 00 2C */	lfs f31, 0x2c(r3)
/* 80243E4C  C0 3F 19 90 */	lfs f1, 0x1990(r31)
/* 80243E50  C0 1F 27 A8 */	lfs f0, 0x27a8(r31)
/* 80243E54  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80243E58  EF A1 00 2A */	fadds f29, f1, f0
/* 80243E5C  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 80243E60  40 80 00 08 */	bge lbl_80243E68
/* 80243E64  FF A0 F0 90 */	fmr f29, f30
lbl_80243E68:
/* 80243E68  80 63 00 04 */	lwz r3, 4(r3)
/* 80243E6C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80243E70  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80243E74  EC 41 00 28 */	fsubs f2, f1, f0
/* 80243E78  EC 23 E8 28 */	fsubs f1, f3, f29
/* 80243E7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80243E80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80243E84  7D 89 03 A6 */	mtctr r12
/* 80243E88  4E 80 04 21 */	bctrl 
/* 80243E8C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 80243E90  80 63 00 04 */	lwz r3, 4(r3)
/* 80243E94  48 0B 32 6D */	bl getBounds__7J2DPaneFv
/* 80243E98  C0 43 00 04 */	lfs f2, 4(r3)
/* 80243E9C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 80243EA0  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80243EA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80243EA8  EC 1D F8 28 */	fsubs f0, f29, f31
/* 80243EAC  EC 20 08 2A */	fadds f1, f0, f1
/* 80243EB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80243EB4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80243EB8  7D 89 03 A6 */	mtctr r12
/* 80243EBC  4E 80 04 21 */	bctrl 
/* 80243EC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80243EC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80243EC8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80243ECC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80243ED0  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 80243ED4  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 80243ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80243EDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80243EE0  7C 08 03 A6 */	mtlr r0
/* 80243EE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80243EE8  4E 80 00 20 */	blr 
