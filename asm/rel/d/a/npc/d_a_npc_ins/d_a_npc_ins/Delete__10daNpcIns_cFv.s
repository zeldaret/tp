lbl_80A0EF3C:
/* 80A0EF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0EF40  7C 08 02 A6 */	mflr r0
/* 80A0EF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0EF48  38 80 FF FF */	li r4, -1
/* 80A0EF4C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A0EF50  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A0EF54  7D 89 03 A6 */	mtctr r12
/* 80A0EF58  4E 80 04 21 */	bctrl 
/* 80A0EF5C  38 60 00 01 */	li r3, 1
/* 80A0EF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0EF64  7C 08 03 A6 */	mtlr r0
/* 80A0EF68  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0EF6C  4E 80 00 20 */	blr 
