lbl_8022FA38:
/* 8022FA38  2C 04 00 00 */	cmpwi r4, 0
/* 8022FA3C  40 80 00 0C */	bge lbl_8022FA48
/* 8022FA40  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 8022FA44  4E 80 00 20 */	blr 
lbl_8022FA48:
/* 8022FA48  88 03 00 82 */	lbz r0, 0x82(r3)
/* 8022FA4C  7C 04 00 00 */	cmpw r4, r0
/* 8022FA50  40 80 00 14 */	bge lbl_8022FA64
/* 8022FA54  54 80 10 3A */	slwi r0, r4, 2
/* 8022FA58  7C 63 02 14 */	add r3, r3, r0
/* 8022FA5C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8022FA60  4E 80 00 20 */	blr 
lbl_8022FA64:
/* 8022FA64  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 8022FA68  4E 80 00 20 */	blr 
