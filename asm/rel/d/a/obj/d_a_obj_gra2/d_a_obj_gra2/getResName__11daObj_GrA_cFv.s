lbl_80C00D5C:
/* 80C00D5C  88 03 0A 7E */	lbz r0, 0xa7e(r3)
/* 80C00D60  54 00 10 3A */	slwi r0, r0, 2
/* 80C00D64  3C 60 80 C1 */	lis r3, l_resFileNameList@ha /* 0x80C0FE88@ha */
/* 80C00D68  38 63 FE 88 */	addi r3, r3, l_resFileNameList@l /* 0x80C0FE88@l */
/* 80C00D6C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C00D70  4E 80 00 20 */	blr 
