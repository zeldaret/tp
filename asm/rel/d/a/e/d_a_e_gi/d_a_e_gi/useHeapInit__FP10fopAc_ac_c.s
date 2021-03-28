lbl_806D025C:
/* 806D025C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D0260  7C 08 02 A6 */	mflr r0
/* 806D0264  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0268  4B FF FE 81 */	bl CreateHeap__8daE_GI_cFv
/* 806D026C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0270  7C 08 03 A6 */	mtlr r0
/* 806D0274  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0278  4E 80 00 20 */	blr 
