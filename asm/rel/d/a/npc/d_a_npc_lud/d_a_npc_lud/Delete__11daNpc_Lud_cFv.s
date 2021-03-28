lbl_80A6B5FC:
/* 80A6B5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6B600  7C 08 02 A6 */	mflr r0
/* 80A6B604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6B608  38 80 FF FF */	li r4, -1
/* 80A6B60C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A6B610  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A6B614  7D 89 03 A6 */	mtctr r12
/* 80A6B618  4E 80 04 21 */	bctrl 
/* 80A6B61C  38 60 00 01 */	li r3, 1
/* 80A6B620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6B624  7C 08 03 A6 */	mtlr r0
/* 80A6B628  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6B62C  4E 80 00 20 */	blr 
