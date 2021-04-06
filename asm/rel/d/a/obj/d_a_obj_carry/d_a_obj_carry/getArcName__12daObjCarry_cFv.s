lbl_8046F6BC:
/* 8046F6BC  88 03 0C F0 */	lbz r0, 0xcf0(r3)
/* 8046F6C0  54 00 10 3A */	slwi r0, r0, 2
/* 8046F6C4  3C 60 80 48 */	lis r3, l_arcName@ha /* 0x8047A670@ha */
/* 8046F6C8  38 63 A6 70 */	addi r3, r3, l_arcName@l /* 0x8047A670@l */
/* 8046F6CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 8046F6D0  4E 80 00 20 */	blr 
