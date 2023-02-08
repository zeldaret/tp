lbl_80A4FE4C:
/* 80A4FE4C  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80A4FE50  7C 00 07 75 */	extsb. r0, r0
/* 80A4FE54  40 82 00 5C */	bne lbl_80A4FEB0
/* 80A4FE58  38 80 00 00 */	li r4, 0
/* 80A4FE5C  3C A0 80 A6 */	lis r5, saru_p@ha /* 0x80A5E478@ha */
/* 80A4FE60  38 E5 E4 78 */	addi r7, r5, saru_p@l /* 0x80A5E478@l */
/* 80A4FE64  38 00 00 02 */	li r0, 2
/* 80A4FE68  7C 09 03 A6 */	mtctr r0
lbl_80A4FE6C:
/* 80A4FE6C  7C A7 20 2E */	lwzx r5, r7, r4
/* 80A4FE70  28 05 00 00 */	cmplwi r5, 0
/* 80A4FE74  41 82 00 2C */	beq lbl_80A4FEA0
/* 80A4FE78  88 05 05 B5 */	lbz r0, 0x5b5(r5)
/* 80A4FE7C  28 00 00 00 */	cmplwi r0, 0
/* 80A4FE80  41 82 00 20 */	beq lbl_80A4FEA0
/* 80A4FE84  88 C3 0B 40 */	lbz r6, 0xb40(r3)
/* 80A4FE88  80 A5 09 34 */	lwz r5, 0x934(r5)
/* 80A4FE8C  88 05 05 70 */	lbz r0, 0x570(r5)
/* 80A4FE90  7C 06 00 40 */	cmplw r6, r0
/* 80A4FE94  40 82 00 0C */	bne lbl_80A4FEA0
/* 80A4FE98  38 60 00 01 */	li r3, 1
/* 80A4FE9C  4E 80 00 20 */	blr 
lbl_80A4FEA0:
/* 80A4FEA0  38 84 00 04 */	addi r4, r4, 4
/* 80A4FEA4  42 00 FF C8 */	bdnz lbl_80A4FE6C
/* 80A4FEA8  38 60 00 00 */	li r3, 0
/* 80A4FEAC  4E 80 00 20 */	blr 
lbl_80A4FEB0:
/* 80A4FEB0  38 60 00 00 */	li r3, 0
/* 80A4FEB4  3C A0 80 A6 */	lis r5, saru_p@ha /* 0x80A5E478@ha */
/* 80A4FEB8  38 A5 E4 78 */	addi r5, r5, saru_p@l /* 0x80A5E478@l */
/* 80A4FEBC  7C 89 03 A6 */	mtctr r4
/* 80A4FEC0  2C 04 00 00 */	cmpwi r4, 0
/* 80A4FEC4  40 81 00 24 */	ble lbl_80A4FEE8
lbl_80A4FEC8:
/* 80A4FEC8  7C 85 18 2E */	lwzx r4, r5, r3
/* 80A4FECC  88 04 05 B5 */	lbz r0, 0x5b5(r4)
/* 80A4FED0  28 00 00 00 */	cmplwi r0, 0
/* 80A4FED4  40 82 00 0C */	bne lbl_80A4FEE0
/* 80A4FED8  38 60 00 00 */	li r3, 0
/* 80A4FEDC  4E 80 00 20 */	blr 
lbl_80A4FEE0:
/* 80A4FEE0  38 63 00 04 */	addi r3, r3, 4
/* 80A4FEE4  42 00 FF E4 */	bdnz lbl_80A4FEC8
lbl_80A4FEE8:
/* 80A4FEE8  38 60 00 01 */	li r3, 1
/* 80A4FEEC  4E 80 00 20 */	blr 
