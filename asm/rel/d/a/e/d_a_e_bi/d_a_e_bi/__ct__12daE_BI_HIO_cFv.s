lbl_8068A5EC:
/* 8068A5EC  3C 80 80 69 */	lis r4, lit_3903@ha
/* 8068A5F0  38 A4 D7 EC */	addi r5, r4, lit_3903@l
/* 8068A5F4  3C 80 80 69 */	lis r4, __vt__12daE_BI_HIO_c@ha
/* 8068A5F8  38 04 DA C8 */	addi r0, r4, __vt__12daE_BI_HIO_c@l
/* 8068A5FC  90 03 00 00 */	stw r0, 0(r3)
/* 8068A600  38 00 FF FF */	li r0, -1
/* 8068A604  98 03 00 04 */	stb r0, 4(r3)
/* 8068A608  C0 05 00 08 */	lfs f0, 8(r5)
/* 8068A60C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8068A610  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8068A614  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8068A618  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8068A61C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8068A620  38 00 00 1E */	li r0, 0x1e
/* 8068A624  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8068A628  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8068A62C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8068A630  4E 80 00 20 */	blr 
