lbl_8099BC70:
/* 8099BC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099BC74  7C 08 02 A6 */	mflr r0
/* 8099BC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099BC7C  7C 66 1B 78 */	mr r6, r3
/* 8099BC80  7C 85 23 78 */	mr r5, r4
/* 8099BC84  80 63 00 08 */	lwz r3, 8(r3)
/* 8099BC88  A0 86 00 04 */	lhz r4, 4(r6)
/* 8099BC8C  4B 98 F2 C4 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 8099BC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099BC94  7C 08 03 A6 */	mtlr r0
/* 8099BC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8099BC9C  4E 80 00 20 */	blr 
