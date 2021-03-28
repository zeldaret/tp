lbl_8048D6A8:
/* 8048D6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D6AC  7C 08 02 A6 */	mflr r0
/* 8048D6B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D6B4  4B FF F9 69 */	bl Execute__14daTag_EvtMsg_cFv
/* 8048D6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D6BC  7C 08 03 A6 */	mtlr r0
/* 8048D6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D6C4  4E 80 00 20 */	blr 
