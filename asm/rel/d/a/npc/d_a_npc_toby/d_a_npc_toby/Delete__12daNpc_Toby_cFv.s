lbl_80B1EF28:
/* 80B1EF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1EF2C  7C 08 02 A6 */	mflr r0
/* 80B1EF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1EF34  38 80 FF FF */	li r4, -1
/* 80B1EF38  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B1EF3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B1EF40  7D 89 03 A6 */	mtctr r12
/* 80B1EF44  4E 80 04 21 */	bctrl 
/* 80B1EF48  38 60 00 01 */	li r3, 1
/* 80B1EF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1EF50  7C 08 03 A6 */	mtlr r0
/* 80B1EF54  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EF58  4E 80 00 20 */	blr 
