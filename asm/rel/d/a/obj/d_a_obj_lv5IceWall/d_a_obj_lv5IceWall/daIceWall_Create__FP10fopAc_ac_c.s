lbl_80C6C4E8:
/* 80C6C4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C4EC  7C 08 02 A6 */	mflr r0
/* 80C6C4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C4F4  4B FF F1 A9 */	bl create__11daIceWall_cFv
/* 80C6C4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C4FC  7C 08 03 A6 */	mtlr r0
/* 80C6C500  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C504  4E 80 00 20 */	blr 
