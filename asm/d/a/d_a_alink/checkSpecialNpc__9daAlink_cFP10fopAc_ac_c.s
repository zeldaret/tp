lbl_800DC5A4:
/* 800DC5A4  A8 03 00 08 */	lha r0, 8(r3)
/* 800DC5A8  38 80 00 00 */	li r4, 0
/* 800DC5AC  2C 00 02 41 */	cmpwi r0, 0x241
/* 800DC5B0  41 82 00 20 */	beq lbl_800DC5D0
/* 800DC5B4  2C 00 02 5A */	cmpwi r0, 0x25a
/* 800DC5B8  41 82 00 18 */	beq lbl_800DC5D0
/* 800DC5BC  2C 00 00 21 */	cmpwi r0, 0x21
/* 800DC5C0  40 82 00 14 */	bne lbl_800DC5D4
/* 800DC5C4  88 03 0A 7E */	lbz r0, 0xa7e(r3)
/* 800DC5C8  28 00 00 01 */	cmplwi r0, 1
/* 800DC5CC  41 82 00 08 */	beq lbl_800DC5D4
lbl_800DC5D0:
/* 800DC5D0  38 80 00 01 */	li r4, 1
lbl_800DC5D4:
/* 800DC5D4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800DC5D8  4E 80 00 20 */	blr 
