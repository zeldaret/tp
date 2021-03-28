lbl_8048CCA0:
/* 8048CCA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CCA4  7C 08 02 A6 */	mflr r0
/* 8048CCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CCAC  4B FF FA 7D */	bl Delete__15daTag_EvtArea_cFv
/* 8048CCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CCB4  7C 08 03 A6 */	mtlr r0
/* 8048CCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CCBC  4E 80 00 20 */	blr 
