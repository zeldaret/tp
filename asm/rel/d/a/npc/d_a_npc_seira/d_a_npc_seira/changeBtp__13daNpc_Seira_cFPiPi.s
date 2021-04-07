lbl_80ACD6AC:
/* 80ACD6AC  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80ACD6B0  28 00 00 05 */	cmplwi r0, 5
/* 80ACD6B4  4C 82 00 20 */	bnelr 
/* 80ACD6B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80ACD6BC  38 03 FF BD */	addi r0, r3, -67
/* 80ACD6C0  28 00 00 0D */	cmplwi r0, 0xd
/* 80ACD6C4  4D 81 00 20 */	bgtlr 
/* 80ACD6C8  3C 60 80 AD */	lis r3, lit_5147@ha /* 0x80AD0890@ha */
/* 80ACD6CC  38 63 08 90 */	addi r3, r3, lit_5147@l /* 0x80AD0890@l */
/* 80ACD6D0  54 00 10 3A */	slwi r0, r0, 2
/* 80ACD6D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80ACD6D8  7C 09 03 A6 */	mtctr r0
/* 80ACD6DC  4E 80 04 20 */	bctr 
lbl_80ACD6E0:
/* 80ACD6E0  38 00 00 14 */	li r0, 0x14
/* 80ACD6E4  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD6E8  38 00 00 04 */	li r0, 4
/* 80ACD6EC  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD6F0  4E 80 00 20 */	blr 
lbl_80ACD6F4:
/* 80ACD6F4  38 00 00 15 */	li r0, 0x15
/* 80ACD6F8  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD6FC  38 00 00 04 */	li r0, 4
/* 80ACD700  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD704  4E 80 00 20 */	blr 
lbl_80ACD708:
/* 80ACD708  38 00 00 17 */	li r0, 0x17
/* 80ACD70C  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD710  38 00 00 04 */	li r0, 4
/* 80ACD714  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD718  4E 80 00 20 */	blr 
lbl_80ACD71C:
/* 80ACD71C  38 00 00 18 */	li r0, 0x18
/* 80ACD720  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD724  38 00 00 04 */	li r0, 4
/* 80ACD728  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD72C  4E 80 00 20 */	blr 
lbl_80ACD730:
/* 80ACD730  38 00 00 19 */	li r0, 0x19
/* 80ACD734  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD738  38 00 00 04 */	li r0, 4
/* 80ACD73C  90 05 00 00 */	stw r0, 0(r5)
lbl_80ACD740:
/* 80ACD740  4E 80 00 20 */	blr 
