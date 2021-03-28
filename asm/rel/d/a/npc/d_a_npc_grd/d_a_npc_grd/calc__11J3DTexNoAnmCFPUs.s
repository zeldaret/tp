lbl_809D30E0:
/* 809D30E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D30E4  7C 08 02 A6 */	mflr r0
/* 809D30E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D30EC  7C 66 1B 78 */	mr r6, r3
/* 809D30F0  7C 85 23 78 */	mr r5, r4
/* 809D30F4  80 63 00 08 */	lwz r3, 8(r3)
/* 809D30F8  A0 86 00 04 */	lhz r4, 4(r6)
/* 809D30FC  4B 95 7E 54 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809D3100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3104  7C 08 03 A6 */	mtlr r0
/* 809D3108  38 21 00 10 */	addi r1, r1, 0x10
/* 809D310C  4E 80 00 20 */	blr 
