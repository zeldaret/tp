lbl_800873B0:
/* 800873B0  2C 03 00 3A */	cmpwi r3, 0x3a
/* 800873B4  41 80 00 0C */	blt lbl_800873C0
/* 800873B8  38 60 00 00 */	li r3, 0
/* 800873BC  4E 80 00 20 */	blr 
lbl_800873C0:
/* 800873C0  54 60 10 3A */	slwi r0, r3, 2
/* 800873C4  3C 60 80 3B */	lis r3, plCutLRC@ha
/* 800873C8  38 63 C4 18 */	addi r3, r3, plCutLRC@l
/* 800873CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 800873D0  4E 80 00 20 */	blr 
