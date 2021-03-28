lbl_809DE5D0:
/* 809DE5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE5D4  7C 08 02 A6 */	mflr r0
/* 809DE5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE5DC  4B FF C3 A5 */	bl create__11daNpc_grO_cFv
/* 809DE5E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE5E4  7C 08 03 A6 */	mtlr r0
/* 809DE5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE5EC  4E 80 00 20 */	blr 
