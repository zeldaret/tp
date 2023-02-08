lbl_80BBBE70:
/* 80BBBE70  38 00 00 00 */	li r0, 0
/* 80BBBE74  28 05 00 00 */	cmplwi r5, 0
/* 80BBBE78  41 82 00 1C */	beq lbl_80BBBE94
/* 80BBBE7C  A8 05 00 0E */	lha r0, 0xe(r5)
/* 80BBBE80  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80BBBE84  40 82 00 0C */	bne lbl_80BBBE90
/* 80BBBE88  88 05 05 68 */	lbz r0, 0x568(r5)
/* 80BBBE8C  48 00 00 08 */	b lbl_80BBBE94
lbl_80BBBE90:
/* 80BBBE90  38 00 00 01 */	li r0, 1
lbl_80BBBE94:
/* 80BBBE94  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BBBE98  90 03 0A 0C */	stw r0, 0xa0c(r3)
/* 80BBBE9C  4E 80 00 20 */	blr 
