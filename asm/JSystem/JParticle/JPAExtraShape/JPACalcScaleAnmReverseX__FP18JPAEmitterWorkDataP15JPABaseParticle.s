lbl_8027AAE8:
/* 8027AAE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027AAEC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8027AAF0  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8027AAF4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8027AAF8  A8 C5 00 28 */	lha r6, 0x28(r5)
/* 8027AAFC  A8 84 00 80 */	lha r4, 0x80(r4)
/* 8027AB00  7C A4 33 D6 */	divw r5, r4, r6
/* 8027AB04  7C 05 31 D6 */	mullw r0, r5, r6
/* 8027AB08  7C 00 20 50 */	subf r0, r0, r4
/* 8027AB0C  C8 42 B8 E8 */	lfd f2, lit_2312(r2)
/* 8027AB10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027AB14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027AB18  3C 80 43 30 */	lis r4, 0x4330
/* 8027AB1C  90 81 00 08 */	stw r4, 8(r1)
/* 8027AB20  C8 01 00 08 */	lfd f0, 8(r1)
/* 8027AB24  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027AB28  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 8027AB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027AB30  90 81 00 10 */	stw r4, 0x10(r1)
/* 8027AB34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8027AB38  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027AB3C  EC 61 00 24 */	fdivs f3, f1, f0
/* 8027AB40  54 A0 07 FE */	clrlwi r0, r5, 0x1f
/* 8027AB44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027AB48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027AB4C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8027AB50  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8027AB54  EC 40 10 28 */	fsubs f2, f0, f2
/* 8027AB58  C0 22 B8 E0 */	lfs f1, lit_2270(r2)
/* 8027AB5C  C0 02 B8 F0 */	lfs f0, lit_2339(r2)
/* 8027AB60  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8027AB64  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027AB68  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027AB6C  EC 03 00 2A */	fadds f0, f3, f0
/* 8027AB70  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 8027AB74  38 21 00 20 */	addi r1, r1, 0x20
/* 8027AB78  4E 80 00 20 */	blr 
