lbl_80C1F9F8:
/* 80C1F9F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1F9FC  7C 08 02 A6 */	mflr r0
/* 80C1FA00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C1FA04  7C 83 23 78 */	mr r3, r4
/* 80C1FA08  7C A0 07 34 */	extsh r0, r5
/* 80C1FA0C  3C 80 80 C2 */	lis r4, lit_3677@ha
/* 80C1FA10  C8 64 07 94 */	lfd f3, lit_3677@l(r4)
/* 80C1FA14  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C1FA18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C1FA1C  3C 00 43 30 */	lis r0, 0x4330
/* 80C1FA20  90 01 00 08 */	stw r0, 8(r1)
/* 80C1FA24  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C1FA28  EC 60 18 28 */	fsubs f3, f0, f3
/* 80C1FA2C  EC 01 10 24 */	fdivs f0, f1, f2
/* 80C1FA30  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C1FA34  FC 00 00 1E */	fctiwz f0, f0
/* 80C1FA38  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C1FA3C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C1FA40  38 A0 00 01 */	li r5, 1
/* 80C1FA44  38 C0 01 00 */	li r6, 0x100
/* 80C1FA48  38 E0 00 01 */	li r7, 1
/* 80C1FA4C  4B 65 0A F4 */	b cLib_addCalcAngleS__FPsssss
/* 80C1FA50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1FA54  7C 08 03 A6 */	mtlr r0
/* 80C1FA58  38 21 00 20 */	addi r1, r1, 0x20
/* 80C1FA5C  4E 80 00 20 */	blr 
