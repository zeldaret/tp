lbl_80AD6EBC:
/* 80AD6EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6EC0  7C 08 02 A6 */	mflr r0
/* 80AD6EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6EC8  4B FF ED 51 */	bl Draw__14daNpc_Seirei_cFv
/* 80AD6ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6ED0  7C 08 03 A6 */	mtlr r0
/* 80AD6ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6ED8  4E 80 00 20 */	blr 
