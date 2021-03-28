lbl_809CCEC0:
/* 809CCEC0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809CCEC4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809CCEC8  2C 00 00 02 */	cmpwi r0, 2
/* 809CCECC  41 82 00 44 */	beq lbl_809CCF10
/* 809CCED0  40 80 00 14 */	bge lbl_809CCEE4
/* 809CCED4  2C 00 00 00 */	cmpwi r0, 0
/* 809CCED8  41 82 00 1C */	beq lbl_809CCEF4
/* 809CCEDC  40 80 00 2C */	bge lbl_809CCF08
/* 809CCEE0  48 00 00 14 */	b lbl_809CCEF4
lbl_809CCEE4:
/* 809CCEE4  2C 00 00 04 */	cmpwi r0, 4
/* 809CCEE8  41 82 00 48 */	beq lbl_809CCF30
/* 809CCEEC  40 80 00 08 */	bge lbl_809CCEF4
/* 809CCEF0  48 00 00 38 */	b lbl_809CCF28
lbl_809CCEF4:
/* 809CCEF4  88 63 09 F4 */	lbz r3, 0x9f4(r3)
/* 809CCEF8  30 03 FF FF */	addic r0, r3, -1
/* 809CCEFC  7C 00 19 10 */	subfe r0, r0, r3
/* 809CCF00  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 809CCF04  4E 80 00 20 */	blr 
lbl_809CCF08:
/* 809CCF08  38 60 00 02 */	li r3, 2
/* 809CCF0C  4E 80 00 20 */	blr 
lbl_809CCF10:
/* 809CCF10  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 809CCF14  28 00 00 00 */	cmplwi r0, 0
/* 809CCF18  38 60 00 03 */	li r3, 3
/* 809CCF1C  4D 82 00 20 */	beqlr 
/* 809CCF20  38 60 00 01 */	li r3, 1
/* 809CCF24  4E 80 00 20 */	blr 
lbl_809CCF28:
/* 809CCF28  38 60 00 04 */	li r3, 4
/* 809CCF2C  4E 80 00 20 */	blr 
lbl_809CCF30:
/* 809CCF30  38 60 00 05 */	li r3, 5
/* 809CCF34  4E 80 00 20 */	blr 
