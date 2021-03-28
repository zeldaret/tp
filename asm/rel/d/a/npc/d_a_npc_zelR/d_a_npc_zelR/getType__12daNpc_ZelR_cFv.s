lbl_80B6F7F4:
/* 80B6F7F4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B6F7F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B6F7FC  41 82 00 08 */	beq lbl_80B6F804
/* 80B6F800  48 00 00 0C */	b lbl_80B6F80C
lbl_80B6F804:
/* 80B6F804  38 60 00 00 */	li r3, 0
/* 80B6F808  4E 80 00 20 */	blr 
lbl_80B6F80C:
/* 80B6F80C  38 60 00 01 */	li r3, 1
/* 80B6F810  4E 80 00 20 */	blr 
