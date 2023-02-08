lbl_80540ED8:
/* 80540ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540EDC  7C 08 02 A6 */	mflr r0
/* 80540EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540EE4  4B FF F4 09 */	bl Draw__19daNpc_FairySeirei_cFv
/* 80540EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540EEC  7C 08 03 A6 */	mtlr r0
/* 80540EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80540EF4  4E 80 00 20 */	blr 
