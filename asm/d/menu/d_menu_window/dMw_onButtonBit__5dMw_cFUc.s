lbl_801FCCEC:
/* 801FCCEC  88 03 01 45 */	lbz r0, 0x145(r3)
/* 801FCCF0  7C 00 23 78 */	or r0, r0, r4
/* 801FCCF4  98 03 01 45 */	stb r0, 0x145(r3)
/* 801FCCF8  4E 80 00 20 */	blr 
