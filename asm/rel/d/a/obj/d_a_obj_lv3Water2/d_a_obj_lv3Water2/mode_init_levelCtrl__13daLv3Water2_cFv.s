lbl_80C5ACB8:
/* 80C5ACB8  38 00 00 00 */	li r0, 0
/* 80C5ACBC  98 03 05 E4 */	stb r0, 0x5e4(r3)
/* 80C5ACC0  3C 80 80 C6 */	lis r4, l_HIO@ha /* 0x80C5B4E4@ha */
/* 80C5ACC4  38 84 B4 E4 */	addi r4, r4, l_HIO@l /* 0x80C5B4E4@l */
/* 80C5ACC8  88 04 00 04 */	lbz r0, 4(r4)
/* 80C5ACCC  98 03 05 EB */	stb r0, 0x5eb(r3)
/* 80C5ACD0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C5ACD4  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80C5ACD8  38 00 00 01 */	li r0, 1
/* 80C5ACDC  98 03 05 DC */	stb r0, 0x5dc(r3)
/* 80C5ACE0  4E 80 00 20 */	blr 
