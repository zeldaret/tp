lbl_80A14F4C:
/* 80A14F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14F50  7C 08 02 A6 */	mflr r0
/* 80A14F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14F58  38 80 FF FF */	li r4, -1
/* 80A14F5C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A14F60  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A14F64  7D 89 03 A6 */	mtctr r12
/* 80A14F68  4E 80 04 21 */	bctrl 
/* 80A14F6C  38 60 00 01 */	li r3, 1
/* 80A14F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14F74  7C 08 03 A6 */	mtlr r0
/* 80A14F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14F7C  4E 80 00 20 */	blr 
