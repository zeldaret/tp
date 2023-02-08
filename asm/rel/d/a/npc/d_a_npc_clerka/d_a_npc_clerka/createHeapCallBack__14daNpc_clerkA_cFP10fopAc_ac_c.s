lbl_80992EF0:
/* 80992EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992EF4  7C 08 02 A6 */	mflr r0
/* 80992EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80992EFC  4B FF FA 19 */	bl CreateHeap__14daNpc_clerkA_cFv
/* 80992F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992F04  7C 08 03 A6 */	mtlr r0
/* 80992F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80992F0C  4E 80 00 20 */	blr 
