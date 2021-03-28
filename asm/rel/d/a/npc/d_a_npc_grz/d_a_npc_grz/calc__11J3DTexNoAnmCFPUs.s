lbl_809EE7AC:
/* 809EE7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE7B0  7C 08 02 A6 */	mflr r0
/* 809EE7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE7B8  7C 66 1B 78 */	mr r6, r3
/* 809EE7BC  7C 85 23 78 */	mr r5, r4
/* 809EE7C0  80 63 00 08 */	lwz r3, 8(r3)
/* 809EE7C4  A0 86 00 04 */	lhz r4, 4(r6)
/* 809EE7C8  4B 93 C7 88 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809EE7CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE7D0  7C 08 03 A6 */	mtlr r0
/* 809EE7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE7D8  4E 80 00 20 */	blr 
