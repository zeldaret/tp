lbl_80B7ED38:
/* 80B7ED38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7ED3C  7C 08 02 A6 */	mflr r0
/* 80B7ED40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7ED44  4B FF AE 15 */	bl create__11daNpc_zrA_cFv
/* 80B7ED48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7ED4C  7C 08 03 A6 */	mtlr r0
/* 80B7ED50  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7ED54  4E 80 00 20 */	blr 
