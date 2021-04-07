lbl_80D66B0C:
/* 80D66B0C  3C 80 80 D6 */	lis r4, lit_3772@ha /* 0x80D67BD4@ha */
/* 80D66B10  38 A4 7B D4 */	addi r5, r4, lit_3772@l /* 0x80D67BD4@l */
/* 80D66B14  3C 80 80 D6 */	lis r4, __vt__11daTit_HIO_c@ha /* 0x80D67D68@ha */
/* 80D66B18  38 04 7D 68 */	addi r0, r4, __vt__11daTit_HIO_c@l /* 0x80D67D68@l */
/* 80D66B1C  90 03 00 00 */	stw r0, 0(r3)
/* 80D66B20  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80D66B24  D0 03 00 08 */	stfs f0, 8(r3)
/* 80D66B28  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D66B2C  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80D66B30  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D66B34  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80D66B38  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80D66B3C  38 80 00 0F */	li r4, 0xf
/* 80D66B40  98 83 00 18 */	stb r4, 0x18(r3)
/* 80D66B44  38 00 00 3C */	li r0, 0x3c
/* 80D66B48  98 03 00 19 */	stb r0, 0x19(r3)
/* 80D66B4C  98 83 00 1A */	stb r4, 0x1a(r3)
/* 80D66B50  4E 80 00 20 */	blr 
