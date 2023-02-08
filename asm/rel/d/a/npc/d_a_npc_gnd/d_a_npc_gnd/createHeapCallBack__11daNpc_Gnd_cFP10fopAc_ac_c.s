lbl_809BBF44:
/* 809BBF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BBF48  7C 08 02 A6 */	mflr r0
/* 809BBF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BBF50  4B FF FA 85 */	bl CreateHeap__11daNpc_Gnd_cFv
/* 809BBF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BBF58  7C 08 03 A6 */	mtlr r0
/* 809BBF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BBF60  4E 80 00 20 */	blr 
