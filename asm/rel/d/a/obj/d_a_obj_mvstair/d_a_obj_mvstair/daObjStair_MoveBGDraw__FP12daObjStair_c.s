lbl_80C9E7F4:
/* 80C9E7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E7F8  7C 08 02 A6 */	mflr r0
/* 80C9E7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E800  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C9E804  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C9E808  7D 89 03 A6 */	mtctr r12
/* 80C9E80C  4E 80 04 21 */	bctrl 
/* 80C9E810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E814  7C 08 03 A6 */	mtlr r0
/* 80C9E818  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E81C  4E 80 00 20 */	blr 
