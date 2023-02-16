lbl_802B5F1C:
/* 802B5F1C  90 6D 85 FC */	stw r3, __OSReport_disable-0x1C(r13)
/* 802B5F20  38 80 00 00 */	li r4, 0
/* 802B5F24  98 83 00 00 */	stb r4, 0(r3)
/* 802B5F28  98 83 00 01 */	stb r4, 1(r3)
/* 802B5F2C  98 83 00 02 */	stb r4, 2(r3)
/* 802B5F30  98 83 00 03 */	stb r4, 3(r3)
/* 802B5F34  38 00 0C 00 */	li r0, 0xc00
/* 802B5F38  B0 03 00 04 */	sth r0, 4(r3)
/* 802B5F3C  90 83 00 08 */	stw r4, 8(r3)
/* 802B5F40  98 83 00 0C */	stb r4, 0xc(r3)
/* 802B5F44  90 83 00 10 */	stw r4, 0x10(r3)
/* 802B5F48  C0 02 C0 18 */	lfs f0, lit_3395(r2)
/* 802B5F4C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802B5F50  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802B5F54  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802B5F58  C0 02 C0 1C */	lfs f0, lit_3396(r2)
/* 802B5F5C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802B5F60  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802B5F64  98 83 00 2C */	stb r4, 0x2c(r3)
/* 802B5F68  98 83 00 2D */	stb r4, 0x2d(r3)
/* 802B5F6C  4E 80 00 20 */	blr 
