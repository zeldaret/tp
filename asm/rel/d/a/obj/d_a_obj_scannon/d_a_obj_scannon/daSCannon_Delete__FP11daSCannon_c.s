lbl_80CC8EB4:
/* 80CC8EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC8EB8  7C 08 02 A6 */	mflr r0
/* 80CC8EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC8EC0  4B FF E5 BD */	bl Delete__11daSCannon_cFv
/* 80CC8EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8EC8  7C 08 03 A6 */	mtlr r0
/* 80CC8ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8ED0  4E 80 00 20 */	blr 
