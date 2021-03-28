lbl_8095BC58:
/* 8095BC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095BC5C  7C 08 02 A6 */	mflr r0
/* 8095BC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095BC64  4B FF D4 61 */	bl Delete__10daNpcAsh_cFv
/* 8095BC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095BC6C  7C 08 03 A6 */	mtlr r0
/* 8095BC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8095BC74  4E 80 00 20 */	blr 
