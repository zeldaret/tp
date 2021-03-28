lbl_80CDB674:
/* 80CDB674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB678  7C 08 02 A6 */	mflr r0
/* 80CDB67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB680  4B FF FF 55 */	bl draw__7daKey_cFv
/* 80CDB684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB688  7C 08 03 A6 */	mtlr r0
/* 80CDB68C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB690  4E 80 00 20 */	blr 
