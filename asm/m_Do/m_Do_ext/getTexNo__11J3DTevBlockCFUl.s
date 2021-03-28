lbl_8000DF94:
/* 8000DF94  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8000DF98  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8000DF9C  4E 80 00 20 */	blr 
