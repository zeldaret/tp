lbl_80AB4EA8:
/* 80AB4EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4EAC  7C 08 02 A6 */	mflr r0
/* 80AB4EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4EB4  4B FF E7 5D */	bl Delete__11daNpcPray_cFv
/* 80AB4EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB4EBC  7C 08 03 A6 */	mtlr r0
/* 80AB4EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB4EC4  4E 80 00 20 */	blr 
