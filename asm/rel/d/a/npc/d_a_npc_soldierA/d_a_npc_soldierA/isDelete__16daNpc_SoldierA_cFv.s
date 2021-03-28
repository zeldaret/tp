lbl_80AF0B7C:
/* 80AF0B7C  88 03 0E 18 */	lbz r0, 0xe18(r3)
/* 80AF0B80  28 00 00 00 */	cmplwi r0, 0
/* 80AF0B84  41 82 00 1C */	beq lbl_80AF0BA0
/* 80AF0B88  28 00 00 01 */	cmplwi r0, 1
/* 80AF0B8C  41 82 00 14 */	beq lbl_80AF0BA0
/* 80AF0B90  28 00 00 02 */	cmplwi r0, 2
/* 80AF0B94  41 82 00 0C */	beq lbl_80AF0BA0
/* 80AF0B98  28 00 00 03 */	cmplwi r0, 3
/* 80AF0B9C  40 82 00 0C */	bne lbl_80AF0BA8
lbl_80AF0BA0:
/* 80AF0BA0  38 60 00 00 */	li r3, 0
/* 80AF0BA4  4E 80 00 20 */	blr 
lbl_80AF0BA8:
/* 80AF0BA8  38 60 00 01 */	li r3, 1
/* 80AF0BAC  4E 80 00 20 */	blr 
