lbl_80CDB694:
/* 80CDB694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB698  7C 08 02 A6 */	mflr r0
/* 80CDB69C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB6A0  4B FF FD 65 */	bl execute__7daKey_cFv
/* 80CDB6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB6A8  7C 08 03 A6 */	mtlr r0
/* 80CDB6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB6B0  4E 80 00 20 */	blr 
