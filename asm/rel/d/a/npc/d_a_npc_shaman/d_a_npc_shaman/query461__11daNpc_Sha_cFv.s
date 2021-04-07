lbl_80AE53C8:
/* 80AE53C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE53CC  7C 08 02 A6 */	mflr r0
/* 80AE53D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE53D4  38 60 01 CD */	li r3, 0x1cd
/* 80AE53D8  4B 66 76 D5 */	bl daNpcT_chkEvtBit__FUl
/* 80AE53DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE53E0  7C 08 03 A6 */	mtlr r0
/* 80AE53E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE53E8  4E 80 00 20 */	blr 
