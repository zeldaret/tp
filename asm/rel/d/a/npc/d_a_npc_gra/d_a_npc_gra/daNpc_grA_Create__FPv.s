lbl_809C9128:
/* 809C9128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C912C  7C 08 02 A6 */	mflr r0
/* 809C9130  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9134  4B FF 5C 71 */	bl create__11daNpc_grA_cFv
/* 809C9138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C913C  7C 08 03 A6 */	mtlr r0
/* 809C9140  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9144  4E 80 00 20 */	blr 
