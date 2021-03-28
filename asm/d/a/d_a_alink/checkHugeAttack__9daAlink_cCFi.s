lbl_800D7BE8:
/* 800D7BE8  38 60 00 00 */	li r3, 0
/* 800D7BEC  2C 04 00 02 */	cmpwi r4, 2
/* 800D7BF0  41 82 00 1C */	beq lbl_800D7C0C
/* 800D7BF4  2C 04 00 07 */	cmpwi r4, 7
/* 800D7BF8  41 82 00 14 */	beq lbl_800D7C0C
/* 800D7BFC  2C 04 00 0B */	cmpwi r4, 0xb
/* 800D7C00  41 82 00 0C */	beq lbl_800D7C0C
/* 800D7C04  2C 04 00 0E */	cmpwi r4, 0xe
/* 800D7C08  4C 82 00 20 */	bnelr 
lbl_800D7C0C:
/* 800D7C0C  38 60 00 01 */	li r3, 1
/* 800D7C10  4E 80 00 20 */	blr 
