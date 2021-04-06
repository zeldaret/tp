lbl_801D2728:
/* 801D2728  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D272C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D2730  C0 23 00 B4 */	lfs f1, 0xb4(r3)
/* 801D2734  4E 80 00 20 */	blr 
