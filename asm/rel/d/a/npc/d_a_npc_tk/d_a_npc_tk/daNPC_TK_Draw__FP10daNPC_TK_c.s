lbl_80B016B4:
/* 80B016B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B016B8  7C 08 02 A6 */	mflr r0
/* 80B016BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B016C0  4B FF FE D9 */	bl draw__10daNPC_TK_cFv
/* 80B016C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B016C8  7C 08 03 A6 */	mtlr r0
/* 80B016CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B016D0  4E 80 00 20 */	blr 
