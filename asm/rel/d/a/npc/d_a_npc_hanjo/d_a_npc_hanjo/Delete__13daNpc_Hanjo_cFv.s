lbl_809F9B38:
/* 809F9B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9B3C  7C 08 02 A6 */	mflr r0
/* 809F9B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9B44  38 80 FF FF */	li r4, -1
/* 809F9B48  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809F9B4C  81 8C 00 08 */	lwz r12, 8(r12)
/* 809F9B50  7D 89 03 A6 */	mtctr r12
/* 809F9B54  4E 80 04 21 */	bctrl 
/* 809F9B58  38 60 00 01 */	li r3, 1
/* 809F9B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9B60  7C 08 03 A6 */	mtlr r0
/* 809F9B64  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9B68  4E 80 00 20 */	blr 
