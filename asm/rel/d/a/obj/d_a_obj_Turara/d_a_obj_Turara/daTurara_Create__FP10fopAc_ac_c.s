lbl_80B9E54C:
/* 80B9E54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E550  7C 08 02 A6 */	mflr r0
/* 80B9E554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E558  4B FF E9 81 */	bl create__10daTurara_cFv
/* 80B9E55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E560  7C 08 03 A6 */	mtlr r0
/* 80B9E564  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E568  4E 80 00 20 */	blr 
