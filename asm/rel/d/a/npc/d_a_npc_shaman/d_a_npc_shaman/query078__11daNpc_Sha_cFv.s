lbl_80AE5338:
/* 80AE5338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE533C  7C 08 02 A6 */	mflr r0
/* 80AE5340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5344  38 60 00 4E */	li r3, 0x4e
/* 80AE5348  4B 66 77 65 */	bl daNpcT_chkEvtBit__FUl
/* 80AE534C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5350  7C 08 03 A6 */	mtlr r0
/* 80AE5354  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5358  4E 80 00 20 */	blr 
