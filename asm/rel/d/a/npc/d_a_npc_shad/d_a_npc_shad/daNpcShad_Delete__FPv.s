lbl_80AE0124:
/* 80AE0124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE0128  7C 08 02 A6 */	mflr r0
/* 80AE012C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0130  4B FF 8F B1 */	bl Delete__11daNpcShad_cFv
/* 80AE0134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE0138  7C 08 03 A6 */	mtlr r0
/* 80AE013C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE0140  4E 80 00 20 */	blr 
