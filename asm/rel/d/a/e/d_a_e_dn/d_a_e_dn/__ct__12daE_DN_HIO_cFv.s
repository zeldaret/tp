lbl_804E51AC:
/* 804E51AC  3C 80 80 4F */	lis r4, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E51B0  38 A4 E8 AC */	addi r5, r4, lit_3789@l /* 0x804EE8AC@l */
/* 804E51B4  3C 80 80 4F */	lis r4, __vt__12daE_DN_HIO_c@ha /* 0x804EEED8@ha */
/* 804E51B8  38 04 EE D8 */	addi r0, r4, __vt__12daE_DN_HIO_c@l /* 0x804EEED8@l */
/* 804E51BC  90 03 00 00 */	stw r0, 0(r3)
/* 804E51C0  38 00 FF FF */	li r0, -1
/* 804E51C4  98 03 00 04 */	stb r0, 4(r3)
/* 804E51C8  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 804E51CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804E51D0  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 804E51D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804E51D8  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 804E51DC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804E51E0  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 804E51E4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 804E51E8  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 804E51EC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804E51F0  38 00 00 03 */	li r0, 3
/* 804E51F4  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 804E51F8  38 00 00 28 */	li r0, 0x28
/* 804E51FC  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 804E5200  38 00 00 50 */	li r0, 0x50
/* 804E5204  B0 03 00 20 */	sth r0, 0x20(r3)
/* 804E5208  38 00 00 01 */	li r0, 1
/* 804E520C  98 03 00 22 */	stb r0, 0x22(r3)
/* 804E5210  38 00 00 00 */	li r0, 0
/* 804E5214  98 03 00 23 */	stb r0, 0x23(r3)
/* 804E5218  98 03 00 24 */	stb r0, 0x24(r3)
/* 804E521C  4E 80 00 20 */	blr 
