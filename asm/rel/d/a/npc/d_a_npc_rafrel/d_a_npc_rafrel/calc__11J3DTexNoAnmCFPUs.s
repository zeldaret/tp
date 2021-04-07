lbl_80ABDE6C:
/* 80ABDE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABDE70  7C 08 02 A6 */	mflr r0
/* 80ABDE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABDE78  7C 66 1B 78 */	mr r6, r3
/* 80ABDE7C  7C 85 23 78 */	mr r5, r4
/* 80ABDE80  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABDE84  A0 86 00 04 */	lhz r4, 4(r6)
/* 80ABDE88  4B 86 D0 C9 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80ABDE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABDE90  7C 08 03 A6 */	mtlr r0
/* 80ABDE94  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABDE98  4E 80 00 20 */	blr 
