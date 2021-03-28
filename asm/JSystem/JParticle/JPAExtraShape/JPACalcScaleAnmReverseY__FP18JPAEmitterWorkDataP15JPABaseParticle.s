lbl_8027AB7C:
/* 8027AB7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027AB80  80 A3 00 04 */	lwz r5, 4(r3)
/* 8027AB84  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8027AB88  80 A5 00 00 */	lwz r5, 0(r5)
/* 8027AB8C  A8 C5 00 2A */	lha r6, 0x2a(r5)
/* 8027AB90  A8 84 00 80 */	lha r4, 0x80(r4)
/* 8027AB94  7C A4 33 D6 */	divw r5, r4, r6
/* 8027AB98  7C 05 31 D6 */	mullw r0, r5, r6
/* 8027AB9C  7C 00 20 50 */	subf r0, r0, r4
/* 8027ABA0  C8 42 B8 E8 */	lfd f2, lit_2312(r2)
/* 8027ABA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027ABA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027ABAC  3C 80 43 30 */	lis r4, 0x4330
/* 8027ABB0  90 81 00 08 */	stw r4, 8(r1)
/* 8027ABB4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8027ABB8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027ABBC  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8027ABC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027ABC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8027ABC8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8027ABCC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027ABD0  EC 61 00 24 */	fdivs f3, f1, f0
/* 8027ABD4  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 8027ABD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027ABDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027ABE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8027ABE4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8027ABE8  EC 40 10 28 */	fsubs f2, f0, f2
/* 8027ABEC  C0 22 B8 E0 */	lfs f1, lit_2270(r2)
/* 8027ABF0  C0 02 B8 F0 */	lfs f0, lit_2339(r2)
/* 8027ABF4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8027ABF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027ABFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027AC00  EC 03 00 2A */	fadds f0, f3, f0
/* 8027AC04  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 8027AC08  38 21 00 20 */	addi r1, r1, 0x20
/* 8027AC0C  4E 80 00 20 */	blr 
