lbl_8014DA64:
/* 8014DA64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014DA68  7C 08 02 A6 */	mflr r0
/* 8014DA6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8014DA70  7C 68 1B 78 */	mr r8, r3
/* 8014DA74  C0 04 00 00 */	lfs f0, 0(r4)
/* 8014DA78  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014DA7C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8014DA80  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014DA84  C0 04 00 08 */	lfs f0, 8(r4)
/* 8014DA88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014DA8C  80 C3 00 04 */	lwz r6, 4(r3)
/* 8014DA90  88 06 00 05 */	lbz r0, 5(r6)
/* 8014DA94  54 07 07 FE */	clrlwi r7, r0, 0x1f
/* 8014DA98  38 61 00 08 */	addi r3, r1, 8
/* 8014DA9C  80 86 00 08 */	lwz r4, 8(r6)
/* 8014DAA0  A0 A8 0A 10 */	lhz r5, 0xa10(r8)
/* 8014DAA4  A0 C6 00 00 */	lhz r6, 0(r6)
/* 8014DAA8  89 08 0A 12 */	lbz r8, 0xa12(r8)
/* 8014DAAC  7D 08 07 74 */	extsb r8, r8
/* 8014DAB0  48 00 20 79 */	bl daBaseNpc_chkPnt__F4cXyzP4dPntUsUsii
/* 8014DAB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8014DAB8  7C 08 03 A6 */	mtlr r0
/* 8014DABC  38 21 00 20 */	addi r1, r1, 0x20
/* 8014DAC0  4E 80 00 20 */	blr 
