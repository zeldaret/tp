lbl_80C39568:
/* 80C39568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3956C  7C 08 02 A6 */	mflr r0
/* 80C39570  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39574  4B FF FF 69 */	bl draw__15daItemKantera_cFv
/* 80C39578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3957C  7C 08 03 A6 */	mtlr r0
/* 80C39580  38 21 00 10 */	addi r1, r1, 0x10
/* 80C39584  4E 80 00 20 */	blr 
