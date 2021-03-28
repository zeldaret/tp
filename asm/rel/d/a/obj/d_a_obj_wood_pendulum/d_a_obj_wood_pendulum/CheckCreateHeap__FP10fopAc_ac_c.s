lbl_80D393F8:
/* 80D393F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D393FC  7C 08 02 A6 */	mflr r0
/* 80D39400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39404  48 00 01 C5 */	bl CreateHeap__13daObjWPndlm_cFv
/* 80D39408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3940C  7C 08 03 A6 */	mtlr r0
/* 80D39410  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39414  4E 80 00 20 */	blr 
