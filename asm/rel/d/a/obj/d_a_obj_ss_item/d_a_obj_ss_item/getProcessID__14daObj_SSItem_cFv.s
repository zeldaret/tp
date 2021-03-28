lbl_80CE77CC:
/* 80CE77CC  88 03 0B 0E */	lbz r0, 0xb0e(r3)
/* 80CE77D0  28 00 00 02 */	cmplwi r0, 2
/* 80CE77D4  40 82 00 0C */	bne lbl_80CE77E0
/* 80CE77D8  80 63 0B 04 */	lwz r3, 0xb04(r3)
/* 80CE77DC  4E 80 00 20 */	blr 
lbl_80CE77E0:
/* 80CE77E0  28 03 00 00 */	cmplwi r3, 0
/* 80CE77E4  41 82 00 0C */	beq lbl_80CE77F0
/* 80CE77E8  80 63 00 04 */	lwz r3, 4(r3)
/* 80CE77EC  4E 80 00 20 */	blr 
lbl_80CE77F0:
/* 80CE77F0  38 60 FF FF */	li r3, -1
/* 80CE77F4  4E 80 00 20 */	blr 
