lbl_80AC9BC8:
/* 80AC9BC8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AC9BCC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AC9BD0  41 82 00 08 */	beq lbl_80AC9BD8
/* 80AC9BD4  48 00 00 0C */	b lbl_80AC9BE0
lbl_80AC9BD8:
/* 80AC9BD8  38 60 00 00 */	li r3, 0
/* 80AC9BDC  4E 80 00 20 */	blr 
lbl_80AC9BE0:
/* 80AC9BE0  38 60 00 01 */	li r3, 1
/* 80AC9BE4  4E 80 00 20 */	blr 
