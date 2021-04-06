lbl_80CE7838:
/* 80CE7838  88 03 0B 0E */	lbz r0, 0xb0e(r3)
/* 80CE783C  54 00 10 3A */	slwi r0, r0, 2
/* 80CE7840  3C 60 80 CE */	lis r3, l_resFileName@ha /* 0x80CE7F34@ha */
/* 80CE7844  38 63 7F 34 */	addi r3, r3, l_resFileName@l /* 0x80CE7F34@l */
/* 80CE7848  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CE784C  4E 80 00 20 */	blr 
