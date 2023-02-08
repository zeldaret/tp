lbl_80C9A260:
/* 80C9A260  A8 05 00 08 */	lha r0, 8(r5)
/* 80C9A264  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C9A268  4C 82 00 20 */	bnelr 
/* 80C9A26C  38 00 00 0F */	li r0, 0xf
/* 80C9A270  98 04 08 75 */	stb r0, 0x875(r4)
/* 80C9A274  4E 80 00 20 */	blr 
