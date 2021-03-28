lbl_80AC7A88:
/* 80AC7A88  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AC7A8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AC7A90  41 82 00 08 */	beq lbl_80AC7A98
/* 80AC7A94  48 00 00 0C */	b lbl_80AC7AA0
lbl_80AC7A98:
/* 80AC7A98  38 60 00 00 */	li r3, 0
/* 80AC7A9C  4E 80 00 20 */	blr 
lbl_80AC7AA0:
/* 80AC7AA0  38 60 00 01 */	li r3, 1
/* 80AC7AA4  4E 80 00 20 */	blr 
