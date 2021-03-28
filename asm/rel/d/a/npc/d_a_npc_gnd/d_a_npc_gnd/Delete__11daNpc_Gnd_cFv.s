lbl_809BBE2C:
/* 809BBE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBE30  7C 08 02 A6 */	mflr r0
/* 809BBE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBE38  38 80 FF FF */	li r4, -1
/* 809BBE3C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809BBE40  81 8C 00 08 */	lwz r12, 8(r12)
/* 809BBE44  7D 89 03 A6 */	mtctr r12
/* 809BBE48  4E 80 04 21 */	bctrl 
/* 809BBE4C  38 60 00 01 */	li r3, 1
/* 809BBE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBE54  7C 08 03 A6 */	mtlr r0
/* 809BBE58  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBE5C  4E 80 00 20 */	blr 
