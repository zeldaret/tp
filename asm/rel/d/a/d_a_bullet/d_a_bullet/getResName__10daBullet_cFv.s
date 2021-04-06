lbl_80656180:
/* 80656180  88 03 09 56 */	lbz r0, 0x956(r3)
/* 80656184  54 00 10 3A */	slwi r0, r0, 2
/* 80656188  3C 60 80 65 */	lis r3, l_resFileNameList@ha /* 0x8065678C@ha */
/* 8065618C  38 63 67 8C */	addi r3, r3, l_resFileNameList@l /* 0x8065678C@l */
/* 80656190  7C 63 00 2E */	lwzx r3, r3, r0
/* 80656194  4E 80 00 20 */	blr 
