lbl_809D5D50:
/* 809D5D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5D54  7C 08 02 A6 */	mflr r0
/* 809D5D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5D5C  4B FF E4 39 */	bl create__11daNpc_grM_cFv
/* 809D5D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5D64  7C 08 03 A6 */	mtlr r0
/* 809D5D68  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5D6C  4E 80 00 20 */	blr 
