lbl_802A2EBC:
/* 802A2EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2EC0  28 04 00 00 */	cmplwi r4, 0
/* 802A2EC4  40 82 00 14 */	bne lbl_802A2ED8
/* 802A2EC8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 802A2ECC  38 00 00 00 */	li r0, 0
/* 802A2ED0  90 03 00 40 */	stw r0, 0x40(r3)
/* 802A2ED4  48 00 00 38 */	b lbl_802A2F0C
lbl_802A2ED8:
/* 802A2ED8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A2EDC  90 83 00 40 */	stw r4, 0x40(r3)
/* 802A2EE0  EC 61 00 28 */	fsubs f3, f1, f0
/* 802A2EE4  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802A2EE8  C8 42 BD E8 */	lfd f2, lit_292(r2)
/* 802A2EEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A2EF0  3C 00 43 30 */	lis r0, 0x4330
/* 802A2EF4  90 01 00 08 */	stw r0, 8(r1)
/* 802A2EF8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802A2EFC  EC 00 10 28 */	fsubs f0, f0, f2
/* 802A2F00  EC 03 00 24 */	fdivs f0, f3, f0
/* 802A2F04  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802A2F08  D0 23 00 3C */	stfs f1, 0x3c(r3)
lbl_802A2F0C:
/* 802A2F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2F10  4E 80 00 20 */	blr 
