lbl_80CBEF1C:
/* 80CBEF1C  A8 05 00 08 */	lha r0, 8(r5)
/* 80CBEF20  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80CBEF24  4C 82 00 20 */	bnelr 
/* 80CBEF28  38 00 00 01 */	li r0, 1
/* 80CBEF2C  98 04 05 AF */	stb r0, 0x5af(r4)
/* 80CBEF30  4E 80 00 20 */	blr 
