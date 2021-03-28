lbl_802B9A24:
/* 802B9A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9A28  28 04 00 00 */	cmplwi r4, 0
/* 802B9A2C  41 82 00 3C */	beq lbl_802B9A68
/* 802B9A30  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 802B9A34  90 83 00 50 */	stw r4, 0x50(r3)
/* 802B9A38  EC 61 00 28 */	fsubs f3, f1, f0
/* 802B9A3C  80 03 00 50 */	lwz r0, 0x50(r3)
/* 802B9A40  C8 42 C0 48 */	lfd f2, lit_3531(r2)
/* 802B9A44  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B9A48  3C 00 43 30 */	lis r0, 0x4330
/* 802B9A4C  90 01 00 08 */	stw r0, 8(r1)
/* 802B9A50  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B9A54  EC 00 10 28 */	fsubs f0, f0, f2
/* 802B9A58  EC 03 00 24 */	fdivs f0, f3, f0
/* 802B9A5C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802B9A60  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 802B9A64  48 00 00 1C */	b lbl_802B9A80
lbl_802B9A68:
/* 802B9A68  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 802B9A6C  C0 02 C0 38 */	lfs f0, lit_3511(r2)
/* 802B9A70  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802B9A74  38 00 00 00 */	li r0, 0
/* 802B9A78  90 03 00 50 */	stw r0, 0x50(r3)
/* 802B9A7C  D0 03 00 4C */	stfs f0, 0x4c(r3)
lbl_802B9A80:
/* 802B9A80  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9A84  4E 80 00 20 */	blr 
