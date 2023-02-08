lbl_80A74A2C:
/* 80A74A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A74A30  7C 08 02 A6 */	mflr r0
/* 80A74A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A74A38  4B 6D 3A F5 */	bl execute__8daNpcT_cFv
/* 80A74A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A74A40  7C 08 03 A6 */	mtlr r0
/* 80A74A44  38 21 00 10 */	addi r1, r1, 0x10
/* 80A74A48  4E 80 00 20 */	blr 
