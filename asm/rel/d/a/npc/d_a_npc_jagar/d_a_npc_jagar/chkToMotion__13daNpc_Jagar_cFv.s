lbl_80A179F8:
/* 80A179F8  38 00 00 00 */	li r0, 0
/* 80A179FC  80 63 0B 7C */	lwz r3, 0xb7c(r3)
/* 80A17A00  2C 03 00 0A */	cmpwi r3, 0xa
/* 80A17A04  41 82 00 1C */	beq lbl_80A17A20
/* 80A17A08  2C 03 00 0B */	cmpwi r3, 0xb
/* 80A17A0C  41 82 00 14 */	beq lbl_80A17A20
/* 80A17A10  2C 03 00 0C */	cmpwi r3, 0xc
/* 80A17A14  41 82 00 0C */	beq lbl_80A17A20
/* 80A17A18  2C 03 00 0D */	cmpwi r3, 0xd
/* 80A17A1C  40 82 00 08 */	bne lbl_80A17A24
lbl_80A17A20:
/* 80A17A20  38 00 00 01 */	li r0, 1
lbl_80A17A24:
/* 80A17A24  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80A17A28  4E 80 00 20 */	blr 
