lbl_804890B0:
/* 804890B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804890B4  7C 08 02 A6 */	mflr r0
/* 804890B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804890BC  4B FF E4 7D */	bl create__15daTag_AllMato_cFv
/* 804890C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804890C4  7C 08 03 A6 */	mtlr r0
/* 804890C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804890CC  4E 80 00 20 */	blr 
