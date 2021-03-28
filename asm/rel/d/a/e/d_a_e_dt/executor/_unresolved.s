lbl_806AD878:
/* 806AD878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD87C  7C 08 02 A6 */	mflr r0
/* 806AD880  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD884  4B BB 58 0C */	b ModuleUnresolved
/* 806AD888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD88C  7C 08 03 A6 */	mtlr r0
/* 806AD890  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD894  4E 80 00 20 */	blr 
