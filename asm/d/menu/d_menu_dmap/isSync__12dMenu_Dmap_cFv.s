lbl_801BF410:
/* 801BF410  80 83 00 08 */	lwz r4, 8(r3)
/* 801BF414  28 04 00 00 */	cmplwi r4, 0
/* 801BF418  41 82 00 24 */	beq lbl_801BF43C
/* 801BF41C  80 84 0D 1C */	lwz r4, 0xd1c(r4)
/* 801BF420  28 04 00 00 */	cmplwi r4, 0
/* 801BF424  41 82 00 18 */	beq lbl_801BF43C
/* 801BF428  88 04 00 0C */	lbz r0, 0xc(r4)
/* 801BF42C  2C 00 00 00 */	cmpwi r0, 0
/* 801BF430  40 82 00 0C */	bne lbl_801BF43C
/* 801BF434  38 60 00 00 */	li r3, 0
/* 801BF438  4E 80 00 20 */	blr 
lbl_801BF43C:
/* 801BF43C  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 801BF440  28 03 00 00 */	cmplwi r3, 0
/* 801BF444  41 82 00 18 */	beq lbl_801BF45C
/* 801BF448  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801BF44C  2C 00 00 00 */	cmpwi r0, 0
/* 801BF450  40 82 00 0C */	bne lbl_801BF45C
/* 801BF454  38 60 00 00 */	li r3, 0
/* 801BF458  4E 80 00 20 */	blr 
lbl_801BF45C:
/* 801BF45C  38 60 00 01 */	li r3, 1
/* 801BF460  4E 80 00 20 */	blr 
