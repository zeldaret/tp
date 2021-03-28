lbl_80CBF8AC:
/* 80CBF8AC  3C 80 80 CC */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80CBF8B0  38 04 0A A0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80CBF8B4  90 03 00 00 */	stw r0, 0(r3)
/* 80CBF8B8  3C 80 80 CC */	lis r4, __vt__15daRotTrap_HIO_c@ha
/* 80CBF8BC  38 04 0A 94 */	addi r0, r4, __vt__15daRotTrap_HIO_c@l
/* 80CBF8C0  90 03 00 00 */	stw r0, 0(r3)
/* 80CBF8C4  38 00 00 03 */	li r0, 3
/* 80CBF8C8  98 03 00 0E */	stb r0, 0xe(r3)
/* 80CBF8CC  3C 80 80 CC */	lis r4, lit_3649@ha
/* 80CBF8D0  C0 04 08 08 */	lfs f0, lit_3649@l(r4)
/* 80CBF8D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CBF8D8  38 00 00 0A */	li r0, 0xa
/* 80CBF8DC  98 03 00 08 */	stb r0, 8(r3)
/* 80CBF8E0  38 00 00 00 */	li r0, 0
/* 80CBF8E4  98 03 00 09 */	stb r0, 9(r3)
/* 80CBF8E8  98 03 00 0A */	stb r0, 0xa(r3)
/* 80CBF8EC  38 00 00 96 */	li r0, 0x96
/* 80CBF8F0  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80CBF8F4  4E 80 00 20 */	blr 
