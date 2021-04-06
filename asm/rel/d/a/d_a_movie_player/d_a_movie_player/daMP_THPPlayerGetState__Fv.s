lbl_8087861C:
/* 8087861C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80878620  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80878624  88 63 00 A4 */	lbz r3, 0xa4(r3)
/* 80878628  4E 80 00 20 */	blr 
