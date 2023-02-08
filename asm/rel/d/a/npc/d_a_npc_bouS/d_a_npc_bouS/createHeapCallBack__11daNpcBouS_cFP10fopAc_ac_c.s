lbl_809742BC:
/* 809742BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809742C0  7C 08 02 A6 */	mflr r0
/* 809742C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809742C8  4B FF F8 D5 */	bl CreateHeap__11daNpcBouS_cFv
/* 809742CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809742D0  7C 08 03 A6 */	mtlr r0
/* 809742D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809742D8  4E 80 00 20 */	blr 
