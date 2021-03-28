lbl_80BB7DC4:
/* 80BB7DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB7DC8  7C 08 02 A6 */	mflr r0
/* 80BB7DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7DD0  4B FF EF 91 */	bl execute__11daBkyRock_cFv
/* 80BB7DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB7DD8  7C 08 03 A6 */	mtlr r0
/* 80BB7DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB7DE0  4E 80 00 20 */	blr 
