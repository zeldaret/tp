lbl_80966D10:
/* 80966D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966D14  7C 08 02 A6 */	mflr r0
/* 80966D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966D1C  7C 66 1B 78 */	mr r6, r3
/* 80966D20  7C 85 23 78 */	mr r5, r4
/* 80966D24  80 63 00 08 */	lwz r3, 8(r3)
/* 80966D28  A0 86 00 04 */	lhz r4, 4(r6)
/* 80966D2C  4B 9C 42 25 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80966D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966D34  7C 08 03 A6 */	mtlr r0
/* 80966D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80966D3C  4E 80 00 20 */	blr 
