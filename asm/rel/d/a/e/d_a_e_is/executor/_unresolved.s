lbl_806F59B8:
/* 806F59B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F59BC  7C 08 02 A6 */	mflr r0
/* 806F59C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F59C4  4B B6 D6 CC */	b ModuleUnresolved
/* 806F59C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F59CC  7C 08 03 A6 */	mtlr r0
/* 806F59D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F59D4  4E 80 00 20 */	blr 
