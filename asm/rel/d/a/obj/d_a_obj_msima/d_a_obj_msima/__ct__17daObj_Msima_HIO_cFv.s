lbl_80C9B40C:
/* 80C9B40C  3C 80 80 CA */	lis r4, __vt__17daObj_Msima_HIO_c@ha
/* 80C9B410  38 04 CE 54 */	addi r0, r4, __vt__17daObj_Msima_HIO_c@l
/* 80C9B414  90 03 00 00 */	stw r0, 0(r3)
/* 80C9B418  38 00 FF FF */	li r0, -1
/* 80C9B41C  98 03 00 04 */	stb r0, 4(r3)
/* 80C9B420  3C 80 80 CA */	lis r4, lit_3863@ha
/* 80C9B424  C0 04 CD 4C */	lfs f0, lit_3863@l(r4)
/* 80C9B428  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C9B42C  38 00 0C 00 */	li r0, 0xc00
/* 80C9B430  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80C9B434  38 00 00 00 */	li r0, 0
/* 80C9B438  B0 03 00 0E */	sth r0, 0xe(r3)
/* 80C9B43C  3C 80 80 CA */	lis r4, lit_3864@ha
/* 80C9B440  C0 04 CD 50 */	lfs f0, lit_3864@l(r4)
/* 80C9B444  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C9B448  4E 80 00 20 */	blr 
