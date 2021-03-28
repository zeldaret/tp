lbl_800E3D94:
/* 800E3D94  38 80 00 00 */	li r4, 0
/* 800E3D98  80 63 28 30 */	lwz r3, 0x2830(r3)
/* 800E3D9C  28 03 00 00 */	cmplwi r3, 0
/* 800E3DA0  41 82 00 14 */	beq lbl_800E3DB4
/* 800E3DA4  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 800E3DA8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800E3DAC  41 82 00 08 */	beq lbl_800E3DB4
/* 800E3DB0  38 80 00 01 */	li r4, 1
lbl_800E3DB4:
/* 800E3DB4  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 800E3DB8  4E 80 00 20 */	blr 
