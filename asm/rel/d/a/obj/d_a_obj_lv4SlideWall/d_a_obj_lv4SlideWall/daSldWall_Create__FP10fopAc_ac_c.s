lbl_80C625DC:
/* 80C625DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C625E0  7C 08 02 A6 */	mflr r0
/* 80C625E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C625E8  4B FF F9 D1 */	bl create__11daSldWall_cFv
/* 80C625EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C625F0  7C 08 03 A6 */	mtlr r0
/* 80C625F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C625F8  4E 80 00 20 */	blr 
