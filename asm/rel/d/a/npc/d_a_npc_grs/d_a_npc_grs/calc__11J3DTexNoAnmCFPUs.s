lbl_809E74C4:
/* 809E74C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E74C8  7C 08 02 A6 */	mflr r0
/* 809E74CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E74D0  7C 66 1B 78 */	mr r6, r3
/* 809E74D4  7C 85 23 78 */	mr r5, r4
/* 809E74D8  80 63 00 08 */	lwz r3, 8(r3)
/* 809E74DC  A0 86 00 04 */	lhz r4, 4(r6)
/* 809E74E0  4B 94 3A 70 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809E74E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E74E8  7C 08 03 A6 */	mtlr r0
/* 809E74EC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E74F0  4E 80 00 20 */	blr 
