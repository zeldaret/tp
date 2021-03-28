lbl_80A67AE0:
/* 80A67AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67AE4  7C 08 02 A6 */	mflr r0
/* 80A67AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67AEC  4B FF D1 29 */	bl Execute__11daNpc_Len_cFv
/* 80A67AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67AF4  7C 08 03 A6 */	mtlr r0
/* 80A67AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67AFC  4E 80 00 20 */	blr 
