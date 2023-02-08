lbl_80C60738:
/* 80C60738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6073C  7C 08 02 A6 */	mflr r0
/* 80C60740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60744  4B FF F6 69 */	bl create__13daLv4PoGate_cFv
/* 80C60748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6074C  7C 08 03 A6 */	mtlr r0
/* 80C60750  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60754  4E 80 00 20 */	blr 
