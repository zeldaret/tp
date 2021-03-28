lbl_80C87CAC:
/* 80C87CAC  3C 80 80 C9 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C87CB0  38 04 85 FC */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C87CB4  90 03 00 00 */	stw r0, 0(r3)
/* 80C87CB8  3C 80 80 C9 */	lis r4, __vt__17daKekaiTrap_HIO_c@ha
/* 80C87CBC  38 04 85 F0 */	addi r0, r4, __vt__17daKekaiTrap_HIO_c@l
/* 80C87CC0  90 03 00 00 */	stw r0, 0(r3)
/* 80C87CC4  3C 80 80 C9 */	lis r4, lit_3651@ha
/* 80C87CC8  C0 24 84 E4 */	lfs f1, lit_3651@l(r4)
/* 80C87CCC  D0 23 00 04 */	stfs f1, 4(r3)
/* 80C87CD0  3C 80 80 C9 */	lis r4, lit_3652@ha
/* 80C87CD4  C0 04 84 E8 */	lfs f0, lit_3652@l(r4)
/* 80C87CD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C87CDC  38 00 00 0A */	li r0, 0xa
/* 80C87CE0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80C87CE4  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80C87CE8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C87CEC  38 00 00 1E */	li r0, 0x1e
/* 80C87CF0  98 03 00 18 */	stb r0, 0x18(r3)
/* 80C87CF4  4E 80 00 20 */	blr 
