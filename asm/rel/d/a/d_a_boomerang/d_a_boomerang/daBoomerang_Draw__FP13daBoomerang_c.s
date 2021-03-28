lbl_8049F5D4:
/* 8049F5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F5D8  7C 08 02 A6 */	mflr r0
/* 8049F5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F5E0  4B FF FD BD */	bl draw__13daBoomerang_cFv
/* 8049F5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F5E8  7C 08 03 A6 */	mtlr r0
/* 8049F5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F5F0  4E 80 00 20 */	blr 
