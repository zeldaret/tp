lbl_80B928AC:
/* 80B928AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B928B0  7C 08 02 A6 */	mflr r0
/* 80B928B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B928B8  4B FF BF AD */	bl Execute__11daNpc_zrC_cFv
/* 80B928BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B928C0  7C 08 03 A6 */	mtlr r0
/* 80B928C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B928C8  4E 80 00 20 */	blr 
