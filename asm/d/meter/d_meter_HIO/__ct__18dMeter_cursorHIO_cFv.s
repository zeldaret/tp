lbl_80200CD4:
/* 80200CD4  3C 80 80 3C */	lis r4, __vt__18dMeter_cursorHIO_c@ha /* 0x803BF0E8@ha */
/* 80200CD8  38 04 F0 E8 */	addi r0, r4, __vt__18dMeter_cursorHIO_c@l /* 0x803BF0E8@l */
/* 80200CDC  90 03 00 00 */	stw r0, 0(r3)
/* 80200CE0  C0 02 AD 24 */	lfs f0, lit_4428(r2)
/* 80200CE4  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80200CE8  C0 02 AB D0 */	lfs f0, lit_4080(r2)
/* 80200CEC  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80200CF0  C0 02 AD 30 */	lfs f0, lit_4485(r2)
/* 80200CF4  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80200CF8  C0 02 AD 34 */	lfs f0, lit_4486(r2)
/* 80200CFC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 80200D00  C0 02 AD 38 */	lfs f0, lit_4487(r2)
/* 80200D04  D0 03 00 08 */	stfs f0, 8(r3)
/* 80200D08  C0 02 AD 3C */	lfs f0, lit_4488(r2)
/* 80200D0C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80200D10  C0 02 AD 40 */	lfs f0, lit_4489(r2)
/* 80200D14  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80200D18  38 00 0B B8 */	li r0, 0xbb8
/* 80200D1C  B0 03 00 3C */	sth r0, 0x3c(r3)
/* 80200D20  C0 02 AA F8 */	lfs f0, lit_3793(r2)
/* 80200D24  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80200D28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80200D2C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80200D30  38 00 13 88 */	li r0, 0x1388
/* 80200D34  B0 03 00 3E */	sth r0, 0x3e(r3)
/* 80200D38  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80200D3C  C0 02 AB 5C */	lfs f0, lit_3915(r2)
/* 80200D40  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80200D44  C0 02 AB E0 */	lfs f0, lit_4084(r2)
/* 80200D48  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80200D4C  38 00 FE 0C */	li r0, -500
/* 80200D50  B0 03 00 40 */	sth r0, 0x40(r3)
/* 80200D54  4E 80 00 20 */	blr 
