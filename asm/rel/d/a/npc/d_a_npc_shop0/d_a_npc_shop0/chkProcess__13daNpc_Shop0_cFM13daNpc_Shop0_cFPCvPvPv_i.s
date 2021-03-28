lbl_80AEB7F0:
/* 80AEB7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB7F4  7C 08 02 A6 */	mflr r0
/* 80AEB7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB7FC  7C 65 1B 78 */	mr r5, r3
/* 80AEB800  7C 83 23 78 */	mr r3, r4
/* 80AEB804  38 85 09 DC */	addi r4, r5, 0x9dc
/* 80AEB808  4B 87 68 40 */	b __ptmf_cmpr
/* 80AEB80C  7C 60 00 34 */	cntlzw r0, r3
/* 80AEB810  54 03 D9 7E */	srwi r3, r0, 5
/* 80AEB814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB818  7C 08 03 A6 */	mtlr r0
/* 80AEB81C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB820  4E 80 00 20 */	blr 
