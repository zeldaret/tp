lbl_809A908C:
/* 809A908C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9090  7C 08 02 A6 */	mflr r0
/* 809A9094  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9098  4B FF E4 65 */	bl Execute__11daNpc_Doc_cFv
/* 809A909C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A90A0  7C 08 03 A6 */	mtlr r0
/* 809A90A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A90A8  4E 80 00 20 */	blr 
