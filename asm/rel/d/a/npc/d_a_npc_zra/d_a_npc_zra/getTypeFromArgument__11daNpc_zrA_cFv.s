lbl_80B7C44C:
/* 80B7C44C  88 03 04 99 */	lbz r0, 0x499(r3)
/* 80B7C450  7C 00 07 74 */	extsb r0, r0
/* 80B7C454  28 00 00 06 */	cmplwi r0, 6
/* 80B7C458  41 81 00 54 */	bgt lbl_80B7C4AC
/* 80B7C45C  3C 60 80 B9 */	lis r3, lit_6094@ha /* 0x80B8D560@ha */
/* 80B7C460  38 63 D5 60 */	addi r3, r3, lit_6094@l /* 0x80B8D560@l */
/* 80B7C464  54 00 10 3A */	slwi r0, r0, 2
/* 80B7C468  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B7C46C  7C 09 03 A6 */	mtctr r0
/* 80B7C470  4E 80 04 20 */	bctr 
lbl_80B7C474:
/* 80B7C474  38 60 00 00 */	li r3, 0
/* 80B7C478  4E 80 00 20 */	blr 
lbl_80B7C47C:
/* 80B7C47C  38 60 00 01 */	li r3, 1
/* 80B7C480  4E 80 00 20 */	blr 
lbl_80B7C484:
/* 80B7C484  38 60 00 02 */	li r3, 2
/* 80B7C488  4E 80 00 20 */	blr 
lbl_80B7C48C:
/* 80B7C48C  38 60 00 03 */	li r3, 3
/* 80B7C490  4E 80 00 20 */	blr 
lbl_80B7C494:
/* 80B7C494  38 60 00 04 */	li r3, 4
/* 80B7C498  4E 80 00 20 */	blr 
lbl_80B7C49C:
/* 80B7C49C  38 60 00 05 */	li r3, 5
/* 80B7C4A0  4E 80 00 20 */	blr 
lbl_80B7C4A4:
/* 80B7C4A4  38 60 00 06 */	li r3, 6
/* 80B7C4A8  4E 80 00 20 */	blr 
lbl_80B7C4AC:
/* 80B7C4AC  38 60 00 00 */	li r3, 0
/* 80B7C4B0  4E 80 00 20 */	blr 
