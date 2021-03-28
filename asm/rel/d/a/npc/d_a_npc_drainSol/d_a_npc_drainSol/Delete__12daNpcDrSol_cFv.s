lbl_809AE51C:
/* 809AE51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AE520  7C 08 02 A6 */	mflr r0
/* 809AE524  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AE528  38 80 FF FF */	li r4, -1
/* 809AE52C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809AE530  81 8C 00 08 */	lwz r12, 8(r12)
/* 809AE534  7D 89 03 A6 */	mtctr r12
/* 809AE538  4E 80 04 21 */	bctrl 
/* 809AE53C  38 60 00 01 */	li r3, 1
/* 809AE540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE544  7C 08 03 A6 */	mtlr r0
/* 809AE548  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE54C  4E 80 00 20 */	blr 
