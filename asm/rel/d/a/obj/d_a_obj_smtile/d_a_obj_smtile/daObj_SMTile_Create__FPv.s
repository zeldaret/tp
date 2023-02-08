lbl_80CDE21C:
/* 80CDE21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDE220  7C 08 02 A6 */	mflr r0
/* 80CDE224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDE228  4B FF F1 C1 */	bl create__14daObj_SMTile_cFv
/* 80CDE22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDE230  7C 08 03 A6 */	mtlr r0
/* 80CDE234  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDE238  4E 80 00 20 */	blr 
