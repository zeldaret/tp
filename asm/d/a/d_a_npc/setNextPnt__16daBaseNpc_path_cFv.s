lbl_8014DAC4:
/* 8014DAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014DAC8  7C 08 02 A6 */	mflr r0
/* 8014DACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014DAD0  7C 66 1B 78 */	mr r6, r3
/* 8014DAD4  80 63 00 04 */	lwz r3, 4(r3)
/* 8014DAD8  88 03 00 05 */	lbz r0, 5(r3)
/* 8014DADC  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 8014DAE0  A0 63 00 00 */	lhz r3, 0(r3)
/* 8014DAE4  38 86 0A 10 */	addi r4, r6, 0xa10
/* 8014DAE8  88 C6 0A 12 */	lbz r6, 0xa12(r6)
/* 8014DAEC  7C C6 07 74 */	extsb r6, r6
/* 8014DAF0  4B FF FA D5 */	bl daBaseNpc_incIdx__FiPUsii
/* 8014DAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014DAF8  7C 08 03 A6 */	mtlr r0
/* 8014DAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014DB00  4E 80 00 20 */	blr 
