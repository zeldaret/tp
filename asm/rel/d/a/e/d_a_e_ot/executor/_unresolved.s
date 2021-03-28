lbl_8073A238:
/* 8073A238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073A23C  7C 08 02 A6 */	mflr r0
/* 8073A240  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073A244  4B B2 8E 4C */	b ModuleUnresolved
/* 8073A248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073A24C  7C 08 03 A6 */	mtlr r0
/* 8073A250  38 21 00 10 */	addi r1, r1, 0x10
/* 8073A254  4E 80 00 20 */	blr 
