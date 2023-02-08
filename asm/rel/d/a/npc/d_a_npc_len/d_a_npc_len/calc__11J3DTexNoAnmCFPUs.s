lbl_80A67B28:
/* 80A67B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67B2C  7C 08 02 A6 */	mflr r0
/* 80A67B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67B34  7C 66 1B 78 */	mr r6, r3
/* 80A67B38  7C 85 23 78 */	mr r5, r4
/* 80A67B3C  80 63 00 08 */	lwz r3, 8(r3)
/* 80A67B40  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A67B44  4B 8C 34 0D */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A67B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67B4C  7C 08 03 A6 */	mtlr r0
/* 80A67B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67B54  4E 80 00 20 */	blr 
