lbl_80C60434:
/* 80C60434  3C 80 80 C6 */	lis r4, l_HIO@ha
/* 80C60438  38 84 09 C4 */	addi r4, r4, l_HIO@l
/* 80C6043C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80C60440  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C60444  38 00 00 06 */	li r0, 6
/* 80C60448  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C6044C  4E 80 00 20 */	blr 
