lbl_80540EB8:
/* 80540EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540EBC  7C 08 02 A6 */	mflr r0
/* 80540EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540EC4  4B FF F4 09 */	bl Execute__19daNpc_FairySeirei_cFv
/* 80540EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540ECC  7C 08 03 A6 */	mtlr r0
/* 80540ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80540ED4  4E 80 00 20 */	blr 
