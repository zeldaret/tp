lbl_800F3C18:
/* 800F3C18  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800F3C1C  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F3C20  40 82 00 14 */	bne lbl_800F3C34
/* 800F3C24  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3C28  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3C2C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 800F3C30  4E 80 00 20 */	blr 
lbl_800F3C34:
/* 800F3C34  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3C38  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3C3C  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 800F3C40  4E 80 00 20 */	blr 
