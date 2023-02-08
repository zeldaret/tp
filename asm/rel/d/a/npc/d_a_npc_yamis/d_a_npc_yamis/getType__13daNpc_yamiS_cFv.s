lbl_80B46F1C:
/* 80B46F1C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B46F20  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B46F24  2C 00 00 01 */	cmpwi r0, 1
/* 80B46F28  41 82 00 1C */	beq lbl_80B46F44
/* 80B46F2C  40 80 00 20 */	bge lbl_80B46F4C
/* 80B46F30  2C 00 00 00 */	cmpwi r0, 0
/* 80B46F34  40 80 00 08 */	bge lbl_80B46F3C
/* 80B46F38  48 00 00 14 */	b lbl_80B46F4C
lbl_80B46F3C:
/* 80B46F3C  38 60 00 00 */	li r3, 0
/* 80B46F40  4E 80 00 20 */	blr 
lbl_80B46F44:
/* 80B46F44  38 60 00 01 */	li r3, 1
/* 80B46F48  4E 80 00 20 */	blr 
lbl_80B46F4C:
/* 80B46F4C  38 60 00 02 */	li r3, 2
/* 80B46F50  4E 80 00 20 */	blr 
