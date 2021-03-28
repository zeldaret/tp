lbl_80A67B00:
/* 80A67B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67B04  7C 08 02 A6 */	mflr r0
/* 80A67B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67B0C  4B FF D1 29 */	bl Draw__11daNpc_Len_cFv
/* 80A67B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67B14  7C 08 03 A6 */	mtlr r0
/* 80A67B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67B1C  4E 80 00 20 */	blr 
