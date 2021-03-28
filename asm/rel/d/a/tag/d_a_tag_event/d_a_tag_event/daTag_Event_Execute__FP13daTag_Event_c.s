lbl_8048B7AC:
/* 8048B7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B7B0  7C 08 02 A6 */	mflr r0
/* 8048B7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B7B8  4B FF FF 1D */	bl execute__13daTag_Event_cFv
/* 8048B7BC  38 60 00 01 */	li r3, 1
/* 8048B7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B7C4  7C 08 03 A6 */	mtlr r0
/* 8048B7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B7CC  4E 80 00 20 */	blr 
