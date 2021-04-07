lbl_80AE5380:
/* 80AE5380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5384  7C 08 02 A6 */	mflr r0
/* 80AE5388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE538C  38 60 01 0A */	li r3, 0x10a
/* 80AE5390  4B 66 77 1D */	bl daNpcT_chkEvtBit__FUl
/* 80AE5394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5398  7C 08 03 A6 */	mtlr r0
/* 80AE539C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE53A0  4E 80 00 20 */	blr 
