lbl_806E5DEC:
/* 806E5DEC  3C 80 80 6F */	lis r4, __vt__12daE_HP_HIO_c@ha /* 0x806EA4D0@ha */
/* 806E5DF0  38 04 A4 D0 */	addi r0, r4, __vt__12daE_HP_HIO_c@l /* 0x806EA4D0@l */
/* 806E5DF4  90 03 00 00 */	stw r0, 0(r3)
/* 806E5DF8  38 00 FF FF */	li r0, -1
/* 806E5DFC  98 03 00 04 */	stb r0, 4(r3)
/* 806E5E00  3C 80 80 6F */	lis r4, lit_3926@ha /* 0x806EA220@ha */
/* 806E5E04  C0 04 A2 20 */	lfs f0, lit_3926@l(r4)  /* 0x806EA220@l */
/* 806E5E08  D0 03 00 08 */	stfs f0, 8(r3)
/* 806E5E0C  38 00 00 28 */	li r0, 0x28
/* 806E5E10  B0 03 00 0C */	sth r0, 0xc(r3)
/* 806E5E14  38 00 00 64 */	li r0, 0x64
/* 806E5E18  B0 03 00 0E */	sth r0, 0xe(r3)
/* 806E5E1C  38 00 00 32 */	li r0, 0x32
/* 806E5E20  B0 03 00 10 */	sth r0, 0x10(r3)
/* 806E5E24  38 00 00 00 */	li r0, 0
/* 806E5E28  98 03 00 12 */	stb r0, 0x12(r3)
/* 806E5E2C  4E 80 00 20 */	blr 
