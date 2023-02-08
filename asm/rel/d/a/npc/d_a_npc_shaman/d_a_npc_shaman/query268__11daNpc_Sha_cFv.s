lbl_80AE52F0:
/* 80AE52F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE52F4  7C 08 02 A6 */	mflr r0
/* 80AE52F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE52FC  38 60 01 0C */	li r3, 0x10c
/* 80AE5300  4B 66 77 AD */	bl daNpcT_chkEvtBit__FUl
/* 80AE5304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5308  7C 08 03 A6 */	mtlr r0
/* 80AE530C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5310  4E 80 00 20 */	blr 
