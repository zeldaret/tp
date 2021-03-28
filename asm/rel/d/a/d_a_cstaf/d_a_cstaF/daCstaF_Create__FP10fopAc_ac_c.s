lbl_804DE2D8:
/* 804DE2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE2DC  7C 08 02 A6 */	mflr r0
/* 804DE2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE2E4  4B FF F8 D1 */	bl create__9daCstaF_cFv
/* 804DE2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE2EC  7C 08 03 A6 */	mtlr r0
/* 804DE2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE2F4  4E 80 00 20 */	blr 
