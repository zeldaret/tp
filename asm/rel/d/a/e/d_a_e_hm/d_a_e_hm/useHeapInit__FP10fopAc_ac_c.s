lbl_806E06A0:
/* 806E06A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E06A4  7C 08 02 A6 */	mflr r0
/* 806E06A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E06AC  4B FF FD 91 */	bl CreateHeap__8daE_HM_cFv
/* 806E06B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E06B4  7C 08 03 A6 */	mtlr r0
/* 806E06B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E06BC  4E 80 00 20 */	blr 
