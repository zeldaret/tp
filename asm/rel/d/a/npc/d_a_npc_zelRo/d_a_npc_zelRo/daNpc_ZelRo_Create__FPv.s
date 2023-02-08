lbl_80B73990:
/* 80B73990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B73994  7C 08 02 A6 */	mflr r0
/* 80B73998  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7399C  4B FF E7 49 */	bl create__13daNpc_ZelRo_cFv
/* 80B739A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B739A4  7C 08 03 A6 */	mtlr r0
/* 80B739A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B739AC  4E 80 00 20 */	blr 
