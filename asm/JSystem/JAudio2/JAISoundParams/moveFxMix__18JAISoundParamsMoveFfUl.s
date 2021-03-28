lbl_802A2E64:
/* 802A2E64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2E68  28 04 00 00 */	cmplwi r4, 0
/* 802A2E6C  40 82 00 14 */	bne lbl_802A2E80
/* 802A2E70  D0 23 00 04 */	stfs f1, 4(r3)
/* 802A2E74  38 00 00 00 */	li r0, 0
/* 802A2E78  90 03 00 34 */	stw r0, 0x34(r3)
/* 802A2E7C  48 00 00 38 */	b lbl_802A2EB4
lbl_802A2E80:
/* 802A2E80  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A2E84  90 83 00 34 */	stw r4, 0x34(r3)
/* 802A2E88  EC 61 00 28 */	fsubs f3, f1, f0
/* 802A2E8C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 802A2E90  C8 42 BD E8 */	lfd f2, lit_292(r2)
/* 802A2E94  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A2E98  3C 00 43 30 */	lis r0, 0x4330
/* 802A2E9C  90 01 00 08 */	stw r0, 8(r1)
/* 802A2EA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 802A2EA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 802A2EA8  EC 03 00 24 */	fdivs f0, f3, f0
/* 802A2EAC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802A2EB0  D0 23 00 30 */	stfs f1, 0x30(r3)
lbl_802A2EB4:
/* 802A2EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A2EB8  4E 80 00 20 */	blr 
