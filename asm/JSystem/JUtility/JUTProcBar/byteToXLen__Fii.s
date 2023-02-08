lbl_802E6DA4:
/* 802E6DA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E6DA8  C8 22 C6 E8 */	lfd f1, lit_2281(r2)
/* 802E6DAC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802E6DB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E6DB4  3C 80 43 30 */	lis r4, 0x4330
/* 802E6DB8  90 81 00 08 */	stw r4, 8(r1)
/* 802E6DBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802E6DC0  EC 60 08 28 */	fsubs f3, f0, f1
/* 802E6DC4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802E6DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E6DCC  90 81 00 10 */	stw r4, 0x10(r1)
/* 802E6DD0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E6DD4  EC 40 08 28 */	fsubs f2, f0, f1
/* 802E6DD8  80 0D 8E 14 */	lwz r0, mMemorySize__7JKRHeap(r13)
/* 802E6DDC  C8 22 C7 08 */	lfd f1, lit_2315(r2)
/* 802E6DE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E6DE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 802E6DE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E6DEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802E6DF0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802E6DF4  EC 03 00 32 */	fmuls f0, f3, f0
/* 802E6DF8  FC 00 00 1E */	fctiwz f0, f0
/* 802E6DFC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802E6E00  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E6E04  38 21 00 30 */	addi r1, r1, 0x30
/* 802E6E08  4E 80 00 20 */	blr 
