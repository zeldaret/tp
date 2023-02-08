lbl_806F7EEC:
/* 806F7EEC  3C 80 80 70 */	lis r4, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F7EF0  38 A4 A3 A4 */	addi r5, r4, lit_3788@l /* 0x806FA3A4@l */
/* 806F7EF4  3C 80 80 70 */	lis r4, __vt__12daE_KG_HIO_c@ha /* 0x806FA5D4@ha */
/* 806F7EF8  38 04 A5 D4 */	addi r0, r4, __vt__12daE_KG_HIO_c@l /* 0x806FA5D4@l */
/* 806F7EFC  90 03 00 00 */	stw r0, 0(r3)
/* 806F7F00  38 00 FF FF */	li r0, -1
/* 806F7F04  98 03 00 04 */	stb r0, 4(r3)
/* 806F7F08  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 806F7F0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806F7F10  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 806F7F14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806F7F18  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 806F7F1C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806F7F20  4E 80 00 20 */	blr 
