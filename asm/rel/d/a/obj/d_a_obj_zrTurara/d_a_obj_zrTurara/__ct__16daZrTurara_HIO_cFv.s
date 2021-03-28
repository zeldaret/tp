lbl_80D4056C:
/* 80D4056C  3C 80 80 D4 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D40570  38 04 17 68 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D40574  90 03 00 00 */	stw r0, 0(r3)
/* 80D40578  3C 80 80 D4 */	lis r4, __vt__16daZrTurara_HIO_c@ha
/* 80D4057C  38 04 17 5C */	addi r0, r4, __vt__16daZrTurara_HIO_c@l
/* 80D40580  90 03 00 00 */	stw r0, 0(r3)
/* 80D40584  38 00 00 05 */	li r0, 5
/* 80D40588  98 03 00 08 */	stb r0, 8(r3)
/* 80D4058C  3C 80 80 D4 */	lis r4, lit_3657@ha
/* 80D40590  C0 04 15 9C */	lfs f0, lit_3657@l(r4)
/* 80D40594  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D40598  4E 80 00 20 */	blr 
