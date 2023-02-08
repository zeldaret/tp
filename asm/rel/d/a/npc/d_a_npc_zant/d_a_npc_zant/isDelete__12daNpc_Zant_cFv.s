lbl_80B6C89C:
/* 80B6C89C  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80B6C8A0  28 00 00 01 */	cmplwi r0, 1
/* 80B6C8A4  40 82 00 0C */	bne lbl_80B6C8B0
/* 80B6C8A8  38 60 00 00 */	li r3, 0
/* 80B6C8AC  4E 80 00 20 */	blr 
lbl_80B6C8B0:
/* 80B6C8B0  2C 00 00 00 */	cmpwi r0, 0
/* 80B6C8B4  41 82 00 08 */	beq lbl_80B6C8BC
/* 80B6C8B8  48 00 00 0C */	b lbl_80B6C8C4
lbl_80B6C8BC:
/* 80B6C8BC  38 60 00 00 */	li r3, 0
/* 80B6C8C0  4E 80 00 20 */	blr 
lbl_80B6C8C4:
/* 80B6C8C4  38 60 00 01 */	li r3, 1
/* 80B6C8C8  4E 80 00 20 */	blr 
