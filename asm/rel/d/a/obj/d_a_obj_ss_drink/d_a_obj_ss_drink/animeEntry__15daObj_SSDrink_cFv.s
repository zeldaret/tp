lbl_80CE6170:
/* 80CE6170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE6174  7C 08 02 A6 */	mflr r0
/* 80CE6178  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE617C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE6180  7C 7F 1B 78 */	mr r31, r3
/* 80CE6184  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 80CE6188  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE618C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80CE6190  38 84 00 58 */	addi r4, r4, 0x58
/* 80CE6194  88 BF 0B 0A */	lbz r5, 0xb0a(r31)
/* 80CE6198  4B 32 74 50 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80CE619C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80CE61A0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CE61A4  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80CE61A8  38 84 00 58 */	addi r4, r4, 0x58
/* 80CE61AC  88 1F 0B 0B */	lbz r0, 0xb0b(r31)
/* 80CE61B0  3C A0 80 CE */	lis r5, lit_4320@ha
/* 80CE61B4  C8 25 69 88 */	lfd f1, lit_4320@l(r5)
/* 80CE61B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE61BC  3C 00 43 30 */	lis r0, 0x4330
/* 80CE61C0  90 01 00 08 */	stw r0, 8(r1)
/* 80CE61C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CE61C8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80CE61CC  4B 32 75 DC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CE61D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE61D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE61D8  7C 08 03 A6 */	mtlr r0
/* 80CE61DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE61E0  4E 80 00 20 */	blr 
