lbl_804D56FC:
/* 804D56FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5700  7C 08 02 A6 */	mflr r0
/* 804D5704  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5708  4B FF FC 4D */	bl create__8daAttp_cFv
/* 804D570C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5710  7C 08 03 A6 */	mtlr r0
/* 804D5714  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5718  4E 80 00 20 */	blr 
