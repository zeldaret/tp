lbl_80C6A60C:
/* 80C6A60C  3C 80 80 C7 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C6A610  38 04 B2 EC */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C6A614  90 03 00 00 */	stw r0, 0(r3)
/* 80C6A618  3C 80 80 C7 */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C6A61C  38 04 B2 E0 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l
/* 80C6A620  90 03 00 00 */	stw r0, 0(r3)
/* 80C6A624  3C 80 80 C7 */	lis r4, __vt__16daFlorBoad_HIO_c@ha
/* 80C6A628  38 04 B2 D4 */	addi r0, r4, __vt__16daFlorBoad_HIO_c@l
/* 80C6A62C  90 03 00 00 */	stw r0, 0(r3)
/* 80C6A630  38 00 00 03 */	li r0, 3
/* 80C6A634  98 03 00 10 */	stb r0, 0x10(r3)
/* 80C6A638  38 00 00 02 */	li r0, 2
/* 80C6A63C  98 03 00 11 */	stb r0, 0x11(r3)
/* 80C6A640  3C 80 80 C7 */	lis r4, lit_3656@ha
/* 80C6A644  C0 04 B1 48 */	lfs f0, lit_3656@l(r4)
/* 80C6A648  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C6A64C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C6A650  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C6A654  4E 80 00 20 */	blr 
