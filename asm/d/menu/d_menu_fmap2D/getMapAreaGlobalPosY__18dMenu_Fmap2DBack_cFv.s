lbl_801D2668:
/* 801D2668  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D266C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D2670  C0 23 00 B0 */	lfs f1, 0xb0(r3)
/* 801D2674  4E 80 00 20 */	blr 
