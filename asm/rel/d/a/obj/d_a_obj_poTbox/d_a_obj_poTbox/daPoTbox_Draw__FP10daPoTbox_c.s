lbl_80CB4E88:
/* 80CB4E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4E8C  7C 08 02 A6 */	mflr r0
/* 80CB4E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4E94  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CB4E98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CB4E9C  7D 89 03 A6 */	mtctr r12
/* 80CB4EA0  4E 80 04 21 */	bctrl 
/* 80CB4EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4EA8  7C 08 03 A6 */	mtlr r0
/* 80CB4EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4EB0  4E 80 00 20 */	blr 
