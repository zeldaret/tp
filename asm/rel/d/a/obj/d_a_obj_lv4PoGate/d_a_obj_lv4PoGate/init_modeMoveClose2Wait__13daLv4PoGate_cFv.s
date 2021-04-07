lbl_80C603E0:
/* 80C603E0  3C 80 80 C6 */	lis r4, l_HIO@ha /* 0x80C609C4@ha */
/* 80C603E4  38 84 09 C4 */	addi r4, r4, l_HIO@l /* 0x80C609C4@l */
/* 80C603E8  88 04 00 19 */	lbz r0, 0x19(r4)
/* 80C603EC  98 03 05 B8 */	stb r0, 0x5b8(r3)
/* 80C603F0  38 00 00 05 */	li r0, 5
/* 80C603F4  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C603F8  4E 80 00 20 */	blr 
