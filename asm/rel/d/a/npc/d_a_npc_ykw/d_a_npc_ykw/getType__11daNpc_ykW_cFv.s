lbl_80B5FCC8:
/* 80B5FCC8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B5FCCC  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80B5FCD0  28 00 00 06 */	cmplwi r0, 6
/* 80B5FCD4  41 81 00 54 */	bgt lbl_80B5FD28
/* 80B5FCD8  3C 60 80 B7 */	lis r3, lit_4846@ha /* 0x80B6891C@ha */
/* 80B5FCDC  38 63 89 1C */	addi r3, r3, lit_4846@l /* 0x80B6891C@l */
/* 80B5FCE0  54 00 10 3A */	slwi r0, r0, 2
/* 80B5FCE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B5FCE8  7C 09 03 A6 */	mtctr r0
/* 80B5FCEC  4E 80 04 20 */	bctr 
lbl_80B5FCF0:
/* 80B5FCF0  38 60 00 00 */	li r3, 0
/* 80B5FCF4  4E 80 00 20 */	blr 
lbl_80B5FCF8:
/* 80B5FCF8  38 60 00 01 */	li r3, 1
/* 80B5FCFC  4E 80 00 20 */	blr 
lbl_80B5FD00:
/* 80B5FD00  38 60 00 02 */	li r3, 2
/* 80B5FD04  4E 80 00 20 */	blr 
lbl_80B5FD08:
/* 80B5FD08  38 60 00 03 */	li r3, 3
/* 80B5FD0C  4E 80 00 20 */	blr 
lbl_80B5FD10:
/* 80B5FD10  38 60 00 04 */	li r3, 4
/* 80B5FD14  4E 80 00 20 */	blr 
lbl_80B5FD18:
/* 80B5FD18  38 60 00 05 */	li r3, 5
/* 80B5FD1C  4E 80 00 20 */	blr 
lbl_80B5FD20:
/* 80B5FD20  38 60 00 06 */	li r3, 6
/* 80B5FD24  4E 80 00 20 */	blr 
lbl_80B5FD28:
/* 80B5FD28  38 60 00 07 */	li r3, 7
/* 80B5FD2C  4E 80 00 20 */	blr 
