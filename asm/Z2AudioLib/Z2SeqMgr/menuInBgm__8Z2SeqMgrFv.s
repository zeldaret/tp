lbl_802B2DAC:
/* 802B2DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B2DB0  C0 6D 82 BC */	lfs f3, VOL_BGM_PAUSING__7Z2Param(r13)
/* 802B2DB4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802B2DB8  38 00 00 02 */	li r0, 2
/* 802B2DBC  90 03 00 40 */	stw r0, 0x40(r3)
/* 802B2DC0  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2DC4  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802B2DC8  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2DCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B2DD0  3C 00 43 30 */	lis r0, 0x4330
/* 802B2DD4  90 01 00 08 */	stw r0, 8(r1)
/* 802B2DD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B2DDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2DE0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2DE4  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802B2DE8  D0 63 00 3C */	stfs f3, 0x3c(r3)
/* 802B2DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B2DF0  4E 80 00 20 */	blr 
