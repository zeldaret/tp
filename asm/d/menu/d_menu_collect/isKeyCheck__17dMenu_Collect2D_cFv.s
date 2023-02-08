lbl_801B5F84:
/* 801B5F84  88 03 02 2C */	lbz r0, 0x22c(r3)
/* 801B5F88  28 00 00 00 */	cmplwi r0, 0
/* 801B5F8C  40 82 00 10 */	bne lbl_801B5F9C
/* 801B5F90  88 03 02 5F */	lbz r0, 0x25f(r3)
/* 801B5F94  28 00 00 00 */	cmplwi r0, 0
/* 801B5F98  41 82 00 0C */	beq lbl_801B5FA4
lbl_801B5F9C:
/* 801B5F9C  38 60 00 01 */	li r3, 1
/* 801B5FA0  4E 80 00 20 */	blr 
lbl_801B5FA4:
/* 801B5FA4  38 60 00 00 */	li r3, 0
/* 801B5FA8  4E 80 00 20 */	blr 
