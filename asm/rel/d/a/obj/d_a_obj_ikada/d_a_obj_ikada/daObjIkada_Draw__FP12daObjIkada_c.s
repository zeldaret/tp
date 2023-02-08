lbl_80C26D3C:
/* 80C26D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26D40  7C 08 02 A6 */	mflr r0
/* 80C26D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26D48  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80C26D4C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C26D50  7D 89 03 A6 */	mtctr r12
/* 80C26D54  4E 80 04 21 */	bctrl 
/* 80C26D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C26D5C  7C 08 03 A6 */	mtlr r0
/* 80C26D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26D64  4E 80 00 20 */	blr 
