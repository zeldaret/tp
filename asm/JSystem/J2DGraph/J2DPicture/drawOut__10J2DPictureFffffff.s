lbl_802FF588:
/* 802FF588  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FF58C  7C 08 02 A6 */	mflr r0
/* 802FF590  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FF594  80 83 01 00 */	lwz r4, 0x100(r3)
/* 802FF598  28 04 00 00 */	cmplwi r4, 0
/* 802FF59C  41 82 00 88 */	beq lbl_802FF624
/* 802FF5A0  80 84 00 20 */	lwz r4, 0x20(r4)
/* 802FF5A4  A0 A4 00 04 */	lhz r5, 4(r4)
/* 802FF5A8  A0 04 00 02 */	lhz r0, 2(r4)
/* 802FF5AC  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802FF5B0  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 802FF5B4  C8 E2 C8 70 */	lfd f7, lit_2021(r2)
/* 802FF5B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FF5BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FF5C0  3C 80 43 30 */	lis r4, 0x4330
/* 802FF5C4  90 81 00 28 */	stw r4, 0x28(r1)
/* 802FF5C8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802FF5CC  EC 00 38 28 */	fsubs f0, f0, f7
/* 802FF5D0  EC 05 00 2A */	fadds f0, f5, f0
/* 802FF5D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FF5D8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802FF5DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FF5E0  90 81 00 30 */	stw r4, 0x30(r1)
/* 802FF5E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802FF5E8  EC 00 38 28 */	fsubs f0, f0, f7
/* 802FF5EC  EC 06 00 2A */	fadds f0, f6, f0
/* 802FF5F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FF5F4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802FF5F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802FF5FC  EC 01 18 2A */	fadds f0, f1, f3
/* 802FF600  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802FF604  EC 02 20 2A */	fadds f0, f2, f4
/* 802FF608  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802FF60C  38 81 00 18 */	addi r4, r1, 0x18
/* 802FF610  38 A1 00 08 */	addi r5, r1, 8
/* 802FF614  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF618  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 802FF61C  7D 89 03 A6 */	mtctr r12
/* 802FF620  4E 80 04 21 */	bctrl 
lbl_802FF624:
/* 802FF624  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FF628  7C 08 03 A6 */	mtlr r0
/* 802FF62C  38 21 00 40 */	addi r1, r1, 0x40
/* 802FF630  4E 80 00 20 */	blr 
