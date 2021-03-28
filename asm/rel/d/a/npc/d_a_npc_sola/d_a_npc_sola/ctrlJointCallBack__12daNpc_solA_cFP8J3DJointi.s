lbl_80AED208:
/* 80AED208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AED20C  7C 08 02 A6 */	mflr r0
/* 80AED210  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AED214  7C 60 1B 78 */	mr r0, r3
/* 80AED218  2C 04 00 00 */	cmpwi r4, 0
/* 80AED21C  40 82 00 30 */	bne lbl_80AED24C
/* 80AED220  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80AED224  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80AED228  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AED22C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AED230  28 03 00 00 */	cmplwi r3, 0
/* 80AED234  41 82 00 18 */	beq lbl_80AED24C
/* 80AED238  7C 04 03 78 */	mr r4, r0
/* 80AED23C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AED240  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AED244  7D 89 03 A6 */	mtctr r12
/* 80AED248  4E 80 04 21 */	bctrl 
lbl_80AED24C:
/* 80AED24C  38 60 00 01 */	li r3, 1
/* 80AED250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AED254  7C 08 03 A6 */	mtlr r0
/* 80AED258  38 21 00 10 */	addi r1, r1, 0x10
/* 80AED25C  4E 80 00 20 */	blr 
