lbl_801FCCFC:
/* 801FCCFC  88 03 01 45 */	lbz r0, 0x145(r3)
/* 801FCD00  7C 00 20 78 */	andc r0, r0, r4
/* 801FCD04  98 03 01 45 */	stb r0, 0x145(r3)
/* 801FCD08  4E 80 00 20 */	blr 
