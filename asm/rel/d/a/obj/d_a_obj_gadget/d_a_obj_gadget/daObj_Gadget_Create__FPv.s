lbl_80BF4778:
/* 80BF4778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF477C  7C 08 02 A6 */	mflr r0
/* 80BF4780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4784  4B FF E7 A5 */	bl create__14daObj_Gadget_cFv
/* 80BF4788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF478C  7C 08 03 A6 */	mtlr r0
/* 80BF4790  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4794  4E 80 00 20 */	blr 
