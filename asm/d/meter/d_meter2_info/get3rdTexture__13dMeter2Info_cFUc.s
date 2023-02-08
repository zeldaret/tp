lbl_8021D4B8:
/* 8021D4B8  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8021D4BC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8021D4C0  40 80 00 18 */	bge lbl_8021D4D8
/* 8021D4C4  2C 00 00 08 */	cmpwi r0, 8
/* 8021D4C8  40 80 00 2C */	bge lbl_8021D4F4
/* 8021D4CC  2C 00 00 01 */	cmpwi r0, 1
/* 8021D4D0  40 80 00 14 */	bge lbl_8021D4E4
/* 8021D4D4  48 00 00 20 */	b lbl_8021D4F4
lbl_8021D4D8:
/* 8021D4D8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8021D4DC  40 80 00 18 */	bge lbl_8021D4F4
/* 8021D4E0  48 00 00 0C */	b lbl_8021D4EC
lbl_8021D4E4:
/* 8021D4E4  38 60 00 2E */	li r3, 0x2e
/* 8021D4E8  4E 80 00 20 */	blr 
lbl_8021D4EC:
/* 8021D4EC  38 60 00 0E */	li r3, 0xe
/* 8021D4F0  4E 80 00 20 */	blr 
lbl_8021D4F4:
/* 8021D4F4  38 60 FF FF */	li r3, -1
/* 8021D4F8  4E 80 00 20 */	blr 
