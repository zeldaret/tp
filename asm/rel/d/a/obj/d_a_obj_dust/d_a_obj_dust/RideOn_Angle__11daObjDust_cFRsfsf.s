lbl_80BE2490:
/* 80BE2490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE2494  7C 08 02 A6 */	mflr r0
/* 80BE2498  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE249C  7C 83 23 78 */	mr r3, r4
/* 80BE24A0  7C A0 07 34 */	extsh r0, r5
/* 80BE24A4  3C 80 80 BE */	lis r4, lit_3675@ha
/* 80BE24A8  C8 64 2F A0 */	lfd f3, lit_3675@l(r4)
/* 80BE24AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BE24B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BE24B4  3C 00 43 30 */	lis r0, 0x4330
/* 80BE24B8  90 01 00 08 */	stw r0, 8(r1)
/* 80BE24BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BE24C0  EC 60 18 28 */	fsubs f3, f0, f3
/* 80BE24C4  EC 01 10 24 */	fdivs f0, f1, f2
/* 80BE24C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80BE24CC  FC 00 00 1E */	fctiwz f0, f0
/* 80BE24D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BE24D4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BE24D8  38 A0 00 01 */	li r5, 1
/* 80BE24DC  38 C0 01 00 */	li r6, 0x100
/* 80BE24E0  38 E0 00 01 */	li r7, 1
/* 80BE24E4  4B 68 E0 5C */	b cLib_addCalcAngleS__FPsssss
/* 80BE24E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE24EC  7C 08 03 A6 */	mtlr r0
/* 80BE24F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE24F4  4E 80 00 20 */	blr 
