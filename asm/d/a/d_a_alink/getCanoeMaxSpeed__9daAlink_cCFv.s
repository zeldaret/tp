lbl_800F3BB0:
/* 800F3BB0  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800F3BB4  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F3BB8  40 82 00 14 */	bne lbl_800F3BCC
/* 800F3BBC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3BC0  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3BC4  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 800F3BC8  4E 80 00 20 */	blr 
lbl_800F3BCC:
/* 800F3BCC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_canoe_c0@ha
/* 800F3BD0  38 63 E6 10 */	addi r3, r3, m__19daAlinkHIO_canoe_c0@l
/* 800F3BD4  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 800F3BD8  4E 80 00 20 */	blr 
