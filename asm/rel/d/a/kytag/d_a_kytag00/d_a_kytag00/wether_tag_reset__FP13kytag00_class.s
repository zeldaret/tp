lbl_8046B9DC:
/* 8046B9DC  38 00 00 00 */	li r0, 0
/* 8046B9E0  98 03 05 6D */	stb r0, 0x56d(r3)
/* 8046B9E4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046B9E8  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046B9EC  88 04 12 C8 */	lbz r0, 0x12c8(r4)
/* 8046B9F0  98 04 12 C4 */	stb r0, 0x12c4(r4)
/* 8046B9F4  98 04 12 C5 */	stb r0, 0x12c5(r4)
/* 8046B9F8  3C 60 80 47 */	lis r3, lit_3798@ha /* 0x8046C980@ha */
/* 8046B9FC  C0 03 C9 80 */	lfs f0, lit_3798@l(r3)  /* 0x8046C980@l */
/* 8046BA00  D0 04 11 E0 */	stfs f0, 0x11e0(r4)
/* 8046BA04  38 00 00 01 */	li r0, 1
/* 8046BA08  98 04 12 CE */	stb r0, 0x12ce(r4)
/* 8046BA0C  4E 80 00 20 */	blr 
