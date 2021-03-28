lbl_802FA928:
/* 802FA928  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FA92C  7C 08 02 A6 */	mflr r0
/* 802FA930  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FA934  81 03 01 00 */	lwz r8, 0x100(r3)
/* 802FA938  28 08 00 00 */	cmplwi r8, 0
/* 802FA93C  41 82 00 D0 */	beq lbl_802FAA0C
/* 802FA940  80 E3 01 04 */	lwz r7, 0x104(r3)
/* 802FA944  28 07 00 00 */	cmplwi r7, 0
/* 802FA948  41 82 00 C4 */	beq lbl_802FAA0C
/* 802FA94C  80 A3 01 08 */	lwz r5, 0x108(r3)
/* 802FA950  28 05 00 00 */	cmplwi r5, 0
/* 802FA954  41 82 00 B8 */	beq lbl_802FAA0C
/* 802FA958  80 03 01 0C */	lwz r0, 0x10c(r3)
/* 802FA95C  28 00 00 00 */	cmplwi r0, 0
/* 802FA960  41 82 00 AC */	beq lbl_802FAA0C
/* 802FA964  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 802FA968  A0 05 00 04 */	lhz r0, 4(r5)
/* 802FA96C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802FA970  C0 04 00 04 */	lfs f0, 4(r4)
/* 802FA974  EC 21 00 28 */	fsubs f1, f1, f0
/* 802FA978  C8 42 C8 40 */	lfd f2, lit_1971(r2)
/* 802FA97C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FA980  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FA984  3C C0 43 30 */	lis r6, 0x4330
/* 802FA988  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802FA98C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802FA990  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FA994  EC 61 00 28 */	fsubs f3, f1, f0
/* 802FA998  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 802FA99C  A0 05 00 02 */	lhz r0, 2(r5)
/* 802FA9A0  C0 24 00 08 */	lfs f1, 8(r4)
/* 802FA9A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 802FA9A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 802FA9AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FA9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FA9B4  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802FA9B8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FA9BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FA9C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 802FA9C4  80 E8 00 20 */	lwz r7, 0x20(r8)
/* 802FA9C8  A0 A7 00 04 */	lhz r5, 4(r7)
/* 802FA9CC  A0 07 00 02 */	lhz r0, 2(r7)
/* 802FA9D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FA9D4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FA9D8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 802FA9DC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802FA9E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FA9E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FA9E8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802FA9EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FA9F0  90 C1 00 30 */	stw r6, 0x30(r1)
/* 802FA9F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802FA9F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 802FA9FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FAA00  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802FAA04  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 802FAA08  48 00 00 30 */	b lbl_802FAA38
lbl_802FAA0C:
/* 802FAA0C  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 802FAA10  C0 04 00 04 */	lfs f0, 4(r4)
/* 802FAA14  EC 41 00 28 */	fsubs f2, f1, f0
/* 802FAA18  C0 24 00 08 */	lfs f1, 8(r4)
/* 802FAA1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802FAA20  EC 21 00 28 */	fsubs f1, f1, f0
/* 802FAA24  C0 02 C8 50 */	lfs f0, lit_2156(r2)
/* 802FAA28  D0 01 00 08 */	stfs f0, 8(r1)
/* 802FAA2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FAA30  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802FAA34  D0 41 00 14 */	stfs f2, 0x14(r1)
lbl_802FAA38:
/* 802FAA38  38 A1 00 08 */	addi r5, r1, 8
/* 802FAA3C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FAA40  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 802FAA44  7D 89 03 A6 */	mtctr r12
/* 802FAA48  4E 80 04 21 */	bctrl 
/* 802FAA4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FAA50  7C 08 03 A6 */	mtlr r0
/* 802FAA54  38 21 00 40 */	addi r1, r1, 0x40
/* 802FAA58  4E 80 00 20 */	blr 
