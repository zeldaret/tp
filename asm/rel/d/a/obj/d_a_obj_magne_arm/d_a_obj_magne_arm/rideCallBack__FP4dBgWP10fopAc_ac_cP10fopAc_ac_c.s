lbl_8058FA38:
/* 8058FA38  A8 05 00 08 */	lha r0, 8(r5)
/* 8058FA3C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8058FA40  4C 82 00 20 */	bnelr 
/* 8058FA44  38 00 00 01 */	li r0, 1
/* 8058FA48  98 04 0A 1D */	stb r0, 0xa1d(r4)
/* 8058FA4C  4E 80 00 20 */	blr 
