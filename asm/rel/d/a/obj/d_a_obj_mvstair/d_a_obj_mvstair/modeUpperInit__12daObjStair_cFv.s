lbl_80C9DA98:
/* 80C9DA98  38 00 00 1E */	li r0, 0x1e
/* 80C9DA9C  B0 03 06 5C */	sth r0, 0x65c(r3)
/* 80C9DAA0  38 00 00 0F */	li r0, 0xf
/* 80C9DAA4  B0 03 06 5E */	sth r0, 0x65e(r3)
/* 80C9DAA8  3C 80 80 CA */	lis r4, lit_3946@ha
/* 80C9DAAC  C0 04 E8 F4 */	lfs f0, lit_3946@l(r4)
/* 80C9DAB0  D0 03 06 60 */	stfs f0, 0x660(r3)
/* 80C9DAB4  38 00 00 00 */	li r0, 0
/* 80C9DAB8  98 03 06 68 */	stb r0, 0x668(r3)
/* 80C9DABC  3C 80 80 CA */	lis r4, lit_3802@ha
/* 80C9DAC0  C0 04 E8 E0 */	lfs f0, lit_3802@l(r4)
/* 80C9DAC4  D0 03 06 44 */	stfs f0, 0x644(r3)
/* 80C9DAC8  D0 03 06 48 */	stfs f0, 0x648(r3)
/* 80C9DACC  38 00 00 01 */	li r0, 1
/* 80C9DAD0  98 03 06 3E */	stb r0, 0x63e(r3)
/* 80C9DAD4  38 60 00 01 */	li r3, 1
/* 80C9DAD8  4E 80 00 20 */	blr 
