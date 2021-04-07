lbl_801FE4EC:
/* 801FE4EC  3C 80 80 3C */	lis r4, __vt__22dMeter_drawOptionHIO_c@ha /* 0x803BF184@ha */
/* 801FE4F0  38 04 F1 84 */	addi r0, r4, __vt__22dMeter_drawOptionHIO_c@l /* 0x803BF184@l */
/* 801FE4F4  90 03 00 00 */	stw r0, 0(r3)
/* 801FE4F8  38 00 FF FF */	li r0, -1
/* 801FE4FC  90 03 00 0C */	stw r0, 0xc(r3)
/* 801FE500  90 03 00 10 */	stw r0, 0x10(r3)
/* 801FE504  90 03 00 14 */	stw r0, 0x14(r3)
/* 801FE508  C0 02 AB 20 */	lfs f0, lit_3828(r2)
/* 801FE50C  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 801FE510  C0 02 AB 24 */	lfs f0, lit_3829(r2)
/* 801FE514  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801FE518  C0 02 AB 28 */	lfs f0, lit_3830(r2)
/* 801FE51C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801FE520  38 A0 00 FF */	li r5, 0xff
/* 801FE524  98 A3 00 0C */	stb r5, 0xc(r3)
/* 801FE528  98 A3 00 0D */	stb r5, 0xd(r3)
/* 801FE52C  98 A3 00 0E */	stb r5, 0xe(r3)
/* 801FE530  98 A3 00 0F */	stb r5, 0xf(r3)
/* 801FE534  98 A3 00 10 */	stb r5, 0x10(r3)
/* 801FE538  38 00 00 C8 */	li r0, 0xc8
/* 801FE53C  98 03 00 11 */	stb r0, 0x11(r3)
/* 801FE540  38 80 00 00 */	li r4, 0
/* 801FE544  98 83 00 12 */	stb r4, 0x12(r3)
/* 801FE548  98 A3 00 13 */	stb r5, 0x13(r3)
/* 801FE54C  38 00 00 B4 */	li r0, 0xb4
/* 801FE550  98 03 00 14 */	stb r0, 0x14(r3)
/* 801FE554  98 03 00 15 */	stb r0, 0x15(r3)
/* 801FE558  38 00 00 96 */	li r0, 0x96
/* 801FE55C  98 03 00 16 */	stb r0, 0x16(r3)
/* 801FE560  98 A3 00 17 */	stb r5, 0x17(r3)
/* 801FE564  C0 22 AA F8 */	lfs f1, lit_3793(r2)
/* 801FE568  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 801FE56C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 801FE570  C0 02 AA E0 */	lfs f0, lit_3787(r2)
/* 801FE574  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801FE578  38 00 00 04 */	li r0, 4
/* 801FE57C  7C 09 03 A6 */	mtctr r0
lbl_801FE580:
/* 801FE580  7C A3 22 14 */	add r5, r3, r4
/* 801FE584  D0 25 00 24 */	stfs f1, 0x24(r5)
/* 801FE588  D0 25 00 3C */	stfs f1, 0x3c(r5)
/* 801FE58C  38 84 00 04 */	addi r4, r4, 4
/* 801FE590  42 00 FF F0 */	bdnz lbl_801FE580
/* 801FE594  38 00 00 0A */	li r0, 0xa
/* 801FE598  B0 03 00 68 */	sth r0, 0x68(r3)
/* 801FE59C  B0 03 00 6A */	sth r0, 0x6a(r3)
/* 801FE5A0  38 00 00 00 */	li r0, 0
/* 801FE5A4  98 03 00 6C */	stb r0, 0x6c(r3)
/* 801FE5A8  38 00 00 96 */	li r0, 0x96
/* 801FE5AC  98 03 00 6D */	stb r0, 0x6d(r3)
/* 801FE5B0  C0 02 AB 2C */	lfs f0, lit_3831(r2)
/* 801FE5B4  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 801FE5B8  C0 02 AB 30 */	lfs f0, lit_3832(r2)
/* 801FE5BC  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 801FE5C0  C0 02 AB 00 */	lfs f0, lit_3795(r2)
/* 801FE5C4  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 801FE5C8  4E 80 00 20 */	blr 
