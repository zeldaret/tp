lbl_80C1D54C:
/* 80C1D54C  3C 80 80 C2 */	lis r4, l_HIO@ha
/* 80C1D550  38 84 DC 54 */	addi r4, r4, l_HIO@l
/* 80C1D554  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C1D558  D0 03 05 B0 */	stfs f0, 0x5b0(r3)
/* 80C1D55C  88 04 00 30 */	lbz r0, 0x30(r4)
/* 80C1D560  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C1D564  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 80C1D568  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C1D56C  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80C1D570  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80C1D574  38 00 00 00 */	li r0, 0
/* 80C1D578  98 03 07 FC */	stb r0, 0x7fc(r3)
/* 80C1D57C  38 00 00 03 */	li r0, 3
/* 80C1D580  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C1D584  4E 80 00 20 */	blr 
