lbl_800CFFA4:
/* 800CFFA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CFFA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CFFAC  C0 04 5D C0 */	lfs f0, 0x5dc0(r4)
/* 800CFFB0  EC 00 08 2A */	fadds f0, f0, f1
/* 800CFFB4  D0 04 5D C0 */	stfs f0, 0x5dc0(r4)
/* 800CFFB8  98 64 5E B6 */	stb r3, 0x5eb6(r4)
/* 800CFFBC  4E 80 00 20 */	blr 
