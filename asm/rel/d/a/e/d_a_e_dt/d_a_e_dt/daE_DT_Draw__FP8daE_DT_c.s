lbl_806AE5A8:
/* 806AE5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AE5AC  7C 08 02 A6 */	mflr r0
/* 806AE5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AE5B4  4B FF F7 C9 */	bl draw__8daE_DT_cFv
/* 806AE5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AE5BC  7C 08 03 A6 */	mtlr r0
/* 806AE5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806AE5C4  4E 80 00 20 */	blr 
