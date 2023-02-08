lbl_80CD8178:
/* 80CD8178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD817C  7C 08 02 A6 */	mflr r0
/* 80CD8180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD8184  4B FF FF 69 */	bl draw__14daItemShield_cFv
/* 80CD8188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD818C  7C 08 03 A6 */	mtlr r0
/* 80CD8190  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD8194  4E 80 00 20 */	blr 
