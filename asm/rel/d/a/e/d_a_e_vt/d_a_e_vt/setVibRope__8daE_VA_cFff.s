lbl_807C5DF4:
/* 807C5DF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C5DF8  A8 A3 13 36 */	lha r5, 0x1336(r3)
/* 807C5DFC  3C 80 80 7D */	lis r4, lit_5877@ha
/* 807C5E00  C0 04 ED 88 */	lfs f0, lit_5877@l(r4)
/* 807C5E04  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807C5E08  FC 00 00 1E */	fctiwz f0, f0
/* 807C5E0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 807C5E10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807C5E14  7C 05 02 14 */	add r0, r5, r0
/* 807C5E18  B0 03 13 36 */	sth r0, 0x1336(r3)
/* 807C5E1C  A8 03 13 36 */	lha r0, 0x1336(r3)
/* 807C5E20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C5E24  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 807C5E28  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l
/* 807C5E2C  7C 05 04 2E */	lfsx f0, r5, r0
/* 807C5E30  C0 63 12 30 */	lfs f3, 0x1230(r3)
/* 807C5E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C5E38  FC 00 00 1E */	fctiwz f0, f0
/* 807C5E3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807C5E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C5E44  7C 00 07 34 */	extsh r0, r0
/* 807C5E48  3C 80 80 7D */	lis r4, lit_5843@ha
/* 807C5E4C  C8 44 ED 80 */	lfd f2, lit_5843@l(r4)
/* 807C5E50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C5E54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807C5E58  3C 00 43 30 */	lis r0, 0x4330
/* 807C5E5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 807C5E60  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807C5E64  EC 00 10 28 */	fsubs f0, f0, f2
/* 807C5E68  EC 03 00 2A */	fadds f0, f3, f0
/* 807C5E6C  D0 03 12 30 */	stfs f0, 0x1230(r3)
/* 807C5E70  A8 03 13 36 */	lha r0, 0x1336(r3)
/* 807C5E74  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C5E78  7C 45 04 2E */	lfsx f2, r5, r0
/* 807C5E7C  A8 A3 12 3E */	lha r5, 0x123e(r3)
/* 807C5E80  3C 80 80 7D */	lis r4, lit_4318@ha
/* 807C5E84  C0 04 ED 18 */	lfs f0, lit_4318@l(r4)
/* 807C5E88  EC 00 00 72 */	fmuls f0, f0, f1
/* 807C5E8C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807C5E90  FC 00 00 1E */	fctiwz f0, f0
/* 807C5E94  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807C5E98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807C5E9C  7C 05 02 14 */	add r0, r5, r0
/* 807C5EA0  B0 03 12 3E */	sth r0, 0x123e(r3)
/* 807C5EA4  38 21 00 30 */	addi r1, r1, 0x30
/* 807C5EA8  4E 80 00 20 */	blr 
