lbl_804C634C:
/* 804C634C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6350  7C 08 02 A6 */	mflr r0
/* 804C6354  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6358  7C 66 1B 78 */	mr r6, r3
/* 804C635C  7C 85 23 78 */	mr r5, r4
/* 804C6360  80 63 00 08 */	lwz r3, 8(r3)
/* 804C6364  A0 86 00 04 */	lhz r4, 4(r6)
/* 804C6368  4B E6 4B E8 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 804C636C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6370  7C 08 03 A6 */	mtlr r0
/* 804C6374  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6378  4E 80 00 20 */	blr 
