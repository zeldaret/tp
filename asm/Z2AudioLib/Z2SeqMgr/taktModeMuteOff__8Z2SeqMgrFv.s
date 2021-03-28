lbl_802B5ED4:
/* 802B5ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5ED8  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 802B5EDC  38 00 00 0A */	li r0, 0xa
/* 802B5EE0  90 03 00 40 */	stw r0, 0x40(r3)
/* 802B5EE4  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B5EE8  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B5EEC  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802B5EF0  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B5EF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B5EF8  3C 00 43 30 */	lis r0, 0x4330
/* 802B5EFC  90 01 00 08 */	stw r0, 8(r1)
/* 802B5F00  C8 01 00 08 */	lfd f0, 8(r1)
/* 802B5F04  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B5F08  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B5F0C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802B5F10  D0 63 00 3C */	stfs f3, 0x3c(r3)
/* 802B5F14  38 21 00 10 */	addi r1, r1, 0x10
/* 802B5F18  4E 80 00 20 */	blr 
