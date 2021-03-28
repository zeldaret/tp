lbl_8003C82C:
/* 8003C82C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003C830  7C 08 02 A6 */	mflr r0
/* 8003C834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003C838  7C 66 1B 78 */	mr r6, r3
/* 8003C83C  7C 85 23 78 */	mr r5, r4
/* 8003C840  80 63 00 08 */	lwz r3, 8(r3)
/* 8003C844  A0 86 00 04 */	lhz r4, 4(r6)
/* 8003C848  48 2E E7 09 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 8003C84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003C850  7C 08 03 A6 */	mtlr r0
/* 8003C854  38 21 00 10 */	addi r1, r1, 0x10
/* 8003C858  4E 80 00 20 */	blr 
