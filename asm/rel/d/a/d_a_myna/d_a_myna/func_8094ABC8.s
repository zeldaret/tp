lbl_8094ABC8:
/* 8094ABC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8094ABCC  7C 08 02 A6 */	mflr r0
/* 8094ABD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8094ABD4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8094ABD8  7C 7F 1B 78 */	mr r31, r3
/* 8094ABDC  3C 60 80 95 */	lis r3, lit_5332@ha /* 0x8094B238@ha */
/* 8094ABE0  C8 23 B2 38 */	lfd f1, lit_5332@l(r3)  /* 0x8094B238@l */
/* 8094ABE4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8094ABE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8094ABEC  3C 00 43 30 */	lis r0, 0x4330
/* 8094ABF0  90 01 00 08 */	stw r0, 8(r1)
/* 8094ABF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8094ABF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8094ABFC  4B 91 CD 59 */	bl cM_rndF__Ff
/* 8094AC00  3C 60 80 95 */	lis r3, lit_5332@ha /* 0x8094B238@ha */
/* 8094AC04  C8 43 B2 38 */	lfd f2, lit_5332@l(r3)  /* 0x8094B238@l */
/* 8094AC08  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8094AC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094AC10  3C 00 43 30 */	lis r0, 0x4330
/* 8094AC14  90 01 00 10 */	stw r0, 0x10(r1)
/* 8094AC18  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8094AC1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8094AC20  EC 00 08 2A */	fadds f0, f0, f1
/* 8094AC24  FC 00 00 1E */	fctiwz f0, f0
/* 8094AC28  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8094AC2C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8094AC30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8094AC34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8094AC38  7C 08 03 A6 */	mtlr r0
/* 8094AC3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8094AC40  4E 80 00 20 */	blr 
