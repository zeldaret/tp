lbl_80ACA3A0:
/* 80ACA3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA3A4  7C 08 02 A6 */	mflr r0
/* 80ACA3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA3AC  38 63 0E 54 */	addi r3, r3, 0xe54
/* 80ACA3B0  4B 89 7C 98 */	b __ptmf_cmpr
/* 80ACA3B4  7C 60 00 34 */	cntlzw r0, r3
/* 80ACA3B8  54 03 D9 7E */	srwi r3, r0, 5
/* 80ACA3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA3C0  7C 08 03 A6 */	mtlr r0
/* 80ACA3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA3C8  4E 80 00 20 */	blr 
