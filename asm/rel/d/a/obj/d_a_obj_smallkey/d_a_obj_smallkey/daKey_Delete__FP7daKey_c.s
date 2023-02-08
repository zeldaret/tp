lbl_80CDB6B4:
/* 80CDB6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB6B8  7C 08 02 A6 */	mflr r0
/* 80CDB6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB6C0  4B FF FF 69 */	bl _delete__7daKey_cFv
/* 80CDB6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB6C8  7C 08 03 A6 */	mtlr r0
/* 80CDB6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB6D0  4E 80 00 20 */	blr 
