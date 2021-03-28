lbl_80C95920:
/* 80C95920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95924  7C 08 02 A6 */	mflr r0
/* 80C95928  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9592C  4B FF ED 7D */	bl Execute__11daObj_Mie_cFv
/* 80C95930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95934  7C 08 03 A6 */	mtlr r0
/* 80C95938  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9593C  4E 80 00 20 */	blr 
