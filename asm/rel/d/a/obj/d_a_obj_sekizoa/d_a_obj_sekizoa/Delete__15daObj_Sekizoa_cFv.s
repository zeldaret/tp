lbl_80CCEC54:
/* 80CCEC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCEC58  7C 08 02 A6 */	mflr r0
/* 80CCEC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCEC60  38 80 FF FF */	li r4, -1
/* 80CCEC64  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80CCEC68  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CCEC6C  7D 89 03 A6 */	mtctr r12
/* 80CCEC70  4E 80 04 21 */	bctrl 
/* 80CCEC74  38 60 00 01 */	li r3, 1
/* 80CCEC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCEC7C  7C 08 03 A6 */	mtlr r0
/* 80CCEC80  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCEC84  4E 80 00 20 */	blr 
