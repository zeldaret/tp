lbl_8075FB2C:
/* 8075FB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075FB30  7C 08 02 A6 */	mflr r0
/* 8075FB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075FB38  4B FF FF 51 */	bl _delete__8daE_PZ_cFv
/* 8075FB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075FB40  7C 08 03 A6 */	mtlr r0
/* 8075FB44  38 21 00 10 */	addi r1, r1, 0x10
/* 8075FB48  4E 80 00 20 */	blr 
