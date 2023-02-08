lbl_80C209DC:
/* 80C209DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C209E0  7C 08 02 A6 */	mflr r0
/* 80C209E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C209E8  7C 83 23 78 */	mr r3, r4
/* 80C209EC  7C A0 07 34 */	extsh r0, r5
/* 80C209F0  3C 80 80 C2 */	lis r4, lit_3688@ha /* 0x80C21B08@ha */
/* 80C209F4  C8 64 1B 08 */	lfd f3, lit_3688@l(r4)  /* 0x80C21B08@l */
/* 80C209F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C209FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C20A00  3C 00 43 30 */	lis r0, 0x4330
/* 80C20A04  90 01 00 08 */	stw r0, 8(r1)
/* 80C20A08  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C20A0C  EC 60 18 28 */	fsubs f3, f0, f3
/* 80C20A10  EC 01 10 24 */	fdivs f0, f1, f2
/* 80C20A14  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C20A18  FC 00 00 1E */	fctiwz f0, f0
/* 80C20A1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C20A20  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C20A24  38 A0 00 05 */	li r5, 5
/* 80C20A28  38 C0 01 00 */	li r6, 0x100
/* 80C20A2C  38 E0 00 01 */	li r7, 1
/* 80C20A30  4B 64 FB 11 */	bl cLib_addCalcAngleS__FPsssss
/* 80C20A34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C20A38  7C 08 03 A6 */	mtlr r0
/* 80C20A3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C20A40  4E 80 00 20 */	blr 
