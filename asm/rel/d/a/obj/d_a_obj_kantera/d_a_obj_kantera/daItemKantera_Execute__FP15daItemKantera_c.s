lbl_80C39588:
/* 80C39588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3958C  7C 08 02 A6 */	mflr r0
/* 80C39590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39594  4B FF FE 1D */	bl execute__15daItemKantera_cFv
/* 80C39598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3959C  7C 08 03 A6 */	mtlr r0
/* 80C395A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C395A4  4E 80 00 20 */	blr 
