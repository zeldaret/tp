lbl_80CDB6D4:
/* 80CDB6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB6D8  7C 08 02 A6 */	mflr r0
/* 80CDB6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB6E0  4B FF EA 85 */	bl create__7daKey_cFv
/* 80CDB6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB6E8  7C 08 03 A6 */	mtlr r0
/* 80CDB6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB6F0  4E 80 00 20 */	blr 
