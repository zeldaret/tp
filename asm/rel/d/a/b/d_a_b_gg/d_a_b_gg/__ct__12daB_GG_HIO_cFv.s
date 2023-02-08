lbl_805DE40C:
/* 805DE40C  3C 80 80 5F */	lis r4, lit_3911@ha /* 0x805ED060@ha */
/* 805DE410  38 A4 D0 60 */	addi r5, r4, lit_3911@l /* 0x805ED060@l */
/* 805DE414  3C 80 80 5F */	lis r4, __vt__12daB_GG_HIO_c@ha /* 0x805ED6A8@ha */
/* 805DE418  38 04 D6 A8 */	addi r0, r4, __vt__12daB_GG_HIO_c@l /* 0x805ED6A8@l */
/* 805DE41C  90 03 00 00 */	stw r0, 0(r3)
/* 805DE420  38 00 FF FF */	li r0, -1
/* 805DE424  98 03 00 04 */	stb r0, 4(r3)
/* 805DE428  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 805DE42C  D0 03 00 08 */	stfs f0, 8(r3)
/* 805DE430  38 00 01 90 */	li r0, 0x190
/* 805DE434  B0 03 00 0C */	sth r0, 0xc(r3)
/* 805DE438  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 805DE43C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805DE440  38 00 00 50 */	li r0, 0x50
/* 805DE444  B0 03 00 0E */	sth r0, 0xe(r3)
/* 805DE448  38 00 00 FA */	li r0, 0xfa
/* 805DE44C  B0 03 00 14 */	sth r0, 0x14(r3)
/* 805DE450  38 00 02 BC */	li r0, 0x2bc
/* 805DE454  B0 03 00 16 */	sth r0, 0x16(r3)
/* 805DE458  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 805DE45C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805DE460  4E 80 00 20 */	blr 
