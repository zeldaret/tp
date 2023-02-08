lbl_80C4F580:
/* 80C4F580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F584  7C 08 02 A6 */	mflr r0
/* 80C4F588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F58C  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C4F590  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C4F594  7D 89 03 A6 */	mtctr r12
/* 80C4F598  4E 80 04 21 */	bctrl 
/* 80C4F59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F5A0  7C 08 03 A6 */	mtlr r0
/* 80C4F5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F5A8  4E 80 00 20 */	blr 
