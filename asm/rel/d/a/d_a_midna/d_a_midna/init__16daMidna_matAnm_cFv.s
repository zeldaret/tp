lbl_804BC218:
/* 804BC218  3C 80 80 4C */	lis r4, lit_4278@ha
/* 804BC21C  C0 04 65 80 */	lfs f0, lit_4278@l(r4)
/* 804BC220  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 804BC224  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 804BC228  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 804BC22C  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 804BC230  38 00 00 00 */	li r0, 0
/* 804BC234  3C 60 80 4C */	lis r3, struct_804C6CD8+0x0@ha
/* 804BC238  98 03 6C D8 */	stb r0, struct_804C6CD8+0x0@l(r3)
/* 804BC23C  3C 60 80 4C */	lis r3, struct_804C6CD8+0x1@ha
/* 804BC240  98 03 6C D9 */	stb r0, struct_804C6CD8+0x1@l(r3)
/* 804BC244  4E 80 00 20 */	blr 
