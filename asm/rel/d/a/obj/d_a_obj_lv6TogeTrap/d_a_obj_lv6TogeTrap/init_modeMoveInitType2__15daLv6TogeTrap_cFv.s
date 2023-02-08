lbl_80C7BA38:
/* 80C7BA38  3C 80 80 C8 */	lis r4, lit_3665@ha /* 0x80C7C6E8@ha */
/* 80C7BA3C  C0 04 C6 E8 */	lfs f0, lit_3665@l(r4)  /* 0x80C7C6E8@l */
/* 80C7BA40  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C7BA44  38 00 00 09 */	li r0, 9
/* 80C7BA48  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80C7BA4C  4E 80 00 20 */	blr 
