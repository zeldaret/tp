lbl_80346F28:
/* 80346F28  7C 08 02 A6 */	mflr r0
/* 80346F2C  90 01 00 04 */	stw r0, 4(r1)
/* 80346F30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80346F34  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80346F38  FF E0 20 90 */	fmr f31, f4
/* 80346F3C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80346F40  FF C0 18 90 */	fmr f30, f3
/* 80346F44  DB A1 00 28 */	stfd f29, 0x28(r1)
/* 80346F48  FF A0 10 90 */	fmr f29, f2
/* 80346F4C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80346F50  7C 7F 1B 78 */	mr r31, r3
/* 80346F54  C0 A2 CB 38 */	lfs f5, lit_105(r2)
/* 80346F58  C0 02 CB 3C */	lfs f0, lit_106(r2)
/* 80346F5C  EC 25 00 72 */	fmuls f1, f5, f1
/* 80346F60  EC 20 00 72 */	fmuls f1, f0, f1
/* 80346F64  48 02 5A 61 */	bl tanf
/* 80346F68  C0 62 CB 28 */	lfs f3, lit_99(r2)
/* 80346F6C  EC 5F F0 28 */	fsubs f2, f31, f30
/* 80346F70  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 80346F74  EC 83 08 24 */	fdivs f4, f3, f1
/* 80346F78  EC 24 E8 24 */	fdivs f1, f4, f29
/* 80346F7C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80346F80  EC 63 10 24 */	fdivs f3, f3, f2
/* 80346F84  C0 42 CB 30 */	lfs f2, lit_101(r2)
/* 80346F88  D0 5F 00 04 */	stfs f2, 4(r31)
/* 80346F8C  D0 5F 00 08 */	stfs f2, 8(r31)
/* 80346F90  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 80346F94  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 80346F98  FC 20 F0 50 */	fneg f1, f30
/* 80346F9C  FC 00 00 50 */	fneg f0, f0
/* 80346FA0  D0 9F 00 14 */	stfs f4, 0x14(r31)
/* 80346FA4  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80346FA8  D0 5F 00 18 */	stfs f2, 0x18(r31)
/* 80346FAC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80346FB0  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 80346FB4  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 80346FB8  D0 5F 00 24 */	stfs f2, 0x24(r31)
/* 80346FBC  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80346FC0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80346FC4  D0 5F 00 30 */	stfs f2, 0x30(r31)
/* 80346FC8  D0 5F 00 34 */	stfs f2, 0x34(r31)
/* 80346FCC  C0 02 CB 34 */	lfs f0, lit_102(r2)
/* 80346FD0  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80346FD4  D0 5F 00 3C */	stfs f2, 0x3c(r31)
/* 80346FD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80346FDC  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80346FE0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80346FE4  CB A1 00 28 */	lfd f29, 0x28(r1)
/* 80346FE8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80346FEC  38 21 00 40 */	addi r1, r1, 0x40
/* 80346FF0  7C 08 03 A6 */	mtlr r0
/* 80346FF4  4E 80 00 20 */	blr 
