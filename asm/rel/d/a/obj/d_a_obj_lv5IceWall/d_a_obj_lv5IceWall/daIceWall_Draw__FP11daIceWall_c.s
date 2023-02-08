lbl_80C6C47C:
/* 80C6C47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C480  7C 08 02 A6 */	mflr r0
/* 80C6C484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C488  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C6C48C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C6C490  7D 89 03 A6 */	mtctr r12
/* 80C6C494  4E 80 04 21 */	bctrl 
/* 80C6C498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C49C  7C 08 03 A6 */	mtlr r0
/* 80C6C4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C4A4  4E 80 00 20 */	blr 
