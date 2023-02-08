lbl_809B2EFC:
/* 809B2EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B2F00  7C 08 02 A6 */	mflr r0
/* 809B2F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2F08  38 80 FF FF */	li r4, -1
/* 809B2F0C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809B2F10  81 8C 00 08 */	lwz r12, 8(r12)
/* 809B2F14  7D 89 03 A6 */	mtctr r12
/* 809B2F18  4E 80 04 21 */	bctrl 
/* 809B2F1C  38 60 00 01 */	li r3, 1
/* 809B2F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2F24  7C 08 03 A6 */	mtlr r0
/* 809B2F28  38 21 00 10 */	addi r1, r1, 0x10
/* 809B2F2C  4E 80 00 20 */	blr 
