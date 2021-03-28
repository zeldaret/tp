lbl_807650CC:
/* 807650CC  3C 80 80 77 */	lis r4, __vt__13daE_RDB_HIO_c@ha
/* 807650D0  38 04 B9 B0 */	addi r0, r4, __vt__13daE_RDB_HIO_c@l
/* 807650D4  90 03 00 00 */	stw r0, 0(r3)
/* 807650D8  38 00 FF FF */	li r0, -1
/* 807650DC  98 03 00 04 */	stb r0, 4(r3)
/* 807650E0  3C 80 80 77 */	lis r4, lit_4028@ha
/* 807650E4  C0 04 B4 88 */	lfs f0, lit_4028@l(r4)
/* 807650E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807650EC  4E 80 00 20 */	blr 
