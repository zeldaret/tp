lbl_80B9CB8C:
/* 80B9CB8C  3C 80 80 BA */	lis r4, lit_3661@ha
/* 80B9CB90  38 A4 E8 F4 */	addi r5, r4, lit_3661@l
/* 80B9CB94  3C 80 80 BA */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80B9CB98  38 04 EB 80 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80B9CB9C  90 03 00 00 */	stw r0, 0(r3)
/* 80B9CBA0  3C 80 80 BA */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha
/* 80B9CBA4  38 04 EB 74 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l
/* 80B9CBA8  90 03 00 00 */	stw r0, 0(r3)
/* 80B9CBAC  3C 80 80 BA */	lis r4, __vt__14daTurara_HIO_c@ha
/* 80B9CBB0  38 04 EB 68 */	addi r0, r4, __vt__14daTurara_HIO_c@l
/* 80B9CBB4  90 03 00 00 */	stw r0, 0(r3)
/* 80B9CBB8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80B9CBBC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B9CBC0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B9CBC4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B9CBC8  C0 05 00 08 */	lfs f0, 8(r5)
/* 80B9CBCC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80B9CBD0  38 00 00 1E */	li r0, 0x1e
/* 80B9CBD4  98 03 00 10 */	stb r0, 0x10(r3)
/* 80B9CBD8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80B9CBDC  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80B9CBE0  38 00 00 04 */	li r0, 4
/* 80B9CBE4  98 03 00 11 */	stb r0, 0x11(r3)
/* 80B9CBE8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80B9CBEC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B9CBF0  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80B9CBF4  4E 80 00 20 */	blr 
