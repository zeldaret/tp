lbl_80AD1508:
/* 80AD1508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD150C  7C 08 02 A6 */	mflr r0
/* 80AD1510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD1514  38 80 FF FF */	li r4, -1
/* 80AD1518  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AD151C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AD1520  7D 89 03 A6 */	mtctr r12
/* 80AD1524  4E 80 04 21 */	bctrl 
/* 80AD1528  38 60 00 01 */	li r3, 1
/* 80AD152C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1530  7C 08 03 A6 */	mtlr r0
/* 80AD1534  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1538  4E 80 00 20 */	blr 
