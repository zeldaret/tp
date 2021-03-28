lbl_800F3BEC:
/* 800F3BEC  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800F3BF0  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F3BF4  40 82 00 14 */	bne lbl_800F3C08
/* 800F3BF8  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3BFC  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3C00  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 800F3C04  4E 80 00 20 */	blr 
lbl_800F3C08:
/* 800F3C08  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3C0C  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3C10  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 800F3C14  4E 80 00 20 */	blr 
