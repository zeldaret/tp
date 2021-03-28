lbl_8019BF5C:
/* 8019BF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019BF60  7C 08 02 A6 */	mflr r0
/* 8019BF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BF68  4B FF F3 8D */	bl _execute__11dGameover_cFv
/* 8019BF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019BF70  7C 08 03 A6 */	mtlr r0
/* 8019BF74  38 21 00 10 */	addi r1, r1, 0x10
/* 8019BF78  4E 80 00 20 */	blr 
