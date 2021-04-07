lbl_80097F2C:
/* 80097F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80097F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80097F34  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 80097F38  C0 02 91 D8 */	lfs f0, lit_3655(r2)
/* 80097F3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80097F40  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 80097F44  38 00 00 00 */	li r0, 0
/* 80097F48  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 80097F4C  4E 80 00 20 */	blr 
