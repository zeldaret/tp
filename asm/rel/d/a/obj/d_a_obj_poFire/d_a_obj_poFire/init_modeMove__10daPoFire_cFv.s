lbl_80CB3714:
/* 80CB3714  3C 80 80 CB */	lis r4, lit_3726@ha /* 0x80CB3F0C@ha */
/* 80CB3718  C0 04 3F 0C */	lfs f0, lit_3726@l(r4)  /* 0x80CB3F0C@l */
/* 80CB371C  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80CB3720  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 80CB3724  38 00 00 04 */	li r0, 4
/* 80CB3728  98 03 05 92 */	stb r0, 0x592(r3)
/* 80CB372C  4E 80 00 20 */	blr 
