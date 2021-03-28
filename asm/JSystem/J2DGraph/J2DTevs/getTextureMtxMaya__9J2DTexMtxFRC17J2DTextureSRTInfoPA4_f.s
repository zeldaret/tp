lbl_802E9EBC:
/* 802E9EBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E9EC0  7C 08 02 A6 */	mflr r0
/* 802E9EC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E9EC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802E9ECC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802E9ED0  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802E9ED4  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 802E9ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E9EDC  93 C1 00 08 */	stw r30, 8(r1)
/* 802E9EE0  7C 9E 23 78 */	mr r30, r4
/* 802E9EE4  7C BF 2B 78 */	mr r31, r5
/* 802E9EE8  C0 22 C7 68 */	lfs f1, lit_1488(r2)
/* 802E9EEC  C0 04 00 08 */	lfs f0, 8(r4)
/* 802E9EF0  EC 21 00 32 */	fmuls f1, f1, f0
/* 802E9EF4  C0 02 C7 6C */	lfs f0, lit_1489(r2)
/* 802E9EF8  EF E1 00 24 */	fdivs f31, f1, f0
/* 802E9EFC  FC 20 F8 90 */	fmr f1, f31
/* 802E9F00  48 08 21 29 */	bl cos
/* 802E9F04  FC 20 08 18 */	frsp f1, f1
/* 802E9F08  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802E9F0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9F10  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802E9F14  FC 20 F8 90 */	fmr f1, f31
/* 802E9F18  48 08 26 79 */	bl sin
/* 802E9F1C  FC 20 08 18 */	frsp f1, f1
/* 802E9F20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802E9F24  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9F28  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802E9F2C  C0 02 C7 70 */	lfs f0, lit_1490(r2)
/* 802E9F30  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802E9F34  FC 20 F8 90 */	fmr f1, f31
/* 802E9F38  48 08 26 59 */	bl sin
/* 802E9F3C  FF C0 08 18 */	frsp f30, f1
/* 802E9F40  FC 20 F8 90 */	fmr f1, f31
/* 802E9F44  48 08 20 E5 */	bl cos
/* 802E9F48  FC 20 08 18 */	frsp f1, f1
/* 802E9F4C  C0 62 C7 78 */	lfs f3, lit_1507(r2)
/* 802E9F50  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802E9F54  EC 00 18 28 */	fsubs f0, f0, f3
/* 802E9F58  EC 40 00 72 */	fmuls f2, f0, f1
/* 802E9F5C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802E9F60  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E9F64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802E9F68  EC 01 00 2A */	fadds f0, f1, f0
/* 802E9F6C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802E9F70  EC 02 00 28 */	fsubs f0, f2, f0
/* 802E9F74  EC 03 00 2A */	fadds f0, f3, f0
/* 802E9F78  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802E9F7C  FC 20 F8 90 */	fmr f1, f31
/* 802E9F80  48 08 26 11 */	bl sin
/* 802E9F84  FC 20 08 18 */	frsp f1, f1
/* 802E9F88  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802E9F8C  FC 00 00 50 */	fneg f0, f0
/* 802E9F90  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9F94  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802E9F98  FC 20 F8 90 */	fmr f1, f31
/* 802E9F9C  48 08 20 8D */	bl cos
/* 802E9FA0  FC 20 08 18 */	frsp f1, f1
/* 802E9FA4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802E9FA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 802E9FAC  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802E9FB0  C0 02 C7 70 */	lfs f0, lit_1490(r2)
/* 802E9FB4  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 802E9FB8  FC 20 F8 90 */	fmr f1, f31
/* 802E9FBC  48 08 20 6D */	bl cos
/* 802E9FC0  FF C0 08 18 */	frsp f30, f1
/* 802E9FC4  FC 20 F8 90 */	fmr f1, f31
/* 802E9FC8  48 08 25 C9 */	bl sin
/* 802E9FCC  FC 20 08 18 */	frsp f1, f1
/* 802E9FD0  C0 62 C7 78 */	lfs f3, lit_1507(r2)
/* 802E9FD4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802E9FD8  EC 00 18 28 */	fsubs f0, f0, f3
/* 802E9FDC  FC 00 00 50 */	fneg f0, f0
/* 802E9FE0  EC 40 00 72 */	fmuls f2, f0, f1
/* 802E9FE4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802E9FE8  EC 20 18 28 */	fsubs f1, f0, f3
/* 802E9FEC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802E9FF0  EC 01 00 2A */	fadds f0, f1, f0
/* 802E9FF4  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802E9FF8  EC 02 00 28 */	fsubs f0, f2, f0
/* 802E9FFC  EC 03 00 2A */	fadds f0, f3, f0
/* 802EA000  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 802EA004  C0 22 C7 70 */	lfs f1, lit_1490(r2)
/* 802EA008  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 802EA00C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 802EA010  C0 02 C7 74 */	lfs f0, lit_1491(r2)
/* 802EA014  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802EA018  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 802EA01C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802EA020  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802EA024  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 802EA028  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802EA02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA030  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EA034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EA038  7C 08 03 A6 */	mtlr r0
/* 802EA03C  38 21 00 30 */	addi r1, r1, 0x30
/* 802EA040  4E 80 00 20 */	blr 
