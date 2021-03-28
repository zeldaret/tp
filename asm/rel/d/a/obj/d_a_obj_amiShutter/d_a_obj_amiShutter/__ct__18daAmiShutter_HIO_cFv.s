lbl_80BA14CC:
/* 80BA14CC  3C 80 80 BA */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80BA14D0  38 04 25 48 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80BA14D4  90 03 00 00 */	stw r0, 0(r3)
/* 80BA14D8  3C 80 80 BA */	lis r4, __vt__18daAmiShutter_HIO_c@ha
/* 80BA14DC  38 04 25 3C */	addi r0, r4, __vt__18daAmiShutter_HIO_c@l
/* 80BA14E0  90 03 00 00 */	stw r0, 0(r3)
/* 80BA14E4  3C 80 80 BA */	lis r4, lit_3655@ha
/* 80BA14E8  C0 04 23 90 */	lfs f0, lit_3655@l(r4)
/* 80BA14EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BA14F0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BA14F4  38 00 00 03 */	li r0, 3
/* 80BA14F8  98 03 00 11 */	stb r0, 0x11(r3)
/* 80BA14FC  3C 80 80 BA */	lis r4, lit_3656@ha
/* 80BA1500  C0 04 23 94 */	lfs f0, lit_3656@l(r4)
/* 80BA1504  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BA1508  38 00 00 00 */	li r0, 0
/* 80BA150C  98 03 00 10 */	stb r0, 0x10(r3)
/* 80BA1510  4E 80 00 20 */	blr 
