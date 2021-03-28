lbl_8019FA3C:
/* 8019FA3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019FA40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019FA44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019FA48  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8019FA4C  C0 62 A2 BC */	lfs f3, lit_5554(r2)
/* 8019FA50  C0 42 A2 70 */	lfs f2, lit_4850(r2)
/* 8019FA54  EC 02 00 32 */	fmuls f0, f2, f0
/* 8019FA58  FC 00 00 1E */	fctiwz f0, f0
/* 8019FA5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8019FA60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8019FA64  3C 60 00 E5 */	lis r3, 0x00E5 /* 0x00E4E1C0@ha */
/* 8019FA68  38 63 E1 C0 */	addi r3, r3, 0xE1C0 /* 0x00E4E1C0@l */
/* 8019FA6C  7C 04 1B D6 */	divw r0, r4, r3
/* 8019FA70  7C 00 19 D6 */	mullw r0, r0, r3
/* 8019FA74  7C 00 20 50 */	subf r0, r0, r4
/* 8019FA78  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 8019FA7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019FA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019FA84  3C 00 43 30 */	lis r0, 0x4330
/* 8019FA88  90 01 00 10 */	stw r0, 0x10(r1)
/* 8019FA8C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8019FA90  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019FA94  EC 20 10 24 */	fdivs f1, f0, f2
/* 8019FA98  C0 02 A2 AC */	lfs f0, lit_5347(r2)
/* 8019FA9C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8019FAA0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8019FAA4  FC 00 00 1E */	fctiwz f0, f0
/* 8019FAA8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8019FAAC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8019FAB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8019FAB4  4E 80 00 20 */	blr 
