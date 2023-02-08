lbl_80C859C4:
/* 80C859C4  3C 80 80 C8 */	lis r4, lit_3650@ha /* 0x80C86130@ha */
/* 80C859C8  C0 04 61 30 */	lfs f0, lit_3650@l(r4)  /* 0x80C86130@l */
/* 80C859CC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C859D0  D0 03 05 C4 */	stfs f0, 0x5c4(r3)
/* 80C859D4  38 00 00 01 */	li r0, 1
/* 80C859D8  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C859DC  4E 80 00 20 */	blr 
