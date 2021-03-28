lbl_80CB8E6C:
/* 80CB8E6C  3C 80 80 CC */	lis r4, lit_3649@ha
/* 80CB8E70  38 A4 9A 84 */	addi r5, r4, lit_3649@l
/* 80CB8E74  3C 80 80 CC */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80CB8E78  38 04 9B D0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80CB8E7C  90 03 00 00 */	stw r0, 0(r3)
/* 80CB8E80  3C 80 80 CC */	lis r4, __vt__14daRfHole_HIO_c@ha
/* 80CB8E84  38 04 9B C4 */	addi r0, r4, __vt__14daRfHole_HIO_c@l
/* 80CB8E88  90 03 00 00 */	stw r0, 0(r3)
/* 80CB8E8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80CB8E90  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CB8E94  C0 25 00 04 */	lfs f1, 4(r5)
/* 80CB8E98  D0 23 00 08 */	stfs f1, 8(r3)
/* 80CB8E9C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80CB8EA0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80CB8EA4  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80CB8EA8  38 00 00 0A */	li r0, 0xa
/* 80CB8EAC  98 03 00 14 */	stb r0, 0x14(r3)
/* 80CB8EB0  38 00 00 04 */	li r0, 4
/* 80CB8EB4  98 03 00 15 */	stb r0, 0x15(r3)
/* 80CB8EB8  4E 80 00 20 */	blr 
