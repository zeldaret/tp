lbl_80ACD600:
/* 80ACD600  88 03 10 C1 */	lbz r0, 0x10c1(r3)
/* 80ACD604  28 00 00 05 */	cmplwi r0, 5
/* 80ACD608  4C 82 00 20 */	bnelr 
/* 80ACD60C  80 64 00 00 */	lwz r3, 0(r4)
/* 80ACD610  38 03 FF F9 */	addi r0, r3, -7
/* 80ACD614  28 00 00 0A */	cmplwi r0, 0xa
/* 80ACD618  4D 81 00 20 */	bgtlr 
/* 80ACD61C  3C 60 80 AD */	lis r3, lit_5133@ha /* 0x80AD0864@ha */
/* 80ACD620  38 63 08 64 */	addi r3, r3, lit_5133@l /* 0x80AD0864@l */
/* 80ACD624  54 00 10 3A */	slwi r0, r0, 2
/* 80ACD628  7C 03 00 2E */	lwzx r0, r3, r0
/* 80ACD62C  7C 09 03 A6 */	mtctr r0
/* 80ACD630  4E 80 04 20 */	bctr 
lbl_80ACD634:
/* 80ACD634  38 00 00 05 */	li r0, 5
/* 80ACD638  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD63C  38 00 00 04 */	li r0, 4
/* 80ACD640  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD644  4E 80 00 20 */	blr 
lbl_80ACD648:
/* 80ACD648  38 00 00 06 */	li r0, 6
/* 80ACD64C  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD650  38 00 00 04 */	li r0, 4
/* 80ACD654  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD658  4E 80 00 20 */	blr 
lbl_80ACD65C:
/* 80ACD65C  38 00 00 07 */	li r0, 7
/* 80ACD660  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD664  38 00 00 04 */	li r0, 4
/* 80ACD668  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD66C  4E 80 00 20 */	blr 
lbl_80ACD670:
/* 80ACD670  38 00 00 08 */	li r0, 8
/* 80ACD674  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD678  38 00 00 04 */	li r0, 4
/* 80ACD67C  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD680  4E 80 00 20 */	blr 
lbl_80ACD684:
/* 80ACD684  38 00 00 09 */	li r0, 9
/* 80ACD688  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD68C  38 00 00 04 */	li r0, 4
/* 80ACD690  90 05 00 00 */	stw r0, 0(r5)
/* 80ACD694  4E 80 00 20 */	blr 
lbl_80ACD698:
/* 80ACD698  38 00 00 0A */	li r0, 0xa
/* 80ACD69C  90 04 00 00 */	stw r0, 0(r4)
/* 80ACD6A0  38 00 00 04 */	li r0, 4
/* 80ACD6A4  90 05 00 00 */	stw r0, 0(r5)
lbl_80ACD6A8:
/* 80ACD6A8  4E 80 00 20 */	blr 
