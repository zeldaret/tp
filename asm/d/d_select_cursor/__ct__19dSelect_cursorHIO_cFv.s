lbl_801941E4:
/* 801941E4  3C 80 80 3C */	lis r4, __vt__19dSelect_cursorHIO_c@ha /* 0x803BB7A8@ha */
/* 801941E8  38 04 B7 A8 */	addi r0, r4, __vt__19dSelect_cursorHIO_c@l /* 0x803BB7A8@l */
/* 801941EC  90 03 00 00 */	stw r0, 0(r3)
/* 801941F0  C0 22 A0 48 */	lfs f1, lit_3673(r2)
/* 801941F4  D0 23 00 08 */	stfs f1, 8(r3)
/* 801941F8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 801941FC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80194200  C0 02 A0 4C */	lfs f0, lit_3674(r2)
/* 80194204  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80194208  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8019420C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80194210  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80194214  38 00 00 00 */	li r0, 0
/* 80194218  98 03 00 24 */	stb r0, 0x24(r3)
/* 8019421C  4E 80 00 20 */	blr 
