lbl_806899EC:
/* 806899EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806899F0  7C 08 02 A6 */	mflr r0
/* 806899F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806899F8  4B FF FF 81 */	bl _delete__8daE_BG_cFv
/* 806899FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80689A00  7C 08 03 A6 */	mtlr r0
/* 80689A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80689A08  4E 80 00 20 */	blr 
