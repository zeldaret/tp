lbl_8000FB7C:
/* 8000FB7C  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 8000FB80  C0 02 81 1C */	lfs f0, lit_3876(r2)
/* 8000FB84  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8000FB88  41 80 00 0C */	blt lbl_8000FB94
/* 8000FB8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8000FB90  40 82 00 10 */	bne lbl_8000FBA0
lbl_8000FB94:
/* 8000FB94  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 8000FB98  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8000FB9C  48 00 00 18 */	b lbl_8000FBB4
lbl_8000FBA0:
/* 8000FBA0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8000FBA4  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8000FBA8  C0 02 81 18 */	lfs f0, lit_3847(r2)
/* 8000FBAC  EC 00 08 24 */	fdivs f0, f0, f1
/* 8000FBB0  D0 03 00 34 */	stfs f0, 0x34(r3)
lbl_8000FBB4:
/* 8000FBB4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8000FBB8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8000FBBC  4E 80 00 20 */	blr 
