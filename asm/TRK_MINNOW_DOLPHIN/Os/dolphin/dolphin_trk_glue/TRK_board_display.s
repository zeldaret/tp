lbl_80371CD8:
/* 80371CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371CDC  7C 08 02 A6 */	mflr r0
/* 80371CE0  3C A0 80 3A */	lis r5, lit_165@ha
/* 80371CE4  7C 64 1B 78 */	mr r4, r3
/* 80371CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371CEC  38 65 2C 0C */	addi r3, r5, lit_165@l
/* 80371CF0  4C C6 31 82 */	crclr 6
/* 80371CF4  4B C9 4D C9 */	bl OSReport
/* 80371CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371CFC  7C 08 03 A6 */	mtlr r0
/* 80371D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80371D04  4E 80 00 20 */	blr 
