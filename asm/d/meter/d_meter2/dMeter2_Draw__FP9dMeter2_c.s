lbl_80225AA0:
/* 80225AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225AA4  7C 08 02 A6 */	mflr r0
/* 80225AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225AAC  4B FF 98 C5 */	bl _draw__9dMeter2_cFv
/* 80225AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225AB4  7C 08 03 A6 */	mtlr r0
/* 80225AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80225ABC  4E 80 00 20 */	blr 
