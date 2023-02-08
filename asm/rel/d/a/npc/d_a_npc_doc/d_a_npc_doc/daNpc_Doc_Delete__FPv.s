lbl_809A906C:
/* 809A906C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A9070  7C 08 02 A6 */	mflr r0
/* 809A9074  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A9078  4B FF E4 51 */	bl Delete__11daNpc_Doc_cFv
/* 809A907C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9080  7C 08 03 A6 */	mtlr r0
/* 809A9084  38 21 00 10 */	addi r1, r1, 0x10
/* 809A9088  4E 80 00 20 */	blr 
