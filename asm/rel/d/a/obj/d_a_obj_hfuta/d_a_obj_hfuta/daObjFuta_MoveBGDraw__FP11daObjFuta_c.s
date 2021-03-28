lbl_80C1EE3C:
/* 80C1EE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1EE40  7C 08 02 A6 */	mflr r0
/* 80C1EE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1EE48  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C1EE4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C1EE50  7D 89 03 A6 */	mtctr r12
/* 80C1EE54  4E 80 04 21 */	bctrl 
/* 80C1EE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1EE5C  7C 08 03 A6 */	mtlr r0
/* 80C1EE60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1EE64  4E 80 00 20 */	blr 
