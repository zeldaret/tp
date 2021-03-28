lbl_80C324B0:
/* 80C324B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C324B4  7C 08 02 A6 */	mflr r0
/* 80C324B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C324BC  38 80 FF FF */	li r4, -1
/* 80C324C0  81 83 0B A4 */	lwz r12, 0xba4(r3)
/* 80C324C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C324C8  7D 89 03 A6 */	mtctr r12
/* 80C324CC  4E 80 04 21 */	bctrl 
/* 80C324D0  38 60 00 01 */	li r3, 1
/* 80C324D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C324D8  7C 08 03 A6 */	mtlr r0
/* 80C324DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C324E0  4E 80 00 20 */	blr 
