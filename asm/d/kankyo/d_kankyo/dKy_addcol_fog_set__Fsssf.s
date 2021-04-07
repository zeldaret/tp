lbl_801A7DE8:
/* 801A7DE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A7DEC  7C 60 07 34 */	extsh r0, r3
/* 801A7DF0  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A7DF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7DF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A7DFC  3C C0 43 30 */	lis r6, 0x4330
/* 801A7E00  90 C1 00 08 */	stw r6, 8(r1)
/* 801A7E04  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A7E08  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7E0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7E10  FC 00 00 1E */	fctiwz f0, f0
/* 801A7E14  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801A7E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A7E1C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7E20  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A7E24  B0 03 11 B0 */	sth r0, 0x11b0(r3)
/* 801A7E28  7C 80 07 34 */	extsh r0, r4
/* 801A7E2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7E30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A7E34  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801A7E38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801A7E3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7E40  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7E44  FC 00 00 1E */	fctiwz f0, f0
/* 801A7E48  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801A7E4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A7E50  B0 03 11 B2 */	sth r0, 0x11b2(r3)
/* 801A7E54  7C A0 07 34 */	extsh r0, r5
/* 801A7E58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A7E5C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A7E60  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801A7E64  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801A7E68  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A7E6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801A7E70  FC 00 00 1E */	fctiwz f0, f0
/* 801A7E74  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801A7E78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A7E7C  B0 03 11 B4 */	sth r0, 0x11b4(r3)
/* 801A7E80  38 21 00 40 */	addi r1, r1, 0x40
/* 801A7E84  4E 80 00 20 */	blr 
