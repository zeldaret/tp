lbl_8022FAF0:
/* 8022FAF0  2C 04 00 00 */	cmpwi r4, 0
/* 8022FAF4  4D 80 00 20 */	bltlr 
/* 8022FAF8  88 03 00 82 */	lbz r0, 0x82(r3)
/* 8022FAFC  7C 04 00 00 */	cmpw r4, r0
/* 8022FB00  4C 80 00 20 */	bgelr 
/* 8022FB04  54 80 10 3A */	slwi r0, r4, 2
/* 8022FB08  7C 63 02 14 */	add r3, r3, r0
/* 8022FB0C  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8022FB10  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022FB14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8022FB18  4D 82 00 20 */	beqlr 
/* 8022FB1C  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8022FB20  4E 80 00 20 */	blr 
