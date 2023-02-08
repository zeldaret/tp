lbl_80BE8DD4:
/* 80BE8DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8DD8  7C 08 02 A6 */	mflr r0
/* 80BE8DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8DE0  4B FF FF B9 */	bl Draw__13daFireWood2_cFv
/* 80BE8DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8DE8  7C 08 03 A6 */	mtlr r0
/* 80BE8DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8DF0  4E 80 00 20 */	blr 
