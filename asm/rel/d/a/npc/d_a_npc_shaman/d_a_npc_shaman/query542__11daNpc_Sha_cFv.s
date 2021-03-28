lbl_80AE53A4:
/* 80AE53A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE53A8  7C 08 02 A6 */	mflr r0
/* 80AE53AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE53B0  38 60 02 1E */	li r3, 0x21e
/* 80AE53B4  4B 66 76 F8 */	b daNpcT_chkEvtBit__FUl
/* 80AE53B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE53BC  7C 08 03 A6 */	mtlr r0
/* 80AE53C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE53C4  4E 80 00 20 */	blr 
