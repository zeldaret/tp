lbl_809E5DB4:
/* 809E5DB4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809E5DB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809E5DBC  41 82 00 08 */	beq lbl_809E5DC4
/* 809E5DC0  48 00 00 0C */	b lbl_809E5DCC
lbl_809E5DC4:
/* 809E5DC4  38 60 00 00 */	li r3, 0
/* 809E5DC8  4E 80 00 20 */	blr 
lbl_809E5DCC:
/* 809E5DCC  38 60 00 00 */	li r3, 0
/* 809E5DD0  4E 80 00 20 */	blr 
