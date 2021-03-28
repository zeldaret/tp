lbl_8094BC2C:
/* 8094BC2C  3C 80 80 95 */	lis r4, lit_3958@ha
/* 8094BC30  38 A4 11 C0 */	addi r5, r4, lit_3958@l
/* 8094BC34  3C 80 80 95 */	lis r4, __vt__10daNi_HIO_c@ha
/* 8094BC38  38 04 15 3C */	addi r0, r4, __vt__10daNi_HIO_c@l
/* 8094BC3C  90 03 00 00 */	stw r0, 0(r3)
/* 8094BC40  38 00 FF FF */	li r0, -1
/* 8094BC44  98 03 00 04 */	stb r0, 4(r3)
/* 8094BC48  C0 05 00 00 */	lfs f0, 0(r5)
/* 8094BC4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8094BC50  C0 05 00 04 */	lfs f0, 4(r5)
/* 8094BC54  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8094BC58  C0 05 00 08 */	lfs f0, 8(r5)
/* 8094BC5C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8094BC60  38 80 00 01 */	li r4, 1
/* 8094BC64  98 83 00 14 */	stb r4, 0x14(r3)
/* 8094BC68  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8094BC6C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8094BC70  C0 45 00 10 */	lfs f2, 0x10(r5)
/* 8094BC74  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 8094BC78  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8094BC7C  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8094BC80  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8094BC84  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8094BC88  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 8094BC8C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8094BC90  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8094BC94  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 8094BC98  38 00 00 00 */	li r0, 0
/* 8094BC9C  98 03 00 38 */	stb r0, 0x38(r3)
/* 8094BCA0  98 83 00 39 */	stb r4, 0x39(r3)
/* 8094BCA4  4E 80 00 20 */	blr 
