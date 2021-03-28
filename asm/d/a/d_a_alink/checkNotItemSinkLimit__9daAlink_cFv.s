lbl_800B1B68:
/* 800B1B68  38 00 00 00 */	li r0, 0
/* 800B1B6C  C0 23 2B A8 */	lfs f1, 0x2ba8(r3)
/* 800B1B70  C0 02 95 E8 */	lfs f0, lit_28045(r2)
/* 800B1B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B1B78  40 80 00 2C */	bge lbl_800B1BA4
/* 800B1B7C  88 63 2F BD */	lbz r3, 0x2fbd(r3)
/* 800B1B80  28 03 00 01 */	cmplwi r3, 1
/* 800B1B84  41 82 00 1C */	beq lbl_800B1BA0
/* 800B1B88  28 03 00 02 */	cmplwi r3, 2
/* 800B1B8C  41 82 00 14 */	beq lbl_800B1BA0
/* 800B1B90  28 03 00 03 */	cmplwi r3, 3
/* 800B1B94  41 82 00 0C */	beq lbl_800B1BA0
/* 800B1B98  28 03 00 04 */	cmplwi r3, 4
/* 800B1B9C  40 82 00 08 */	bne lbl_800B1BA4
lbl_800B1BA0:
/* 800B1BA0  38 00 00 01 */	li r0, 1
lbl_800B1BA4:
/* 800B1BA4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 800B1BA8  4E 80 00 20 */	blr 
