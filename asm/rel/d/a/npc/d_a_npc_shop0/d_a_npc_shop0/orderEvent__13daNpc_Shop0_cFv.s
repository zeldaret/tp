lbl_80AEB5E8:
/* 80AEB5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB5EC  7C 08 02 A6 */	mflr r0
/* 80AEB5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB5F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB5F8  7C 7F 1B 78 */	mr r31, r3
/* 80AEB5FC  4B FF FB CD */	bl getFlowNodeNum__13daNpc_Shop0_cFv
/* 80AEB600  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB604  41 80 00 1C */	blt lbl_80AEB620
/* 80AEB608  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80AEB60C  28 00 00 0A */	cmplwi r0, 0xa
/* 80AEB610  40 82 00 10 */	bne lbl_80AEB620
/* 80AEB614  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80AEB618  60 00 00 01 */	ori r0, r0, 1
/* 80AEB61C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80AEB620:
/* 80AEB620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB628  7C 08 03 A6 */	mtlr r0
/* 80AEB62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB630  4E 80 00 20 */	blr 
