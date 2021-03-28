lbl_809FEDE0:
/* 809FEDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FEDE4  7C 08 02 A6 */	mflr r0
/* 809FEDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FEDEC  7C 66 1B 78 */	mr r6, r3
/* 809FEDF0  7C 85 23 78 */	mr r5, r4
/* 809FEDF4  80 63 00 08 */	lwz r3, 8(r3)
/* 809FEDF8  A0 86 00 04 */	lhz r4, 4(r6)
/* 809FEDFC  4B 92 C1 54 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809FEE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FEE04  7C 08 03 A6 */	mtlr r0
/* 809FEE08  38 21 00 10 */	addi r1, r1, 0x10
/* 809FEE0C  4E 80 00 20 */	blr 
