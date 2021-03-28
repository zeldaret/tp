lbl_8095BC78:
/* 8095BC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095BC7C  7C 08 02 A6 */	mflr r0
/* 8095BC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095BC84  4B FF D4 75 */	bl Execute__10daNpcAsh_cFv
/* 8095BC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095BC8C  7C 08 03 A6 */	mtlr r0
/* 8095BC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8095BC94  4E 80 00 20 */	blr 
