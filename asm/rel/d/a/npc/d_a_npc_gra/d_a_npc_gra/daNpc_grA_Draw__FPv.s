lbl_809C9188:
/* 809C9188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C918C  7C 08 02 A6 */	mflr r0
/* 809C9190  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9194  4B FF 62 FD */	bl Draw__11daNpc_grA_cFv
/* 809C9198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C919C  7C 08 03 A6 */	mtlr r0
/* 809C91A0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C91A4  4E 80 00 20 */	blr 
