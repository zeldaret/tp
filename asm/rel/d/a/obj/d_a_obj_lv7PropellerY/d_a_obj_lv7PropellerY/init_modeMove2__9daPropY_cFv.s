lbl_80C85B5C:
/* 80C85B5C  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C862CC@ha */
/* 80C85B60  38 84 62 CC */	addi r4, r4, l_HIO@l /* 0x80C862CC@l */
/* 80C85B64  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C85B68  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C85B6C  3C 80 80 C8 */	lis r4, lit_3650@ha /* 0x80C86130@ha */
/* 80C85B70  C0 04 61 30 */	lfs f0, lit_3650@l(r4)  /* 0x80C86130@l */
/* 80C85B74  D0 03 05 C4 */	stfs f0, 0x5c4(r3)
/* 80C85B78  38 00 00 03 */	li r0, 3
/* 80C85B7C  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80C85B80  4E 80 00 20 */	blr 
