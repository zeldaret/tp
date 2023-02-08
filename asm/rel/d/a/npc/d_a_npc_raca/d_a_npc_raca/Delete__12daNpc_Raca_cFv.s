lbl_80AB6514:
/* 80AB6514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB6518  7C 08 02 A6 */	mflr r0
/* 80AB651C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB6520  38 80 FF FF */	li r4, -1
/* 80AB6524  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AB6528  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AB652C  7D 89 03 A6 */	mtctr r12
/* 80AB6530  4E 80 04 21 */	bctrl 
/* 80AB6534  38 60 00 01 */	li r3, 1
/* 80AB6538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB653C  7C 08 03 A6 */	mtlr r0
/* 80AB6540  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB6544  4E 80 00 20 */	blr 
