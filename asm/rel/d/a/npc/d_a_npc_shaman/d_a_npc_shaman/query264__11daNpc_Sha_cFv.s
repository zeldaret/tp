lbl_80AE535C:
/* 80AE535C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5360  7C 08 02 A6 */	mflr r0
/* 80AE5364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5368  38 60 01 08 */	li r3, 0x108
/* 80AE536C  4B 66 77 41 */	bl daNpcT_chkEvtBit__FUl
/* 80AE5370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5374  7C 08 03 A6 */	mtlr r0
/* 80AE5378  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE537C  4E 80 00 20 */	blr 
