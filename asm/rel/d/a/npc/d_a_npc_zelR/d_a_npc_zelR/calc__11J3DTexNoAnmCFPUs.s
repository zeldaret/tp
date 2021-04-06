lbl_80B7089C:
/* 80B7089C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B708A0  7C 08 02 A6 */	mflr r0
/* 80B708A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B708A8  7C 66 1B 78 */	mr r6, r3
/* 80B708AC  7C 85 23 78 */	mr r5, r4
/* 80B708B0  80 63 00 08 */	lwz r3, 8(r3)
/* 80B708B4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B708B8  4B 7B A6 99 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B708BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B708C0  7C 08 03 A6 */	mtlr r0
/* 80B708C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B708C8  4E 80 00 20 */	blr 
