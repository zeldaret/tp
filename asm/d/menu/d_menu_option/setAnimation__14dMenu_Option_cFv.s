lbl_801E3AEC:
/* 801E3AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3AF0  80 83 03 C0 */	lwz r4, 0x3c0(r3)
/* 801E3AF4  38 04 00 02 */	addi r0, r4, 2
/* 801E3AF8  90 03 03 C0 */	stw r0, 0x3c0(r3)
/* 801E3AFC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801E3B00  A8 04 00 06 */	lha r0, 6(r4)
/* 801E3B04  80 83 03 C0 */	lwz r4, 0x3c0(r3)
/* 801E3B08  7C 04 00 00 */	cmpw r4, r0
/* 801E3B0C  41 80 00 0C */	blt lbl_801E3B18
/* 801E3B10  7C 00 20 50 */	subf r0, r0, r4
/* 801E3B14  90 03 03 C0 */	stw r0, 0x3c0(r3)
lbl_801E3B18:
/* 801E3B18  80 03 03 C0 */	lwz r0, 0x3c0(r3)
/* 801E3B1C  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E3B20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E3B24  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E3B28  3C 00 43 30 */	lis r0, 0x4330
/* 801E3B2C  90 01 00 08 */	stw r0, 8(r1)
/* 801E3B30  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E3B34  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E3B38  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 801E3B3C  D0 04 00 08 */	stfs f0, 8(r4)
/* 801E3B40  80 83 03 C4 */	lwz r4, 0x3c4(r3)
/* 801E3B44  38 04 00 02 */	addi r0, r4, 2
/* 801E3B48  90 03 03 C4 */	stw r0, 0x3c4(r3)
/* 801E3B4C  80 83 00 30 */	lwz r4, 0x30(r3)
/* 801E3B50  A8 04 00 06 */	lha r0, 6(r4)
/* 801E3B54  80 83 03 C4 */	lwz r4, 0x3c4(r3)
/* 801E3B58  7C 04 00 00 */	cmpw r4, r0
/* 801E3B5C  41 80 00 0C */	blt lbl_801E3B68
/* 801E3B60  7C 00 20 50 */	subf r0, r0, r4
/* 801E3B64  90 03 03 C4 */	stw r0, 0x3c4(r3)
lbl_801E3B68:
/* 801E3B68  80 03 03 C4 */	lwz r0, 0x3c4(r3)
/* 801E3B6C  C8 22 A9 58 */	lfd f1, lit_4520(r2)
/* 801E3B70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801E3B74  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E3B78  3C 00 43 30 */	lis r0, 0x4330
/* 801E3B7C  90 01 00 08 */	stw r0, 8(r1)
/* 801E3B80  C8 01 00 08 */	lfd f0, 8(r1)
/* 801E3B84  EC 00 08 28 */	fsubs f0, f0, f1
/* 801E3B88  80 63 00 30 */	lwz r3, 0x30(r3)
/* 801E3B8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E3B90  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3B94  4E 80 00 20 */	blr 
