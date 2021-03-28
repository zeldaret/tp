lbl_809CEBDC:
/* 809CEBDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEBE0  7C 08 02 A6 */	mflr r0
/* 809CEBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEBE8  4B FF CC F9 */	bl create__11daNpc_grC_cFv
/* 809CEBEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEBF0  7C 08 03 A6 */	mtlr r0
/* 809CEBF4  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEBF8  4E 80 00 20 */	blr 
