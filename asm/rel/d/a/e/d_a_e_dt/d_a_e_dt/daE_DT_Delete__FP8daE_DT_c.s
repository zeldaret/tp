lbl_806B51F4:
/* 806B51F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B51F8  7C 08 02 A6 */	mflr r0
/* 806B51FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5200  4B FF FF 59 */	bl _delete__8daE_DT_cFv
/* 806B5204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5208  7C 08 03 A6 */	mtlr r0
/* 806B520C  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5210  4E 80 00 20 */	blr 
