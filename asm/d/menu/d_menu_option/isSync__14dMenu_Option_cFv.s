lbl_801E3A7C:
/* 801E3A7C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 801E3A80  28 03 00 00 */	cmplwi r3, 0
/* 801E3A84  41 82 00 18 */	beq lbl_801E3A9C
/* 801E3A88  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801E3A8C  2C 00 00 00 */	cmpwi r0, 0
/* 801E3A90  40 82 00 0C */	bne lbl_801E3A9C
/* 801E3A94  38 60 00 00 */	li r3, 0
/* 801E3A98  4E 80 00 20 */	blr 
lbl_801E3A9C:
/* 801E3A9C  38 60 00 01 */	li r3, 1
/* 801E3AA0  4E 80 00 20 */	blr 
