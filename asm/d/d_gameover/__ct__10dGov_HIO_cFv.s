lbl_8019AFE0:
/* 8019AFE0  3C 80 80 3B */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 8019AFE4  38 04 61 B4 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 8019AFE8  90 03 00 00 */	stw r0, 0(r3)
/* 8019AFEC  3C 80 80 3C */	lis r4, __vt__10dGov_HIO_c@ha
/* 8019AFF0  38 04 BD 90 */	addi r0, r4, __vt__10dGov_HIO_c@l
/* 8019AFF4  90 03 00 00 */	stw r0, 0(r3)
/* 8019AFF8  C0 02 A1 8C */	lfs f0, lit_3878(r2)
/* 8019AFFC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8019B000  C0 02 A1 84 */	lfs f0, lit_3869(r2)
/* 8019B004  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8019B008  C0 02 A1 90 */	lfs f0, lit_3879(r2)
/* 8019B00C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8019B010  38 00 00 00 */	li r0, 0
/* 8019B014  98 03 00 14 */	stb r0, 0x14(r3)
/* 8019B018  98 03 00 15 */	stb r0, 0x15(r3)
/* 8019B01C  98 03 00 16 */	stb r0, 0x16(r3)
/* 8019B020  98 03 00 17 */	stb r0, 0x17(r3)
/* 8019B024  38 80 00 FF */	li r4, 0xff
/* 8019B028  98 83 00 18 */	stb r4, 0x18(r3)
/* 8019B02C  38 00 00 DC */	li r0, 0xdc
/* 8019B030  98 03 00 19 */	stb r0, 0x19(r3)
/* 8019B034  38 00 00 7D */	li r0, 0x7d
/* 8019B038  98 03 00 1A */	stb r0, 0x1a(r3)
/* 8019B03C  98 83 00 1B */	stb r4, 0x1b(r3)
/* 8019B040  4E 80 00 20 */	blr 
