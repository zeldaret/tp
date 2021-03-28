lbl_8026EC88:
/* 8026EC88  C0 03 00 00 */	lfs f0, 0(r3)
/* 8026EC8C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026EC90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026EC94  41 81 00 2C */	bgt lbl_8026ECC0
/* 8026EC98  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8026EC9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026ECA0  41 80 00 20 */	blt lbl_8026ECC0
/* 8026ECA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026ECA8  C0 24 00 08 */	lfs f1, 8(r4)
/* 8026ECAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026ECB0  41 81 00 10 */	bgt lbl_8026ECC0
/* 8026ECB4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8026ECB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026ECBC  40 80 00 0C */	bge lbl_8026ECC8
lbl_8026ECC0:
/* 8026ECC0  38 60 00 00 */	li r3, 0
/* 8026ECC4  4E 80 00 20 */	blr 
lbl_8026ECC8:
/* 8026ECC8  38 60 00 01 */	li r3, 1
/* 8026ECCC  4E 80 00 20 */	blr 
