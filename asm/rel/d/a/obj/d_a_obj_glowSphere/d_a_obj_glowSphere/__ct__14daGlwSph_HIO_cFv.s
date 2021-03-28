lbl_80BF934C:
/* 80BF934C  3C 80 80 C0 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80BF9350  38 04 AB 94 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80BF9354  90 03 00 00 */	stw r0, 0(r3)
/* 80BF9358  3C 80 80 C0 */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha
/* 80BF935C  38 04 AB 88 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l
/* 80BF9360  90 03 00 00 */	stw r0, 0(r3)
/* 80BF9364  3C 80 80 C0 */	lis r4, __vt__14daGlwSph_HIO_c@ha
/* 80BF9368  38 04 AB 7C */	addi r0, r4, __vt__14daGlwSph_HIO_c@l
/* 80BF936C  90 03 00 00 */	stw r0, 0(r3)
/* 80BF9370  3C 80 80 C0 */	lis r4, lit_3665@ha
/* 80BF9374  C0 04 A9 70 */	lfs f0, lit_3665@l(r4)
/* 80BF9378  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BF937C  3C 80 80 C0 */	lis r4, lit_3666@ha
/* 80BF9380  C0 04 A9 74 */	lfs f0, lit_3666@l(r4)
/* 80BF9384  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BF9388  4E 80 00 20 */	blr 
