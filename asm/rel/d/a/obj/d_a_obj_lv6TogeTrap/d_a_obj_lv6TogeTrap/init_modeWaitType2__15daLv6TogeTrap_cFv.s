lbl_80C7B988:
/* 80C7B988  3C 80 80 C8 */	lis r4, lit_3665@ha
/* 80C7B98C  C0 04 C6 E8 */	lfs f0, lit_3665@l(r4)
/* 80C7B990  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C7B994  38 00 00 00 */	li r0, 0
/* 80C7B998  98 03 05 DB */	stb r0, 0x5db(r3)
/* 80C7B99C  38 00 00 08 */	li r0, 8
/* 80C7B9A0  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80C7B9A4  4E 80 00 20 */	blr 
