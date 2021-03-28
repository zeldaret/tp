lbl_80CB3540:
/* 80CB3540  3C 80 80 CB */	lis r4, lit_3726@ha
/* 80CB3544  C0 04 3F 0C */	lfs f0, lit_3726@l(r4)
/* 80CB3548  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80CB354C  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 80CB3550  38 00 00 03 */	li r0, 3
/* 80CB3554  98 03 05 92 */	stb r0, 0x592(r3)
/* 80CB3558  4E 80 00 20 */	blr 
