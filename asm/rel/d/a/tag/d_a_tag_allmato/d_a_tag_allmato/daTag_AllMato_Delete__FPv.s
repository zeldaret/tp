lbl_804890D0:
/* 804890D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804890D4  7C 08 02 A6 */	mflr r0
/* 804890D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804890DC  4B FF E5 D5 */	bl Delete__15daTag_AllMato_cFv
/* 804890E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804890E4  7C 08 03 A6 */	mtlr r0
/* 804890E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804890EC  4E 80 00 20 */	blr 
