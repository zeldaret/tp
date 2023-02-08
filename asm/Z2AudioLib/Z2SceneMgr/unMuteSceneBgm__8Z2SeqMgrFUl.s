lbl_802B99AC:
/* 802B99AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B99B0  C0 62 C0 3C */	lfs f3, lit_3512(r2)
/* 802B99B4  D0 63 00 34 */	stfs f3, 0x34(r3)
/* 802B99B8  C0 02 C0 38 */	lfs f0, lit_3511(r2)
/* 802B99BC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802B99C0  38 00 00 00 */	li r0, 0
/* 802B99C4  90 03 00 40 */	stw r0, 0x40(r3)
/* 802B99C8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802B99CC  28 04 00 00 */	cmplwi r4, 0
/* 802B99D0  41 82 00 3C */	beq lbl_802B9A0C
/* 802B99D4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802B99D8  90 83 00 50 */	stw r4, 0x50(r3)
/* 802B99DC  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B99E0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802B99E4  C8 22 C0 48 */	lfd f1, lit_3531(r2)
/* 802B99E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B99EC  3C 00 43 30 */	lis r0, 0x4330
/* 802B99F0  90 01 00 08 */	stw r0, 8(r1)
/* 802B99F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B99F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B99FC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B9A00  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802B9A04  D0 63 00 4C */	stfs f3, 0x4c(r3)
/* 802B9A08  48 00 00 14 */	b lbl_802B9A1C
lbl_802B9A0C:
/* 802B9A0C  D0 63 00 44 */	stfs f3, 0x44(r3)
/* 802B9A10  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802B9A14  90 03 00 50 */	stw r0, 0x50(r3)
/* 802B9A18  D0 03 00 4C */	stfs f0, 0x4c(r3)
lbl_802B9A1C:
/* 802B9A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9A20  4E 80 00 20 */	blr 
