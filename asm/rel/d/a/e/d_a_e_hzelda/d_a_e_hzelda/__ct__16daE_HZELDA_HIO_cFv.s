lbl_806F0D4C:
/* 806F0D4C  3C 80 80 6F */	lis r4, __vt__16daE_HZELDA_HIO_c@ha
/* 806F0D50  38 04 59 10 */	addi r0, r4, __vt__16daE_HZELDA_HIO_c@l
/* 806F0D54  90 03 00 00 */	stw r0, 0(r3)
/* 806F0D58  38 00 FF FF */	li r0, -1
/* 806F0D5C  98 03 00 04 */	stb r0, 4(r3)
/* 806F0D60  3C 80 80 6F */	lis r4, lit_3767@ha
/* 806F0D64  C0 04 55 14 */	lfs f0, lit_3767@l(r4)
/* 806F0D68  D0 03 00 08 */	stfs f0, 8(r3)
/* 806F0D6C  4E 80 00 20 */	blr 
