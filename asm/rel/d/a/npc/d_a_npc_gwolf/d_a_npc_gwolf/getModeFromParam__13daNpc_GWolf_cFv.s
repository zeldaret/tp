lbl_809F4E84:
/* 809F4E84  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809F4E88  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809F4E8C  88 63 0E 10 */	lbz r3, 0xe10(r3)
/* 809F4E90  28 03 00 00 */	cmplwi r3, 0
/* 809F4E94  41 82 00 0C */	beq lbl_809F4EA0
/* 809F4E98  28 03 00 01 */	cmplwi r3, 1
/* 809F4E9C  40 82 00 5C */	bne lbl_809F4EF8
lbl_809F4EA0:
/* 809F4EA0  28 00 00 07 */	cmplwi r0, 7
/* 809F4EA4  41 81 00 54 */	bgt lbl_809F4EF8
/* 809F4EA8  3C 60 80 A0 */	lis r3, lit_5060@ha
/* 809F4EAC  38 63 8A 4C */	addi r3, r3, lit_5060@l
/* 809F4EB0  54 00 10 3A */	slwi r0, r0, 2
/* 809F4EB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F4EB8  7C 09 03 A6 */	mtctr r0
/* 809F4EBC  4E 80 04 20 */	bctr 
lbl_809F4EC0:
/* 809F4EC0  38 60 00 00 */	li r3, 0
/* 809F4EC4  4E 80 00 20 */	blr 
lbl_809F4EC8:
/* 809F4EC8  38 60 00 01 */	li r3, 1
/* 809F4ECC  4E 80 00 20 */	blr 
lbl_809F4ED0:
/* 809F4ED0  38 60 00 02 */	li r3, 2
/* 809F4ED4  4E 80 00 20 */	blr 
lbl_809F4ED8:
/* 809F4ED8  38 60 00 03 */	li r3, 3
/* 809F4EDC  4E 80 00 20 */	blr 
lbl_809F4EE0:
/* 809F4EE0  38 60 00 04 */	li r3, 4
/* 809F4EE4  4E 80 00 20 */	blr 
lbl_809F4EE8:
/* 809F4EE8  38 60 00 05 */	li r3, 5
/* 809F4EEC  4E 80 00 20 */	blr 
lbl_809F4EF0:
/* 809F4EF0  38 60 00 06 */	li r3, 6
/* 809F4EF4  4E 80 00 20 */	blr 
lbl_809F4EF8:
/* 809F4EF8  38 60 FF FF */	li r3, -1
/* 809F4EFC  4E 80 00 20 */	blr 
