lbl_80C395C8:
/* 80C395C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C395CC  7C 08 02 A6 */	mflr r0
/* 80C395D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C395D4  4B FF F5 DD */	bl create__15daItemKantera_cFv
/* 80C395D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C395DC  7C 08 03 A6 */	mtlr r0
/* 80C395E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C395E4  4E 80 00 20 */	blr 
