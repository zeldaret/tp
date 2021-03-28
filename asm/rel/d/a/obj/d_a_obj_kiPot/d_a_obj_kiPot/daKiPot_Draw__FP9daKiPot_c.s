lbl_80C45068:
/* 80C45068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4506C  7C 08 02 A6 */	mflr r0
/* 80C45070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45074  4B FF FF E5 */	bl Draw__9daKiPot_cFv
/* 80C45078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4507C  7C 08 03 A6 */	mtlr r0
/* 80C45080  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45084  4E 80 00 20 */	blr 
