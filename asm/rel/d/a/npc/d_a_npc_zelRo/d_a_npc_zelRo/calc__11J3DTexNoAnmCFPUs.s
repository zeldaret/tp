lbl_80B73A18:
/* 80B73A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73A1C  7C 08 02 A6 */	mflr r0
/* 80B73A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B73A24  7C 66 1B 78 */	mr r6, r3
/* 80B73A28  7C 85 23 78 */	mr r5, r4
/* 80B73A2C  80 63 00 08 */	lwz r3, 8(r3)
/* 80B73A30  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B73A34  4B 7B 75 1C */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B73A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B73A3C  7C 08 03 A6 */	mtlr r0
/* 80B73A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80B73A44  4E 80 00 20 */	blr 
