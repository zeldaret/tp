lbl_802B2DF4:
/* 802B2DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B2DF8  C0 6D 82 74 */	lfs f3, VOL_BGM_DEFAULT__7Z2Param(r13)
/* 802B2DFC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802B2E00  38 00 00 02 */	li r0, 2
/* 802B2E04  90 03 00 40 */	stw r0, 0x40(r3)
/* 802B2E08  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B2E0C  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802B2E10  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B2E14  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B2E18  3C 00 43 30 */	lis r0, 0x4330
/* 802B2E1C  90 01 00 08 */	stw r0, 8(r1)
/* 802B2E20  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B2E24  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B2E28  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B2E2C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802B2E30  D0 63 00 3C */	stfs f3, 0x3c(r3)
/* 802B2E34  38 21 00 10 */	addi r1, r1, 0x10
/* 802B2E38  4E 80 00 20 */	blr 
