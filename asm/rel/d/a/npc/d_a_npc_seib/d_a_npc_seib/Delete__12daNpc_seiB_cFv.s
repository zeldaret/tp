lbl_80AC5520:
/* 80AC5520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5524  7C 08 02 A6 */	mflr r0
/* 80AC5528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC552C  38 80 FF FF */	li r4, -1
/* 80AC5530  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AC5534  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AC5538  7D 89 03 A6 */	mtctr r12
/* 80AC553C  4E 80 04 21 */	bctrl 
/* 80AC5540  38 60 00 01 */	li r3, 1
/* 80AC5544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5548  7C 08 03 A6 */	mtlr r0
/* 80AC554C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5550  4E 80 00 20 */	blr 
