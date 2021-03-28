lbl_801D2658:
/* 801D2658  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D265C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D2660  C0 23 00 AC */	lfs f1, 0xac(r3)
/* 801D2664  4E 80 00 20 */	blr 
