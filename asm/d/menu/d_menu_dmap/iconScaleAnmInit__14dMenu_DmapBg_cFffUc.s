lbl_801B893C:
/* 801B893C  D0 23 0D AC */	stfs f1, 0xdac(r3)
/* 801B8940  D0 43 0D B0 */	stfs f2, 0xdb0(r3)
/* 801B8944  98 83 0D D1 */	stb r4, 0xdd1(r3)
/* 801B8948  38 00 00 00 */	li r0, 0
/* 801B894C  98 03 0D D2 */	stb r0, 0xdd2(r3)
/* 801B8950  4E 80 00 20 */	blr 
