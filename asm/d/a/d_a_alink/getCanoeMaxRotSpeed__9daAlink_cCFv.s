lbl_800F3C44:
/* 800F3C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F3C48  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800F3C4C  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F3C50  40 82 00 14 */	bne lbl_800F3C64
/* 800F3C54  3C 80 80 39 */	lis r4, m__19daAlinkHIO_canoe_c0@ha
/* 800F3C58  38 84 E6 10 */	addi r4, r4, m__19daAlinkHIO_canoe_c0@l
/* 800F3C5C  A8 04 00 16 */	lha r0, 0x16(r4)
/* 800F3C60  48 00 00 10 */	b lbl_800F3C70
lbl_800F3C64:
/* 800F3C64  3C 80 80 39 */	lis r4, m__19daAlinkHIO_canoe_c0@ha
/* 800F3C68  38 84 E6 10 */	addi r4, r4, m__19daAlinkHIO_canoe_c0@l
/* 800F3C6C  A8 04 00 14 */	lha r0, 0x14(r4)
lbl_800F3C70:
/* 800F3C70  7C 00 07 34 */	extsh r0, r0
/* 800F3C74  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800F3C78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F3C7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F3C80  3C 00 43 30 */	lis r0, 0x4330
/* 800F3C84  90 01 00 08 */	stw r0, 8(r1)
/* 800F3C88  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F3C8C  EC 80 08 28 */	fsubs f4, f0, f1
/* 800F3C90  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800F3C94  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800F3C98  C0 23 1F DC */	lfs f1, 0x1fdc(r3)
/* 800F3C9C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3CA0  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3CA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800F3CA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800F3CAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800F3CB0  EC 03 00 2A */	fadds f0, f3, f0
/* 800F3CB4  EC 04 00 32 */	fmuls f0, f4, f0
/* 800F3CB8  FC 00 00 1E */	fctiwz f0, f0
/* 800F3CBC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800F3CC0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800F3CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 800F3CC8  4E 80 00 20 */	blr 
