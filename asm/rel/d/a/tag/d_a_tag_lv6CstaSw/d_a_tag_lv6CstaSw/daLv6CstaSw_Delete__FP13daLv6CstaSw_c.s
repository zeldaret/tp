lbl_80D5B700:
/* 80D5B700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B704  7C 08 02 A6 */	mflr r0
/* 80D5B708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B70C  4B FF FF AD */	bl Delete__13daLv6CstaSw_cFv
/* 80D5B710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B714  7C 08 03 A6 */	mtlr r0
/* 80D5B718  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B71C  4E 80 00 20 */	blr 
