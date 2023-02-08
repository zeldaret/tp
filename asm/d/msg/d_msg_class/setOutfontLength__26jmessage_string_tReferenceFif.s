lbl_8022FACC:
/* 8022FACC  2C 04 00 00 */	cmpwi r4, 0
/* 8022FAD0  4D 80 00 20 */	bltlr 
/* 8022FAD4  88 03 00 82 */	lbz r0, 0x82(r3)
/* 8022FAD8  7C 04 00 00 */	cmpw r4, r0
/* 8022FADC  4C 80 00 20 */	bgelr 
/* 8022FAE0  54 80 10 3A */	slwi r0, r4, 2
/* 8022FAE4  7C 63 02 14 */	add r3, r3, r0
/* 8022FAE8  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 8022FAEC  4E 80 00 20 */	blr 
