lbl_802A2DB4:
/* 802A2DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2DB8  28 04 00 00 */	cmplwi r4, 0
/* 802A2DBC  40 82 00 14 */	bne lbl_802A2DD0
/* 802A2DC0  D0 23 00 00 */	stfs f1, 0(r3)
/* 802A2DC4  38 00 00 00 */	li r0, 0
/* 802A2DC8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802A2DCC  48 00 00 38 */	b lbl_802A2E04
lbl_802A2DD0:
/* 802A2DD0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802A2DD4  90 83 00 1C */	stw r4, 0x1c(r3)
/* 802A2DD8  EC 61 00 28 */	fsubs f3, f1, f0
/* 802A2DDC  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802A2DE0  C8 42 BD E8 */	lfd f2, lit_292(r2)
/* 802A2DE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A2DE8  3C 00 43 30 */	lis r0, 0x4330
/* 802A2DEC  90 01 00 08 */	stw r0, 8(r1)
/* 802A2DF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 802A2DF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 802A2DF8  EC 03 00 24 */	fdivs f0, f3, f0
/* 802A2DFC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802A2E00  D0 23 00 18 */	stfs f1, 0x18(r3)
lbl_802A2E04:
/* 802A2E04  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2E08  4E 80 00 20 */	blr 
