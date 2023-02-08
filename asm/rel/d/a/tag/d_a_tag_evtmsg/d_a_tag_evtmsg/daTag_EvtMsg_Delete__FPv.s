lbl_8048D688:
/* 8048D688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D68C  7C 08 02 A6 */	mflr r0
/* 8048D690  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D694  4B FF F9 81 */	bl Delete__14daTag_EvtMsg_cFv
/* 8048D698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D69C  7C 08 03 A6 */	mtlr r0
/* 8048D6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D6A4  4E 80 00 20 */	blr 
