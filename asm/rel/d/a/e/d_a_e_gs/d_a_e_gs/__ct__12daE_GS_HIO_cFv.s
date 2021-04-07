lbl_806DF46C:
/* 806DF46C  3C 80 80 6E */	lis r4, lit_3646@ha /* 0x806DFDF4@ha */
/* 806DF470  38 A4 FD F4 */	addi r5, r4, lit_3646@l /* 0x806DFDF4@l */
/* 806DF474  3C 80 80 6E */	lis r4, __vt__12daE_GS_HIO_c@ha /* 0x806DFE84@ha */
/* 806DF478  38 04 FE 84 */	addi r0, r4, __vt__12daE_GS_HIO_c@l /* 0x806DFE84@l */
/* 806DF47C  90 03 00 00 */	stw r0, 0(r3)
/* 806DF480  38 00 FF FF */	li r0, -1
/* 806DF484  98 03 00 04 */	stb r0, 4(r3)
/* 806DF488  C0 05 00 00 */	lfs f0, 0(r5)
/* 806DF48C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806DF490  38 00 00 05 */	li r0, 5
/* 806DF494  B0 03 00 0C */	sth r0, 0xc(r3)
/* 806DF498  C0 05 00 04 */	lfs f0, 4(r5)
/* 806DF49C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806DF4A0  C0 05 00 08 */	lfs f0, 8(r5)
/* 806DF4A4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 806DF4A8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 806DF4AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806DF4B0  4E 80 00 20 */	blr 
