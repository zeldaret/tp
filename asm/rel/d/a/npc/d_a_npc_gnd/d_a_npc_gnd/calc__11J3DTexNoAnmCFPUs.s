lbl_809BD2D0:
/* 809BD2D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BD2D4  7C 08 02 A6 */	mflr r0
/* 809BD2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BD2DC  7C 66 1B 78 */	mr r6, r3
/* 809BD2E0  7C 85 23 78 */	mr r5, r4
/* 809BD2E4  80 63 00 08 */	lwz r3, 8(r3)
/* 809BD2E8  A0 86 00 04 */	lhz r4, 4(r6)
/* 809BD2EC  4B 96 DC 65 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809BD2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BD2F4  7C 08 03 A6 */	mtlr r0
/* 809BD2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BD2FC  4E 80 00 20 */	blr 
