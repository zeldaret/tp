lbl_80316FB8:
/* 80316FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80316FBC  7C 08 02 A6 */	mflr r0
/* 80316FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80316FC4  4B FF F2 7D */	bl initialize__11J3DMaterialFv
/* 80316FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80316FCC  7C 08 03 A6 */	mtlr r0
/* 80316FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80316FD4  4E 80 00 20 */	blr 
