lbl_80B94A28:
/* 80B94A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B94A2C  7C 08 02 A6 */	mflr r0
/* 80B94A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B94A34  4B 5B D5 E0 */	b execute__8daNpcF_cFv
/* 80B94A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B94A3C  7C 08 03 A6 */	mtlr r0
/* 80B94A40  38 21 00 10 */	addi r1, r1, 0x10
/* 80B94A44  4E 80 00 20 */	blr 
