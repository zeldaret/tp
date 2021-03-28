lbl_8009B79C:
/* 8009B79C  38 80 00 00 */	li r4, 0
/* 8009B7A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009B7A4  2C 00 00 D8 */	cmpwi r0, 0xd8
/* 8009B7A8  40 80 00 14 */	bge lbl_8009B7BC
/* 8009B7AC  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 8009B7B0  40 80 00 08 */	bge lbl_8009B7B8
/* 8009B7B4  48 00 00 08 */	b lbl_8009B7BC
lbl_8009B7B8:
/* 8009B7B8  38 80 00 01 */	li r4, 1
lbl_8009B7BC:
/* 8009B7BC  7C 83 23 78 */	mr r3, r4
/* 8009B7C0  4E 80 00 20 */	blr 
