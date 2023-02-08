lbl_8029DF8C:
/* 8029DF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DF90  7C 08 02 A6 */	mflr r0
/* 8029DF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DF98  38 80 01 80 */	li r4, 0x180
/* 8029DF9C  48 09 D6 11 */	bl DCFlushRange
/* 8029DFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DFA4  7C 08 03 A6 */	mtlr r0
/* 8029DFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DFAC  4E 80 00 20 */	blr 
