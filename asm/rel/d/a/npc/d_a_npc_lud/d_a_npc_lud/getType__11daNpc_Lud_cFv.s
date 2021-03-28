lbl_80A6B75C:
/* 80A6B75C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80A6B760  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A6B764  28 00 00 07 */	cmplwi r0, 7
/* 80A6B768  41 81 00 5C */	bgt lbl_80A6B7C4
/* 80A6B76C  3C 60 80 A7 */	lis r3, lit_4501@ha
/* 80A6B770  38 63 08 54 */	addi r3, r3, lit_4501@l
/* 80A6B774  54 00 10 3A */	slwi r0, r0, 2
/* 80A6B778  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A6B77C  7C 09 03 A6 */	mtctr r0
/* 80A6B780  4E 80 04 20 */	bctr 
lbl_80A6B784:
/* 80A6B784  38 60 00 00 */	li r3, 0
/* 80A6B788  4E 80 00 20 */	blr 
lbl_80A6B78C:
/* 80A6B78C  38 60 00 01 */	li r3, 1
/* 80A6B790  4E 80 00 20 */	blr 
lbl_80A6B794:
/* 80A6B794  38 60 00 02 */	li r3, 2
/* 80A6B798  4E 80 00 20 */	blr 
lbl_80A6B79C:
/* 80A6B79C  38 60 00 03 */	li r3, 3
/* 80A6B7A0  4E 80 00 20 */	blr 
lbl_80A6B7A4:
/* 80A6B7A4  38 60 00 04 */	li r3, 4
/* 80A6B7A8  4E 80 00 20 */	blr 
lbl_80A6B7AC:
/* 80A6B7AC  38 60 00 05 */	li r3, 5
/* 80A6B7B0  4E 80 00 20 */	blr 
lbl_80A6B7B4:
/* 80A6B7B4  38 60 00 06 */	li r3, 6
/* 80A6B7B8  4E 80 00 20 */	blr 
lbl_80A6B7BC:
/* 80A6B7BC  38 60 00 07 */	li r3, 7
/* 80A6B7C0  4E 80 00 20 */	blr 
lbl_80A6B7C4:
/* 80A6B7C4  38 60 00 08 */	li r3, 8
/* 80A6B7C8  4E 80 00 20 */	blr 
