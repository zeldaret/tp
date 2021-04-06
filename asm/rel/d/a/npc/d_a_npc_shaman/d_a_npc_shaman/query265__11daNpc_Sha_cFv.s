lbl_80AE52CC:
/* 80AE52CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE52D0  7C 08 02 A6 */	mflr r0
/* 80AE52D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE52D8  38 60 01 09 */	li r3, 0x109
/* 80AE52DC  4B 66 77 D1 */	bl daNpcT_chkEvtBit__FUl
/* 80AE52E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE52E4  7C 08 03 A6 */	mtlr r0
/* 80AE52E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE52EC  4E 80 00 20 */	blr 
