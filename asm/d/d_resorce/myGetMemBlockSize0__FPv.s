lbl_8003BD00:
/* 8003BD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003BD04  7C 08 02 A6 */	mflr r0
/* 8003BD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003BD0C  4B FF FF 8D */	bl myGetMemBlockSize__FPv
/* 8003BD10  2C 03 00 00 */	cmpwi r3, 0
/* 8003BD14  40 80 00 08 */	bge lbl_8003BD1C
/* 8003BD18  38 60 00 00 */	li r3, 0
lbl_8003BD1C:
/* 8003BD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003BD20  7C 08 03 A6 */	mtlr r0
/* 8003BD24  38 21 00 10 */	addi r1, r1, 0x10
/* 8003BD28  4E 80 00 20 */	blr 
