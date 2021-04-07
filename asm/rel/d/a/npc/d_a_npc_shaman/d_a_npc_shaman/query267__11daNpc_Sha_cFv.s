lbl_80AE5314:
/* 80AE5314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5318  7C 08 02 A6 */	mflr r0
/* 80AE531C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5320  38 60 01 0B */	li r3, 0x10b
/* 80AE5324  4B 66 77 89 */	bl daNpcT_chkEvtBit__FUl
/* 80AE5328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE532C  7C 08 03 A6 */	mtlr r0
/* 80AE5330  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5334  4E 80 00 20 */	blr 
