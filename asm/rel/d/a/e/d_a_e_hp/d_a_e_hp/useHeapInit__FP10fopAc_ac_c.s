lbl_806E94FC:
/* 806E94FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9500  7C 08 02 A6 */	mflr r0
/* 806E9504  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9508  4B FF FD 39 */	bl CreateHeap__8daE_HP_cFv
/* 806E950C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9510  7C 08 03 A6 */	mtlr r0
/* 806E9514  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9518  4E 80 00 20 */	blr 
