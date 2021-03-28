lbl_802B9AFC:
/* 802B9AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9B00  28 04 00 00 */	cmplwi r4, 0
/* 802B9B04  41 82 00 3C */	beq lbl_802B9B40
/* 802B9B08  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 802B9B0C  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 802B9B10  EC 61 00 28 */	fsubs f3, f1, f0
/* 802B9B14  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 802B9B18  C8 42 C0 48 */	lfd f2, lit_3531(r2)
/* 802B9B1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B9B20  3C 00 43 30 */	lis r0, 0x4330
/* 802B9B24  90 01 00 08 */	stw r0, 8(r1)
/* 802B9B28  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B9B2C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802B9B30  EC 03 00 24 */	fdivs f0, f3, f0
/* 802B9B34  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 802B9B38  D0 23 00 9C */	stfs f1, 0x9c(r3)
/* 802B9B3C  48 00 00 1C */	b lbl_802B9B58
lbl_802B9B40:
/* 802B9B40  D0 23 00 94 */	stfs f1, 0x94(r3)
/* 802B9B44  C0 02 C0 38 */	lfs f0, lit_3511(r2)
/* 802B9B48  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 802B9B4C  38 00 00 00 */	li r0, 0
/* 802B9B50  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 802B9B54  D0 03 00 9C */	stfs f0, 0x9c(r3)
lbl_802B9B58:
/* 802B9B58  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9B5C  4E 80 00 20 */	blr 
