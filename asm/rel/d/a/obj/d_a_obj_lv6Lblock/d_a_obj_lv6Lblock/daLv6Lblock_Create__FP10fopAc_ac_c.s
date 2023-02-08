lbl_80C73BF0:
/* 80C73BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73BF4  7C 08 02 A6 */	mflr r0
/* 80C73BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73BFC  4B FF F9 5D */	bl create__13daLv6Lblock_cFv
/* 80C73C00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73C04  7C 08 03 A6 */	mtlr r0
/* 80C73C08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73C0C  4E 80 00 20 */	blr 
