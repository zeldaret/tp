lbl_80C8D440:
/* 80C8D440  3C 80 80 C9 */	lis r4, lit_3650@ha /* 0x80C8D7E8@ha */
/* 80C8D444  C0 04 D7 E8 */	lfs f0, lit_3650@l(r4)  /* 0x80C8D7E8@l */
/* 80C8D448  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C8D44C  38 00 00 02 */	li r0, 2
/* 80C8D450  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C8D454  4E 80 00 20 */	blr 
