lbl_8029BE94:
/* 8029BE94  38 00 00 00 */	li r0, 0
/* 8029BE98  90 03 00 00 */	stw r0, 0(r3)
/* 8029BE9C  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8029BEA0  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8029BEA4  98 03 00 18 */	stb r0, 0x18(r3)
/* 8029BEA8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8029BEAC  C0 02 BC F8 */	lfs f0, lit_77(r2)
/* 8029BEB0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8029BEB4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8029BEB8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8029BEBC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8029BEC0  4E 80 00 20 */	blr 
