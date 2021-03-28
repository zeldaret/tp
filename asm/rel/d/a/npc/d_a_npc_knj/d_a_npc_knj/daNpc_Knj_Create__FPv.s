lbl_80A446FC:
/* 80A446FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44700  7C 08 02 A6 */	mflr r0
/* 80A44704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44708  4B FF EF 01 */	bl create__11daNpc_Knj_cFv
/* 80A4470C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A44710  7C 08 03 A6 */	mtlr r0
/* 80A44714  38 21 00 10 */	addi r1, r1, 0x10
/* 80A44718  4E 80 00 20 */	blr 
