lbl_809A74C8:
/* 809A74C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A74CC  7C 08 02 A6 */	mflr r0
/* 809A74D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A74D4  38 80 FF FF */	li r4, -1
/* 809A74D8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809A74DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 809A74E0  7D 89 03 A6 */	mtctr r12
/* 809A74E4  4E 80 04 21 */	bctrl 
/* 809A74E8  38 60 00 01 */	li r3, 1
/* 809A74EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A74F0  7C 08 03 A6 */	mtlr r0
/* 809A74F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A74F8  4E 80 00 20 */	blr 
