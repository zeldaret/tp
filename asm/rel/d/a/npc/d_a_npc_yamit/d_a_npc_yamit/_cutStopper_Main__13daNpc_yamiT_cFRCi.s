lbl_80B4BAAC:
/* 80B4BAAC  38 60 00 00 */	li r3, 0
/* 80B4BAB0  80 04 00 00 */	lwz r0, 0(r4)
/* 80B4BAB4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B4BAB8  4C 82 00 20 */	bnelr 
/* 80B4BABC  38 60 00 01 */	li r3, 1
/* 80B4BAC0  4E 80 00 20 */	blr 
