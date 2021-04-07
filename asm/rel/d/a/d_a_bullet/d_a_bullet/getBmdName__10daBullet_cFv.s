lbl_80656198:
/* 80656198  88 03 09 56 */	lbz r0, 0x956(r3)
/* 8065619C  54 00 10 3A */	slwi r0, r0, 2
/* 806561A0  3C 60 80 65 */	lis r3, l_bmdFileNameList@ha /* 0x80656790@ha */
/* 806561A4  38 63 67 90 */	addi r3, r3, l_bmdFileNameList@l /* 0x80656790@l */
/* 806561A8  7C 63 00 2E */	lwzx r3, r3, r0
/* 806561AC  4E 80 00 20 */	blr 
