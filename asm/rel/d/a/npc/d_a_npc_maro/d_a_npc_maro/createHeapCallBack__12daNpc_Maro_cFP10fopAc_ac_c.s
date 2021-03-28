lbl_8055BFA0:
/* 8055BFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BFA4  7C 08 02 A6 */	mflr r0
/* 8055BFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BFAC  4B FF F9 FD */	bl CreateHeap__12daNpc_Maro_cFv
/* 8055BFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BFB4  7C 08 03 A6 */	mtlr r0
/* 8055BFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BFBC  4E 80 00 20 */	blr 
