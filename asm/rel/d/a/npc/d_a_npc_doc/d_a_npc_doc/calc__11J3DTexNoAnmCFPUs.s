lbl_809A90D4:
/* 809A90D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A90D8  7C 08 02 A6 */	mflr r0
/* 809A90DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A90E0  7C 66 1B 78 */	mr r6, r3
/* 809A90E4  7C 85 23 78 */	mr r5, r4
/* 809A90E8  80 63 00 08 */	lwz r3, 8(r3)
/* 809A90EC  A0 86 00 04 */	lhz r4, 4(r6)
/* 809A90F0  4B 98 1E 61 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809A90F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A90F8  7C 08 03 A6 */	mtlr r0
/* 809A90FC  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9100  4E 80 00 20 */	blr 
