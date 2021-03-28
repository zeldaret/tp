lbl_80C1D408:
/* 80C1D408  3C 80 80 C2 */	lis r4, l_HIO@ha
/* 80C1D40C  38 84 DC 54 */	addi r4, r4, l_HIO@l
/* 80C1D410  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80C1D414  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C1D418  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80C1D41C  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80C1D420  88 04 00 31 */	lbz r0, 0x31(r4)
/* 80C1D424  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80C1D428  38 00 00 02 */	li r0, 2
/* 80C1D42C  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C1D430  4E 80 00 20 */	blr 
