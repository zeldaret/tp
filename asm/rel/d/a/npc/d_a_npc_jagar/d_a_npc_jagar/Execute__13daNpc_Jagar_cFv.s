lbl_80A14F80:
/* 80A14F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14F84  7C 08 02 A6 */	mflr r0
/* 80A14F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14F8C  4B 73 35 A1 */	bl execute__8daNpcT_cFv
/* 80A14F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14F94  7C 08 03 A6 */	mtlr r0
/* 80A14F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14F9C  4E 80 00 20 */	blr 
