lbl_806B85A0:
/* 806B85A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B85A4  7C 08 02 A6 */	mflr r0
/* 806B85A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B85AC  4B FF FF 6D */	bl execute__8daE_FB_cFv
/* 806B85B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B85B4  7C 08 03 A6 */	mtlr r0
/* 806B85B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806B85BC  4E 80 00 20 */	blr 
