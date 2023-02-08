lbl_80BFA1E0:
/* 80BFA1E0  38 00 00 01 */	li r0, 1
/* 80BFA1E4  98 03 09 53 */	stb r0, 0x953(r3)
/* 80BFA1E8  3C 80 80 C0 */	lis r4, l_HIO@ha /* 0x80BFABF4@ha */
/* 80BFA1EC  38 84 AB F4 */	addi r4, r4, l_HIO@l /* 0x80BFABF4@l */
/* 80BFA1F0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BFA1F4  D0 03 09 58 */	stfs f0, 0x958(r3)
/* 80BFA1F8  38 00 00 02 */	li r0, 2
/* 80BFA1FC  98 03 09 52 */	stb r0, 0x952(r3)
/* 80BFA200  4E 80 00 20 */	blr 
