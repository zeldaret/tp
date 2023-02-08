lbl_80BB7DE4:
/* 80BB7DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB7DE8  7C 08 02 A6 */	mflr r0
/* 80BB7DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7DF0  4B FF EF 95 */	bl draw__11daBkyRock_cFv
/* 80BB7DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB7DF8  7C 08 03 A6 */	mtlr r0
/* 80BB7DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB7E00  4E 80 00 20 */	blr 
