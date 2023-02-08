lbl_80AD39E8:
/* 80AD39E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD39EC  7C 08 02 A6 */	mflr r0
/* 80AD39F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD39F4  7C 66 1B 78 */	mr r6, r3
/* 80AD39F8  7C 85 23 78 */	mr r5, r4
/* 80AD39FC  80 63 00 08 */	lwz r3, 8(r3)
/* 80AD3A00  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AD3A04  4B 85 75 4D */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AD3A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3A0C  7C 08 03 A6 */	mtlr r0
/* 80AD3A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3A14  4E 80 00 20 */	blr 
