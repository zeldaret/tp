lbl_80B0B98C:
/* 80B0B98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0B990  7C 08 02 A6 */	mflr r0
/* 80B0B994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0B998  4B FF FF 81 */	bl _delete__10daNPC_TK_cFv
/* 80B0B99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0B9A0  7C 08 03 A6 */	mtlr r0
/* 80B0B9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0B9A8  4E 80 00 20 */	blr 
