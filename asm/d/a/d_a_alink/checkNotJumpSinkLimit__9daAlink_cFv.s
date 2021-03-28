lbl_800B1B28:
/* 800B1B28  38 80 00 00 */	li r4, 0
/* 800B1B2C  C0 23 2B A8 */	lfs f1, 0x2ba8(r3)
/* 800B1B30  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800B1B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1B38  41 80 00 24 */	blt lbl_800B1B5C
/* 800B1B3C  88 03 2F BD */	lbz r0, 0x2fbd(r3)
/* 800B1B40  28 00 00 03 */	cmplwi r0, 3
/* 800B1B44  41 82 00 18 */	beq lbl_800B1B5C
/* 800B1B48  28 00 00 04 */	cmplwi r0, 4
/* 800B1B4C  40 82 00 14 */	bne lbl_800B1B60
/* 800B1B50  C0 02 94 34 */	lfs f0, lit_14624(r2)
/* 800B1B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1B58  40 80 00 08 */	bge lbl_800B1B60
lbl_800B1B5C:
/* 800B1B5C  38 80 00 01 */	li r4, 1
lbl_800B1B60:
/* 800B1B60  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800B1B64  4E 80 00 20 */	blr 
