lbl_8079DDEC:
/* 8079DDEC  3C 80 80 7A */	lis r4, lit_3903@ha
/* 8079DDF0  38 A4 68 24 */	addi r5, r4, lit_3903@l
/* 8079DDF4  3C 80 80 7A */	lis r4, __vt__12daE_ST_HIO_c@ha
/* 8079DDF8  38 04 6D 88 */	addi r0, r4, __vt__12daE_ST_HIO_c@l
/* 8079DDFC  90 03 00 00 */	stw r0, 0(r3)
/* 8079DE00  38 00 FF FF */	li r0, -1
/* 8079DE04  98 03 00 04 */	stb r0, 4(r3)
/* 8079DE08  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8079DE0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8079DE10  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8079DE14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8079DE18  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 8079DE1C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8079DE20  38 00 00 00 */	li r0, 0
/* 8079DE24  B0 03 00 14 */	sth r0, 0x14(r3)
/* 8079DE28  38 00 00 50 */	li r0, 0x50
/* 8079DE2C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8079DE30  C0 05 00 08 */	lfs f0, 8(r5)
/* 8079DE34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8079DE38  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8079DE3C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8079DE40  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 8079DE44  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8079DE48  4E 80 00 20 */	blr 
