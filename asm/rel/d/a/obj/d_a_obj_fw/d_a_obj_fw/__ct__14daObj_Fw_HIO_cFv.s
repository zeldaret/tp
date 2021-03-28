lbl_80BF204C:
/* 80BF204C  3C 80 80 BF */	lis r4, __vt__14daObj_Fw_HIO_c@ha
/* 80BF2050  38 04 2C 0C */	addi r0, r4, __vt__14daObj_Fw_HIO_c@l
/* 80BF2054  90 03 00 00 */	stw r0, 0(r3)
/* 80BF2058  38 00 FF FF */	li r0, -1
/* 80BF205C  98 03 00 04 */	stb r0, 4(r3)
/* 80BF2060  3C 80 80 BF */	lis r4, lit_3647@ha
/* 80BF2064  C0 04 2B 48 */	lfs f0, lit_3647@l(r4)
/* 80BF2068  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BF206C  4E 80 00 20 */	blr 
