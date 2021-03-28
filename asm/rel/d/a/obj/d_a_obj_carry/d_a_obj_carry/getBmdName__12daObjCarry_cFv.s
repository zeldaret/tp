lbl_8046F6D4:
/* 8046F6D4  88 03 0C F0 */	lbz r0, 0xcf0(r3)
/* 8046F6D8  54 00 10 3A */	slwi r0, r0, 2
/* 8046F6DC  3C 60 80 48 */	lis r3, l_bmdName@ha
/* 8046F6E0  38 63 A6 A8 */	addi r3, r3, l_bmdName@l
/* 8046F6E4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046F6E8  4E 80 00 20 */	blr 
