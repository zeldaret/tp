lbl_80ACED70:
/* 80ACED70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACED74  7C 08 02 A6 */	mflr r0
/* 80ACED78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACED7C  7C 66 1B 78 */	mr r6, r3
/* 80ACED80  7C 85 23 78 */	mr r5, r4
/* 80ACED84  80 63 00 08 */	lwz r3, 8(r3)
/* 80ACED88  A0 86 00 04 */	lhz r4, 4(r6)
/* 80ACED8C  4B 85 C1 C5 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80ACED90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACED94  7C 08 03 A6 */	mtlr r0
/* 80ACED98  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACED9C  4E 80 00 20 */	blr 
