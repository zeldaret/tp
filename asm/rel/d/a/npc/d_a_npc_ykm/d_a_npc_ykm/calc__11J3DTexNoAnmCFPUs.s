lbl_80B5C14C:
/* 80B5C14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C150  7C 08 02 A6 */	mflr r0
/* 80B5C154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C158  7C 66 1B 78 */	mr r6, r3
/* 80B5C15C  7C 85 23 78 */	mr r5, r4
/* 80B5C160  80 63 00 08 */	lwz r3, 8(r3)
/* 80B5C164  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B5C168  4B 7C ED E8 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B5C16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C170  7C 08 03 A6 */	mtlr r0
/* 80B5C174  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C178  4E 80 00 20 */	blr 
