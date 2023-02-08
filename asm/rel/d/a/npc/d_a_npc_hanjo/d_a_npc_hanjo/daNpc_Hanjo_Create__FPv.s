lbl_809FED58:
/* 809FED58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FED5C  7C 08 02 A6 */	mflr r0
/* 809FED60  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FED64  4B FF A5 15 */	bl create__13daNpc_Hanjo_cFv
/* 809FED68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FED6C  7C 08 03 A6 */	mtlr r0
/* 809FED70  38 21 00 10 */	addi r1, r1, 0x10
/* 809FED74  4E 80 00 20 */	blr 
