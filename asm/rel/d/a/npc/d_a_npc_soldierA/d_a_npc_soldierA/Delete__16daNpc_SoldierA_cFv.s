lbl_80AEFE4C:
/* 80AEFE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEFE50  7C 08 02 A6 */	mflr r0
/* 80AEFE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEFE58  38 80 FF FF */	li r4, -1
/* 80AEFE5C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AEFE60  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AEFE64  7D 89 03 A6 */	mtctr r12
/* 80AEFE68  4E 80 04 21 */	bctrl 
/* 80AEFE6C  38 60 00 01 */	li r3, 1
/* 80AEFE70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEFE74  7C 08 03 A6 */	mtlr r0
/* 80AEFE78  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEFE7C  4E 80 00 20 */	blr 
