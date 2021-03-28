lbl_800D7C14:
/* 800D7C14  38 60 00 00 */	li r3, 0
/* 800D7C18  2C 04 00 01 */	cmpwi r4, 1
/* 800D7C1C  41 82 00 1C */	beq lbl_800D7C38
/* 800D7C20  2C 04 00 06 */	cmpwi r4, 6
/* 800D7C24  41 82 00 14 */	beq lbl_800D7C38
/* 800D7C28  2C 04 00 0A */	cmpwi r4, 0xa
/* 800D7C2C  41 82 00 0C */	beq lbl_800D7C38
/* 800D7C30  2C 04 00 0D */	cmpwi r4, 0xd
/* 800D7C34  4C 82 00 20 */	bnelr 
lbl_800D7C38:
/* 800D7C38  38 60 00 01 */	li r3, 1
/* 800D7C3C  4E 80 00 20 */	blr 
