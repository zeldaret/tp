lbl_80B10DEC:
/* 80B10DEC  3C 80 80 B1 */	lis r4, __vt__16daNpc_Tkj2_HIO_c@ha /* 0x80B144E8@ha */
/* 80B10DF0  38 04 44 E8 */	addi r0, r4, __vt__16daNpc_Tkj2_HIO_c@l /* 0x80B144E8@l */
/* 80B10DF4  90 03 00 00 */	stw r0, 0(r3)
/* 80B10DF8  38 00 FF FF */	li r0, -1
/* 80B10DFC  98 03 00 04 */	stb r0, 4(r3)
/* 80B10E00  3C 80 80 B1 */	lis r4, lit_3648@ha /* 0x80B142DC@ha */
/* 80B10E04  C0 04 42 DC */	lfs f0, lit_3648@l(r4)  /* 0x80B142DC@l */
/* 80B10E08  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B10E0C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80B10E10  3C 80 80 B1 */	lis r4, lit_3649@ha /* 0x80B142E0@ha */
/* 80B10E14  C0 04 42 E0 */	lfs f0, lit_3649@l(r4)  /* 0x80B142E0@l */
/* 80B10E18  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80B10E1C  4E 80 00 20 */	blr 
