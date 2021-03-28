lbl_80AE53EC:
/* 80AE53EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE53F0  7C 08 02 A6 */	mflr r0
/* 80AE53F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE53F8  38 60 01 20 */	li r3, 0x120
/* 80AE53FC  4B 66 76 B0 */	b daNpcT_chkEvtBit__FUl
/* 80AE5400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5404  7C 08 03 A6 */	mtlr r0
/* 80AE5408  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE540C  4E 80 00 20 */	blr 
