lbl_80B4DD80:
/* 80B4DD80  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B4DD84  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B4DD88  28 00 00 08 */	cmplwi r0, 8
/* 80B4DD8C  41 81 00 64 */	bgt lbl_80B4DDF0
/* 80B4DD90  3C 60 80 B5 */	lis r3, lit_4570@ha
/* 80B4DD94  38 63 31 00 */	addi r3, r3, lit_4570@l
/* 80B4DD98  54 00 10 3A */	slwi r0, r0, 2
/* 80B4DD9C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B4DDA0  7C 09 03 A6 */	mtctr r0
/* 80B4DDA4  4E 80 04 20 */	bctr 
lbl_80B4DDA8:
/* 80B4DDA8  38 60 00 00 */	li r3, 0
/* 80B4DDAC  4E 80 00 20 */	blr 
lbl_80B4DDB0:
/* 80B4DDB0  38 60 00 01 */	li r3, 1
/* 80B4DDB4  4E 80 00 20 */	blr 
lbl_80B4DDB8:
/* 80B4DDB8  38 60 00 02 */	li r3, 2
/* 80B4DDBC  4E 80 00 20 */	blr 
lbl_80B4DDC0:
/* 80B4DDC0  38 60 00 03 */	li r3, 3
/* 80B4DDC4  4E 80 00 20 */	blr 
lbl_80B4DDC8:
/* 80B4DDC8  38 60 00 04 */	li r3, 4
/* 80B4DDCC  4E 80 00 20 */	blr 
lbl_80B4DDD0:
/* 80B4DDD0  38 60 00 05 */	li r3, 5
/* 80B4DDD4  4E 80 00 20 */	blr 
lbl_80B4DDD8:
/* 80B4DDD8  38 60 00 06 */	li r3, 6
/* 80B4DDDC  4E 80 00 20 */	blr 
lbl_80B4DDE0:
/* 80B4DDE0  38 60 00 07 */	li r3, 7
/* 80B4DDE4  4E 80 00 20 */	blr 
lbl_80B4DDE8:
/* 80B4DDE8  38 60 00 08 */	li r3, 8
/* 80B4DDEC  4E 80 00 20 */	blr 
lbl_80B4DDF0:
/* 80B4DDF0  38 60 00 02 */	li r3, 2
/* 80B4DDF4  4E 80 00 20 */	blr 
