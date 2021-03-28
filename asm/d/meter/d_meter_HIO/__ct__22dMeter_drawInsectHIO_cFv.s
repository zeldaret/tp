lbl_801FE8DC:
/* 801FE8DC  3C 80 80 3C */	lis r4, __vt__22dMeter_drawInsectHIO_c@ha
/* 801FE8E0  38 04 F1 60 */	addi r0, r4, __vt__22dMeter_drawInsectHIO_c@l
/* 801FE8E4  90 03 00 00 */	stw r0, 0(r3)
/* 801FE8E8  38 00 00 0A */	li r0, 0xa
/* 801FE8EC  B0 03 00 38 */	sth r0, 0x38(r3)
/* 801FE8F0  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 801FE8F4  38 00 00 00 */	li r0, 0
/* 801FE8F8  98 03 00 3C */	stb r0, 0x3c(r3)
/* 801FE8FC  98 03 00 3D */	stb r0, 0x3d(r3)
/* 801FE900  C0 02 AA E0 */	lfs f0, lit_3787(r2)
/* 801FE904  D0 03 00 08 */	stfs f0, 8(r3)
/* 801FE908  C0 02 AA E4 */	lfs f0, lit_3788(r2)
/* 801FE90C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801FE910  C0 22 AA F8 */	lfs f1, lit_3793(r2)
/* 801FE914  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801FE918  C0 02 AB 50 */	lfs f0, lit_3912(r2)
/* 801FE91C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801FE920  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 801FE924  C0 42 AB 54 */	lfs f2, lit_3913(r2)
/* 801FE928  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 801FE92C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 801FE930  C0 22 AB 58 */	lfs f1, lit_3914(r2)
/* 801FE934  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 801FE938  C0 02 AB 5C */	lfs f0, lit_3915(r2)
/* 801FE93C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801FE940  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 801FE944  C0 02 AB 60 */	lfs f0, lit_3916(r2)
/* 801FE948  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801FE94C  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 801FE950  4E 80 00 20 */	blr 
