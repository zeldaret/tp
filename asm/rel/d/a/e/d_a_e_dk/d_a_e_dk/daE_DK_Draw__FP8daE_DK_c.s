lbl_806AA5A8:
/* 806AA5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AA5AC  7C 08 02 A6 */	mflr r0
/* 806AA5B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AA5B4  4B FF FC 75 */	bl draw__8daE_DK_cFv
/* 806AA5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AA5BC  7C 08 03 A6 */	mtlr r0
/* 806AA5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 806AA5C4  4E 80 00 20 */	blr 
