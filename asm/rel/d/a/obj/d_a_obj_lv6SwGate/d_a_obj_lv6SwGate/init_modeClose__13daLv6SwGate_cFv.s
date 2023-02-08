lbl_80C74C7C:
/* 80C74C7C  3C 80 80 C7 */	lis r4, lit_3675@ha /* 0x80C75564@ha */
/* 80C74C80  C0 04 55 64 */	lfs f0, lit_3675@l(r4)  /* 0x80C75564@l */
/* 80C74C84  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C74C88  38 00 00 02 */	li r0, 2
/* 80C74C8C  98 03 14 BC */	stb r0, 0x14bc(r3)
/* 80C74C90  4E 80 00 20 */	blr 
