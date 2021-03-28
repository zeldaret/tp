lbl_80C5EB6C:
/* 80C5EB6C  3C 80 80 C6 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C5EB70  38 04 F5 08 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C5EB74  90 03 00 00 */	stw r0, 0(r3)
/* 80C5EB78  3C 80 80 C6 */	lis r4, __vt__15daLv4Gate_HIO_c@ha
/* 80C5EB7C  38 04 F4 FC */	addi r0, r4, __vt__15daLv4Gate_HIO_c@l
/* 80C5EB80  90 03 00 00 */	stw r0, 0(r3)
/* 80C5EB84  3C 80 80 C6 */	lis r4, lit_3625@ha
/* 80C5EB88  C0 04 F3 F4 */	lfs f0, lit_3625@l(r4)
/* 80C5EB8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C5EB90  38 00 00 03 */	li r0, 3
/* 80C5EB94  98 03 00 08 */	stb r0, 8(r3)
/* 80C5EB98  4E 80 00 20 */	blr 
