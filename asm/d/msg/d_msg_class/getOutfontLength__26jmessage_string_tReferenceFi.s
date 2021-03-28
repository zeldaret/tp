lbl_8022FA98:
/* 8022FA98  2C 04 00 00 */	cmpwi r4, 0
/* 8022FA9C  40 80 00 0C */	bge lbl_8022FAA8
/* 8022FAA0  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 8022FAA4  4E 80 00 20 */	blr 
lbl_8022FAA8:
/* 8022FAA8  88 03 00 82 */	lbz r0, 0x82(r3)
/* 8022FAAC  7C 04 00 00 */	cmpw r4, r0
/* 8022FAB0  40 80 00 14 */	bge lbl_8022FAC4
/* 8022FAB4  54 80 10 3A */	slwi r0, r4, 2
/* 8022FAB8  7C 63 02 14 */	add r3, r3, r0
/* 8022FABC  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8022FAC0  4E 80 00 20 */	blr 
lbl_8022FAC4:
/* 8022FAC4  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 8022FAC8  4E 80 00 20 */	blr 
