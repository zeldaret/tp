lbl_809BAA4C:
/* 809BAA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BAA50  7C 08 02 A6 */	mflr r0
/* 809BAA54  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BAA58  38 80 FF FF */	li r4, -1
/* 809BAA5C  81 83 05 68 */	lwz r12, 0x568(r3)
/* 809BAA60  81 8C 00 08 */	lwz r12, 8(r12)
/* 809BAA64  7D 89 03 A6 */	mtctr r12
/* 809BAA68  4E 80 04 21 */	bctrl 
/* 809BAA6C  38 60 00 01 */	li r3, 1
/* 809BAA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BAA74  7C 08 03 A6 */	mtlr r0
/* 809BAA78  38 21 00 10 */	addi r1, r1, 0x10
/* 809BAA7C  4E 80 00 20 */	blr 
