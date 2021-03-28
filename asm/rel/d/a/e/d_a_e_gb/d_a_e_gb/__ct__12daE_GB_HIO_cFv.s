lbl_806C1CEC:
/* 806C1CEC  3C 80 80 6C */	lis r4, __vt__12daE_GB_HIO_c@ha
/* 806C1CF0  38 04 79 14 */	addi r0, r4, __vt__12daE_GB_HIO_c@l
/* 806C1CF4  90 03 00 00 */	stw r0, 0(r3)
/* 806C1CF8  38 00 FF FF */	li r0, -1
/* 806C1CFC  98 03 00 04 */	stb r0, 4(r3)
/* 806C1D00  3C 80 80 6C */	lis r4, lit_3908@ha
/* 806C1D04  C0 04 74 F0 */	lfs f0, lit_3908@l(r4)
/* 806C1D08  D0 03 00 08 */	stfs f0, 8(r3)
/* 806C1D0C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806C1D10  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806C1D14  38 00 00 0F */	li r0, 0xf
/* 806C1D18  B0 03 00 14 */	sth r0, 0x14(r3)
/* 806C1D1C  3C 80 80 6C */	lis r4, lit_3927@ha
/* 806C1D20  C0 04 75 14 */	lfs f0, lit_3927@l(r4)
/* 806C1D24  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806C1D28  38 00 00 0C */	li r0, 0xc
/* 806C1D2C  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 806C1D30  38 00 00 0A */	li r0, 0xa
/* 806C1D34  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 806C1D38  4E 80 00 20 */	blr 
