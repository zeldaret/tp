lbl_80AED1E8:
/* 80AED1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AED1EC  7C 08 02 A6 */	mflr r0
/* 80AED1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AED1F4  4B FF FD 65 */	bl CreateHeap__12daNpc_solA_cFv
/* 80AED1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AED1FC  7C 08 03 A6 */	mtlr r0
/* 80AED200  38 21 00 10 */	addi r1, r1, 0x10
/* 80AED204  4E 80 00 20 */	blr 
