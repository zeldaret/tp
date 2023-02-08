lbl_804900A0:
/* 804900A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804900A4  7C 08 02 A6 */	mflr r0
/* 804900A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804900AC  4B FF F7 CD */	bl create__11daTag_Msg_cFv
/* 804900B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804900B4  7C 08 03 A6 */	mtlr r0
/* 804900B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804900BC  4E 80 00 20 */	blr 
