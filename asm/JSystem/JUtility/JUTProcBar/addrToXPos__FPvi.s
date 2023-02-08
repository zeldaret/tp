lbl_802E6D3C:
/* 802E6D3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E6D40  C8 22 C6 E8 */	lfd f1, lit_2281(r2)
/* 802E6D44  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802E6D48  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E6D4C  3C 80 43 30 */	lis r4, 0x4330
/* 802E6D50  90 81 00 08 */	stw r4, 8(r1)
/* 802E6D54  C8 01 00 08 */	lfd f0, 8(r1)
/* 802E6D58  EC 60 08 28 */	fsubs f3, f0, f1
/* 802E6D5C  3C 03 80 00 */	addis r0, r3, 0x8000
/* 802E6D60  C8 42 C7 08 */	lfd f2, lit_2315(r2)
/* 802E6D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E6D68  90 81 00 10 */	stw r4, 0x10(r1)
/* 802E6D6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E6D70  EC 20 10 28 */	fsubs f1, f0, f2
/* 802E6D74  80 0D 8E 14 */	lwz r0, mMemorySize__7JKRHeap(r13)
/* 802E6D78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E6D7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 802E6D80  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802E6D84  EC 00 10 28 */	fsubs f0, f0, f2
/* 802E6D88  EC 01 00 24 */	fdivs f0, f1, f0
/* 802E6D8C  EC 03 00 32 */	fmuls f0, f3, f0
/* 802E6D90  FC 00 00 1E */	fctiwz f0, f0
/* 802E6D94  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802E6D98  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E6D9C  38 21 00 30 */	addi r1, r1, 0x30
/* 802E6DA0  4E 80 00 20 */	blr 
