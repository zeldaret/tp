lbl_80C1D2AC:
/* 80C1D2AC  3C 80 80 C2 */	lis r4, l_HIO@ha
/* 80C1D2B0  38 84 DC 54 */	addi r4, r4, l_HIO@l
/* 80C1D2B4  88 04 00 33 */	lbz r0, 0x33(r4)
/* 80C1D2B8  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C1D2BC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80C1D2C0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C1D2C4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80C1D2C8  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80C1D2CC  38 00 00 01 */	li r0, 1
/* 80C1D2D0  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C1D2D4  4E 80 00 20 */	blr 
