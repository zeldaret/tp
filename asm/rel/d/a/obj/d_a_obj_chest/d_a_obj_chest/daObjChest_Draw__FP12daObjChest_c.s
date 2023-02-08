lbl_80BC9ED8:
/* 80BC9ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC9EDC  7C 08 02 A6 */	mflr r0
/* 80BC9EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9EE4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BC9EE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BC9EEC  7D 89 03 A6 */	mtctr r12
/* 80BC9EF0  4E 80 04 21 */	bctrl 
/* 80BC9EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9EF8  7C 08 03 A6 */	mtlr r0
/* 80BC9EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC9F00  4E 80 00 20 */	blr 
