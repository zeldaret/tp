lbl_8009D8E4:
/* 8009D8E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009D8E8  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 8009D8EC  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 8009D8F0  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 8009D8F4  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 8009D8F8  38 00 00 00 */	li r0, 0
/* 8009D8FC  98 0D 8A 48 */	stb r0, struct_80450FC8+0x0(r13)
/* 8009D900  98 0D 8A 49 */	stb r0, struct_80450FC8+0x1(r13)
/* 8009D904  90 03 01 04 */	stw r0, 0x104(r3)
/* 8009D908  4E 80 00 20 */	blr 
