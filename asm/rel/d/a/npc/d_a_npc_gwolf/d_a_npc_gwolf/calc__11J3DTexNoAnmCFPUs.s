lbl_809F7B80:
/* 809F7B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7B84  7C 08 02 A6 */	mflr r0
/* 809F7B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7B8C  7C 66 1B 78 */	mr r6, r3
/* 809F7B90  7C 85 23 78 */	mr r5, r4
/* 809F7B94  80 63 00 08 */	lwz r3, 8(r3)
/* 809F7B98  A0 86 00 04 */	lhz r4, 4(r6)
/* 809F7B9C  4B 93 33 B4 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809F7BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7BA4  7C 08 03 A6 */	mtlr r0
/* 809F7BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7BAC  4E 80 00 20 */	blr 
