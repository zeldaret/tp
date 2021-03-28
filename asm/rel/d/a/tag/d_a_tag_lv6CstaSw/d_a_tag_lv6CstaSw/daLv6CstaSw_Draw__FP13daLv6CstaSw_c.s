lbl_80D5B6C0:
/* 80D5B6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B6C4  7C 08 02 A6 */	mflr r0
/* 80D5B6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B6CC  4B FF FF E5 */	bl Draw__13daLv6CstaSw_cFv
/* 80D5B6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B6D4  7C 08 03 A6 */	mtlr r0
/* 80D5B6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B6DC  4E 80 00 20 */	blr 
